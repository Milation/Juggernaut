#include "ScriptPCH.h"
#include <vector>

bool ContainsValue(std::vector<int> vec, int value) {
	for (int i = 0; i < vec.size(); i++) {
		if (vec[i] == value)
			return true;
	}
	return false;
}

class HardcoreSystem : public PlayerScript
{
public:
	HardcoreSystem() : PlayerScript("HardcoreSystem") { }

    void OnPVPKill(Player *Killer, Player *Killed) 
	{
		if (Killer->GetGUID() == Killed->GetGUID())
			return;

		// Don't allow this system for gamemasters
		if (Killer->GetSession()->GetSecurity() > 0 || Killed->GetSession()->GetSecurity() > 0)
			return;

		if (Killer->isHardcoreEnabled() && Killed->isHardcoreEnabled()) {

			int slots[] = { EQUIPMENT_SLOT_HEAD, EQUIPMENT_SLOT_NECK, EQUIPMENT_SLOT_SHOULDERS, EQUIPMENT_SLOT_BODY,
				EQUIPMENT_SLOT_CHEST, EQUIPMENT_SLOT_WAIST, EQUIPMENT_SLOT_LEGS, EQUIPMENT_SLOT_FEET, EQUIPMENT_SLOT_HANDS, 
				EQUIPMENT_SLOT_WRISTS,EQUIPMENT_SLOT_FINGER1, EQUIPMENT_SLOT_FINGER2, EQUIPMENT_SLOT_TRINKET1, 
				EQUIPMENT_SLOT_TRINKET2, EQUIPMENT_SLOT_BACK, EQUIPMENT_SLOT_MAINHAND, EQUIPMENT_SLOT_OFFHAND, 
				EQUIPMENT_SLOT_RANGED, EQUIPMENT_SLOT_TABARD };

			std::vector<int> slotVector (slots, slots + sizeof(slots)/sizeof(int));
			std::vector<int> available (19, -1);
			std::vector<int> randomSlots (5, -1);
			int numItems = 0;

			for (int i = 0; i < slotVector.size(); i++) {
				if (i == 3 || i == 18)
					continue;
				Item * item = Killed->GetItemByPos(INVENTORY_SLOT_BAG_0, slots[i]);
				if (item) {
					numItems++;
					available[i] = slots[i];
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
					randomSlots[i] = slots[slot];
				else {
					while (ContainsValue(randomSlots, slot))
						slot = urand(0, 18);

					randomSlots[i] = slots[slot];
				}
			}

			// Remove/add items from the two people
			for (int i = 0; i < numItems; i++) {
				Item * item = Killed->GetItemByPos(INVENTORY_SLOT_BAG_0, randomSlots[i]);
				Killed->RemoveItem(INVENTORY_SLOT_BAG_0, randomSlots[i], true);
				Killer->AddItem(item->GetEntry(), 1);
			}
		}
	}

	// Disable hardecore whenever somebody logs in
	void OnLogin(Player * player) {
		player->DisableHardcore();
	}

};

void AddSC_HardcoreSystem() {
	new HardcoreSystem();
}