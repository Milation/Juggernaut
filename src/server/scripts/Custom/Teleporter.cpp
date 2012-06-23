#include "ScriptPCH.h"
#include "GossipDef.h"

class Teleporter : public CreatureScript
{
    public:
        Teleporter() : CreatureScript("Teleporter") {}

	bool OnGossipHello(Player * player, Creature * creature) {
		//Main Menu for Alliance
		if (player->GetTeam() == ALLIANCE) 
			player->ADD_GOSSIP_ITEM(7, "[Alliance Zones]"			, GOSSIP_SENDER_MAIN, 1000);
		else 
			player->ADD_GOSSIP_ITEM(7, "[Horde Zones]"				, GOSSIP_SENDER_MAIN, 2000);
		
		player->ADD_GOSSIP_ITEM(7, "[Custom Raids]"					, GOSSIP_SENDER_MAIN, 3000);
		player->ADD_GOSSIP_ITEM(5, "Event Area"						, GOSSIP_SENDER_MAIN, 4000);
		
		player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE, creature->GetGUID());
		
		return true;
	}
	
	void SendDefaultMenu(Player * player, Creature * creature, uint32 action) {
	
		if (player->isInCombat()) {
			player->CLOSE_GOSSIP_MENU();
			creature->MonsterSay("You cannot teleport while in combat!", LANG_UNIVERSAL, NULL);
			return;
		}
		
		switch(action) {
			// Alliance Zones
			case 1000:
				player->ADD_GOSSIP_ITEM(5, "Alliance Mall"			, GOSSIP_SENDER_MAIN, 1001);
				player->ADD_GOSSIP_ITEM(5, "Stonehearth Outpost"	, GOSSIP_SENDER_MAIN, 1002);
				player->ADD_GOSSIP_ITEM(7, "<--- Main Menu"			, GOSSIP_SENDER_MAIN,10000);
				
				player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE, creature->GetGUID());
				break;
			// Horde Zones
			case 2000:
				player->ADD_GOSSIP_ITEM(5, "Horde Mall"				, GOSSIP_SENDER_MAIN, 2001);
				player->ADD_GOSSIP_ITEM(5, "Icebrook Garrison"		, GOSSIP_SENDER_MAIN, 2002);
				player->ADD_GOSSIP_ITEM(7, "<--- Main Menu"			, GOSSIP_SENDER_MAIN,10000);
				
				player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE, creature->GetGUID());
				break;
			// Custom Raids
			case 3000:
				player->ADD_GOSSIP_ITEM(5, "Vault of Archavon"		, GOSSIP_SENDER_MAIN, 3001);
				player->ADD_GOSSIP_ITEM(5, "Icecrown Citadel"		, GOSSIP_SENDER_MAIN, 3002);
				//player->ADD_GOSSIP_ITEM(5, "Black Temple"			, GOSSIP_SENDER_MAIN, 3003);
				player->ADD_GOSSIP_ITEM(7, "<--- Main Menu"			, GOSSIP_SENDER_MAIN,10000);
				
				player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE, creature->GetGUID());
				break;
			//Back To Main Menu
			case 10000: 
				player->PlayerTalkClass->ClearMenus();
				OnGossipHello(player, creature);
				break;
				
			/**********************************************************************************
			**************************** TELEPORT LOCATIONS ***********************************
			***********************************************************************************/
			// Alliance Mall
			case 1001:
				player->CLOSE_GOSSIP_MENU();
				player->TeleportTo(30, 649.434f, -32.0796f, 47.3273f, 0.30832f);
				break;
			// Stonehearth Outpost
			case 1002:
				player->CLOSE_GOSSIP_MENU();
				player->TeleportTo(30, -40.597f, -290.509f, 15.078f, 6.134f);
				break;
			// Horde Mall
			case 2001:
				player->CLOSE_GOSSIP_MENU();
				player->TeleportTo(30, -1362.040f, -244.417f, 99.360f, 5.067f);
				break;
			// Iceblood Garrison
			case 2002:
				player->CLOSE_GOSSIP_MENU();
				player->TeleportTo(30, -539.796f, -166.206f, 57.011f, 5.554f);
				break;
			// Event Area
			case 4000:
				player->CLOSE_GOSSIP_MENU();
				player->TeleportTo(1, -11366.700f, -4729.959f, 5.028760f, 3.296f);
				break;
				
		}
	}

	bool OnGossipSelect(Player* player, Creature* creature, uint32 sender, uint32 action)
	{
		// Main menu
		if (sender == GOSSIP_SENDER_MAIN) {
			player->PlayerTalkClass->ClearMenus();
			SendDefaultMenu(player, creature, action);
		}

		return true;
	}

};

void AddSC_Teleporter()
{
	new Teleporter();
}