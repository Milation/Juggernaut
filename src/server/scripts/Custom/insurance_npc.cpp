#include "ScriptPCH.h"

#define BASIC_PRICE		10
#define GOLD_PRICE		20
#define PREMIUM_PRICE	30
#define VOTE_TOKEN		20560

class insurance_npc : public CreatureScript
{
	public : 
		insurance_npc() : CreatureScript("insurance_npc"){}

	bool OnGossipHello(Player * player, Creature * creature)
	{
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "I would like to purchase the basic insurance plan.", GOSSIP_SENDER_MAIN, 1000);
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "I would like to purchase the gold insurance plan.", GOSSIP_SENDER_MAIN, 1001);
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "I would like to purchase the premium insurance plan.", GOSSIP_SENDER_MAIN, 1002);
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Nevermind.", GOSSIP_SENDER_MAIN, 1003);

		player->SEND_GOSSIP_MENU(56001, creature->GetGUID());

		return true;
	}

	bool OnGossipSelect(Player * player, Creature * creature, uint32 /*uiSender*/, uint32 uiAction)
	{
		if (player->GetInsurance() > 0)
		{
			creature->MonsterWhisper("You already have an insurance plan! To view it, type .check insurance", player->GetGUID(), false);
			player->CLOSE_GOSSIP_MENU();
			return true;
		}

		switch(uiAction)
		{
		// Basic plan
		case 1000:
			if (player->GetMoney() >= BASIC_PRICE * 100 * 100)
			{
				player->SetInsurance(1);
				player->ModifyMoney(-(BASIC_PRICE * 100 * 100));
				creature->MonsterWhisper("You have purchased the basic insurance plan. You will lose one less item if you die.", player->GetGUID(), false);
			}
			else 
				creature->MonsterWhisper("It costs 10 gold to purchase this plan! Come back with more money!", player->GetGUID(), false);

			player->CLOSE_GOSSIP_MENU();
			break;
		// Gold plan
		case 1001:
			if (player->GetMoney() >= GOLD_PRICE * 100 * 100)
			{
				player->SetInsurance(2);
				player->ModifyMoney(-(GOLD_PRICE * 100 * 100));
				creature->MonsterWhisper("You have purchased the gold insurance plan. You will lose two less items if you die.", player->GetGUID(), false);
			}
			else 
				creature->MonsterWhisper("It costs 20 gold to purchase this plan! Come back with more money!", player->GetGUID(), false);

			player->CLOSE_GOSSIP_MENU();
			break;
		// Premium plan
		case 1002:
			if (player->GetItemCount(VOTE_TOKEN, false) > 0) 
			{
				player->SetInsurance(3);
				player->DestroyItemCount(VOTE_TOKEN, 1, true);
				creature->MonsterWhisper("You have purchased the premium insurance plan using a vote token. You will lose three less items if you die.", player->GetGUID(), false);
				player->CLOSE_GOSSIP_MENU();
				break;
			}

			if (player->GetMoney() >= PREMIUM_PRICE * 100 * 100)
			{
				player->SetInsurance(3);
				player->ModifyMoney(-(PREMIUM_PRICE * 100 * 100));
				creature->MonsterWhisper("You have purchased the premium insurance plan. You will lose three less items if you die.", player->GetGUID(), false);
			}
			else 
				creature->MonsterWhisper("It costs 30 gold to purchase this plan! Come back with more money!", player->GetGUID(), false);

			player->CLOSE_GOSSIP_MENU();
			break;
		// Nevermind
		case 1003:
			player->CLOSE_GOSSIP_MENU();
			break;
		}
		return true;
	}

};

void AddSC_insurance_npc()
{
	new insurance_npc();
}