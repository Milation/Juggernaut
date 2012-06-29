#include "ScriptPCH.h"
#include <vector>

bool ContainsValue(std::vector<int> vec, int value) {
	for (int i = 0; i < vec.size(); i++) {
		if (vec[i] == value)
			return true;
	}
	return false;
}

std::vector<Item*> Sort(std::vector<Item*> vec) {
	for (int i = 1; i < vec.size(); i++)
      {
         Item* key = vec[i];
         int position = i;

         //  Shift larger values to the left
         while (position > 0 && key->Compare(vec[position-1]) > 0)
         {
            vec[position] = vec[position-1];
            position--;
         }
            
         vec[position] = key;
      }

	return vec;
}

std::vector<int> Sort(std::vector<int> w)
{   
	int temp;
    bool finished = false;

	while (!finished)
    {
		finished = true;
		for (int i = 0; i < w.size()-1; i++) 
		{
			if (w[i] > w[i+1]) {
				temp = w[i];
				w[i] = w[i+1];
				w[i+1] = temp;

				finished=false;
			}
        }

	}
	return w;
}

class HardcoreSystem : public PlayerScript
{
public:
	HardcoreSystem() : PlayerScript("HardcoreSystem") { }

	uint64 guid;

	void OnCreate(Player * player) {
		guid = player->GetGUID();
	}

	void OnLogin(Player * player) {
		if (player->GetGUID() == guid)
		{
			player->TeleportTo(1, 16216.79f, 16403.23f, -65.5f, 0.029792f);
			player->learnSpell(33389, false);
			player->learnSpell(33392, false);
			player->learnSpell(34092, false);
			player->learnSpell(34093, false);
		}
	}

    void OnPVPKill(Player *Killer, Player *Killed) 
	{
		if (Killer->GetGUID() == Killed->GetGUID())
			return;

		// Disable in battlegrounds
		if (Killer->InBattleground() || Killed->InBattleground() || Killer->InArena() || Killed->InArena())
			return;

		// Don't allow this system for gamemasters
		if (Killer->GetSession()->GetSecurity() > 0 || Killed->GetSession()->GetSecurity() > 0)
			return;

		if (Killer->isHardcoreEnabled() && Killed->isHardcoreEnabled()) {

			int insurance = Killed->GetInsurance();

			int slots[] = { EQUIPMENT_SLOT_HEAD, EQUIPMENT_SLOT_NECK, EQUIPMENT_SLOT_SHOULDERS, EQUIPMENT_SLOT_BODY,
				EQUIPMENT_SLOT_CHEST, EQUIPMENT_SLOT_WAIST, EQUIPMENT_SLOT_LEGS, EQUIPMENT_SLOT_FEET, EQUIPMENT_SLOT_HANDS, 
				EQUIPMENT_SLOT_WRISTS,EQUIPMENT_SLOT_FINGER1, EQUIPMENT_SLOT_FINGER2, EQUIPMENT_SLOT_TRINKET1, 
				EQUIPMENT_SLOT_TRINKET2, EQUIPMENT_SLOT_BACK, EQUIPMENT_SLOT_MAINHAND, EQUIPMENT_SLOT_OFFHAND, 
				EQUIPMENT_SLOT_RANGED, EQUIPMENT_SLOT_TABARD };

			std::vector<int> slotVector (slots, slots + sizeof(slots)/sizeof(int));
			//std::vector<int> available (19, -1);
			//std::vector<int> randomSlots (5, -1);
			std::vector<Item*> items;
			
			int loop = 0;
			for (int i = 0; i < slotVector.size(); i++) {
				if (i == 3 || i == 18)
					continue;
				Item * item = Killed->GetItemByPos(INVENTORY_SLOT_BAG_0, slotVector[i]);
				if (item) {
					items[loop] = item;
					loop++;
				}
			}

			items = Sort(items);
			int numItems = items.size() > 4 ? 5 : items.size();

			if (numItems < 5) {
				ChatHandler(Killer).PSendSysMessage("Your opponent had less than 5 pieces of gear equipped, so nothing was gained or lost.");
				ChatHandler(Killer).PSendSysMessage("You were wearing less than 5 pieces of gear, so nothing was lost.");
				return;
			}

			for (int i = 0; i < numItems - insurance; i++) {
				Item * item = items[urand(insurance, numItems)];
				Killed->DestroyItem(INVENTORY_SLOT_BAG_0, item->GetSlot(), true);
				Killer->AddItem(item->GetEntry(), 1);
			}

/*			for (int i = 0; i < slotVector.size(); i++) {
				if (i == 3 || i == 18)
					continue;
				Item * item = Killed->GetItemByPos(INVENTORY_SLOT_BAG_0, slotVector[i]);
				if (item) {
					numItems++;
					available[i] = slotVector[i];
				}
			}
			numItems = numItems > 4 ? 5 : numItems;

			// Generate 5 random slots
			for (int i = 0; i < numItems; i++) {
				int slot = urand(0, 18);

				// Make sure the slot is valid
				if (!ContainsValue(available, slot)) {
					for (int j = 0; j < 100; j++) {
						if (ContainsValue(available, slot))
							break;
						else
							slot = urand(0, 18);
					}
				}
				if (!ContainsValue(randomSlots, slot))
					randomSlots[i] = slotVector[slot];
				else {
					while (ContainsValue(randomSlots, slot))
						slot = urand(0, 18);

					randomSlots[i] = slotVector[slot];
				}
			}

			if (insurance == 0) {
				// Remove/add items from the two people
				for (int i = 0; i < numItems; i++) {
					Item * item = Killed->GetItemByPos(INVENTORY_SLOT_BAG_0, randomSlots[i]);
					if (!item)
						continue;
					Killed->DestroyItem(INVENTORY_SLOT_BAG_0, randomSlots[i], true);
					Killer->AddItem(item->GetEntry(), 1);
				}
			}
			else {
				std::vector<int> items(5, -1);
				Item * item;

				for (int i = 0; i < 5; i++) {
					item = Killed->GetItemByPos(INVENTORY_SLOT_BAG_0, randomSlots[i]);
					items[i] = item->GetTemplate()->ItemLevel;
				}

				items = Sort(items);
				for (int i = 0; i < insurance; i++)
					items.pop_back();

				// Remove/add items from the two people
				bool deleted = false;
				for (int i = 0; i < numItems; i++) {
					Item * item = Killed->GetItemByPos(INVENTORY_SLOT_BAG_0, randomSlots[i]);
					if (!item)
						continue;
					for (int j = 0; j < items.size(); j++) {
						if (items[items.size() - 1] == item->GetTemplate()->ItemLevel) {
							deleted = true;
							items.pop_back();
							break;
						}
					}

					// Valid item, delete it and give to other player
					if (!deleted) {
						Killed->DestroyItem(INVENTORY_SLOT_BAG_0, randomSlots[i], true);
						Killer->AddItem(item->GetEntry(), 1);
					}

					deleted = false;
				}
			}
*/
			if (insurance > 0) {
				ChatHandler(Killed).PSendSysMessage("Your insurance plan saved you %d item(s). Your insurance is now void, but you may purchase it again.", insurance);
				Killed->SetInsurance(0);
			}
		}
	}

};

void AddSC_HardcoreSystem() {
	new HardcoreSystem();
}