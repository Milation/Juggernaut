#include "ScriptPCH.h"

class hardcore_npc : public CreatureScript
{
	public : 
		hardcore_npc() : CreatureScript("hardcore_npc"){}

	bool OnGossipHello(Player * player, Creature * creature)
	{
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "I want to play on hardcore mode.", GOSSIP_SENDER_MAIN, 1000);
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "I want to play on normal mode.", GOSSIP_SENDER_MAIN, 1001);

		player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE, creature->GetGUID());

		return true;
	}

	bool OnGossipSelect(Player * player, Creature * creature, uint32 /*uiSender*/, uint32 uiAction)
	{
		switch(uiAction)
		{
		// Hardcore
		case 1000:
			player->EnableHardcore();

			player->CLOSE_GOSSIP_MENU();
			break;
		// Normal
		case 1001:
			player->DisableHardcore();

			player->CLOSE_GOSSIP_MENU();
			break;
		}

		if (player->GetTeam() == HORDE)
			player->TeleportTo(30, -1255.04f, -646.09f, 53.01f, 0.796373f);
		else
			player->TeleportTo(30, 408.678f, -542.661f, 69.5f, 1.3328f);

		return true;
	}

};

void AddSC_hardcore_npc()
{
	new hardcore_npc();
}