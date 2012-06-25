#include "ScriptPCH.h"
#include "Chat.h"

class cs_insurance : public CommandScript
{
    public:
        cs_insurance() : CommandScript("cs_insurance") { }

		static bool HandleInsuranceCommand(ChatHandler* handler, const char* /*args*/)
        {				
            Player * player = handler->GetSession()->GetPlayer();
			
			switch(player->GetInsurance()) {
			case 0:
				handler->PSendSysMessage("You do not currently have any insurance."); 
				handler->PSendSysMessage("You may purchase insurance from Dave, located in the State Farm building");
				break;
			case 1:
				handler->PSendSysMessage("You currently have the basic insurance plan.");
				handler->PSendSysMessage("If you are killed by another person playing on hardcore, you will lose one less item.");
				break;
			case 2:
				handler->PSendSysMessage("You currently have the gold insurance plan.");
				handler->PSendSysMessage("If you are killed by another person playing on hardcore, you will lose two less items.");
				break;			
			case 3:
				handler->PSendSysMessage("You currently have the premium insurance plan.");
				handler->PSendSysMessage("If you are killed by another person playing on hardcore, you will lose three less items.");
				break;
			}

            return true;
        }

        ChatCommand* GetCommands() const
        {
			static ChatCommand checkCommandTable[] = 
			{
				{ "insurance",		SEC_PLAYER,			false,	&HandleInsuranceCommand, 	"", NULL },
				{ NULL,				0,					false,	NULL,					  	"", NULL }
			
			};
		
            static ChatCommand commandTable[] =
            {
                { "check",       	SEC_PLAYER,         false,   NULL,						"", checkCommandTable },
				{ "checkinsurance", SEC_PLAYER,         false,   &HandleInsuranceCommand,	"",				 NULL },
                { NULL,             0,                  false,   NULL,						"",				 NULL }
            };
            return commandTable;
        }
};

void AddSC_cs_insurance()
{
    new cs_insurance();
}