/*
* PVPSystem 
* GuildWars Realm
* Elf
*/

#include "ScriptPCH.h"

#define PVPSYSTEM_ASSIST_RANGE 25

class PVPSystem : public PlayerScript
{
public:
	PVPSystem() : PlayerScript("PVPSystem") { }

    void OnPVPKill(Player *Killer, Player *Killed) 
	{
		Killer->SetKillstreak(Killer->GetKillstreak() + 1);
		if (Killer->GetKillstreak() > Killer->GetHighestKillstreak())
			Killer->SetHighestKillstreak(Killer->GetKillstreak());
		Killed->SetKillstreak(0);
		char msg[500];
		uint8 MODIFIER = Killer->isHardcoreEnabled() ? 2 : 1;

		if (Killer->GetGUID() == Killed->GetGUID())
			return;

	// GM permissions check - don't want it to effect them.
	if (Killer->GetSession()->GetSecurity() > 0)
        return;
	else
	{
		// Give gold for PVP kill
		Killer->ModifyMoney(1500 * MODIFIER); //1g (100*100*1)
		ChatHandler(Killer).PSendSysMessage("Good job, %s! You received %d silver from killing %s.", Killer->GetName(), 15*MODIFIER, Killed->GetName());
		ChatHandler(Killer).PSendSysMessage("Current Kills: %u.", Killer->GetKillstreak());
		
		//REWARD ON ASSIST
		Map::PlayerList const& Players = Killer->GetMap()->GetPlayers();
		for (Map::PlayerList::const_iterator itr = Players.begin(); itr != Players.end(); ++itr)
		{
			if (Player* plrAssist = itr->getSource())
			{
				if (plrAssist->GetGUID() == Killed->GetGUID() || plrAssist->GetGUID() == Killer->GetGUID())
					continue;

				float distance = plrAssist->GetDistance(Killer->GetPositionX(), Killer->GetPositionY(), Killer->GetPositionZ());
				if (0 > distance || distance > PVPSYSTEM_ASSIST_RANGE)
					continue;

				plrAssist->ModifyMoney(500);
				ChatHandler(plrAssist).PSendSysMessage("Good job! You received %d silver for assist in killing %s.", Killed->GetName(), 5*MODIFIER);
			}
		}

		// Lose gold for being Killed
		// I got no gold biatchh!
		if (Killed->GetMoney() < 1500)
			return;
		else
		{
			Killed->ModifyMoney(-1000);
		    ChatHandler(Killed).PSendSysMessage("Sorry, %s. You have lost 10 silver for being Killed and your kills have been reset.", Killed->GetName());
		}
	}

	if ( Killer->GetKillstreak() > 4 ) // If on a killing spree or killstreak earn 2* gold amount each kill
	{
		Killer->ModifyMoney(1500*MODIFIER); //2g
	}

	// Get Daily PVP Klls  /* player->GetUInt32Value(PLAYER_FIELD_KILLS); */
	
	switch(Killer->GetKillstreak()) {
	case 5:
		ChatHandler(Killer).PSendSysMessage("You are on a Killing Spree.");
		break;
	case 10:
		sprintf(msg, "%s killed %s for a 10 killstreak!", Killer->GetName(), Killed->GetName());
        sWorld->SendWorldText(LANG_SYSTEMMESSAGE, msg); 
		break;
	case 20:
		sprintf(msg, "%s killed %s for a 20 killstreak!", Killer->GetName(), Killed->GetName());
        sWorld->SendWorldText(LANG_SYSTEMMESSAGE, msg); 
		break;
	case 30:
		sprintf(msg, "30 kills - %s is on a Rampage!", Killer->GetName());
        sWorld->SendWorldText(LANG_SYSTEMMESSAGE, msg); 
		break;
	case 40:
		sprintf(msg, "40 kills - %s is Destorying!", Killer->GetName());
        sWorld->SendWorldText(LANG_SYSTEMMESSAGE, msg);
		break;
	case 50:
		sprintf(msg, "50 kills - %s is Unbelievable!", Killer->GetName());
        sWorld->SendWorldText(LANG_SYSTEMMESSAGE, msg);
		break;
	case 60:
		sprintf(msg, "60 kills - %s is Unstoppable!", Killer->GetName());
        sWorld->SendWorldText(LANG_SYSTEMMESSAGE, msg);
		break;
	case 70:
		sprintf(msg, "70 kills - %s is Godlike!", Killer->GetName());
        sWorld->SendWorldText(LANG_SYSTEMMESSAGE, msg); 
		break;
	case 80:
		sprintf(msg, "80 kills - %s is Beyond Godlike!", Killer->GetName());
        sWorld->SendWorldText(LANG_SYSTEMMESSAGE, msg); 
		break;
	case 90:
		sprintf(msg, "90 kills - %s is Completely Amazing!", Killer->GetName());
        sWorld->SendWorldText(LANG_SYSTEMMESSAGE, msg); 
		break;
	case 100:
		sprintf(msg, "100 kills - OMG, Someone kill %s already!!", Killer->GetName());
        sWorld->SendWorldText(LANG_SYSTEMMESSAGE, msg); 
		break;
	}
}
};

void AddSC_PVPSystem() {
	new PVPSystem();
}