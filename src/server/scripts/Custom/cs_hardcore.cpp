#include "ScriptPCH.h"
#include "Chat.h"

class cs_hardcore : public CommandScript
{
    public:
        cs_hardcore() : CommandScript("cs_hardcore") { }

		static bool HandleHardcoreOffCommand(ChatHandler* handler, const char* /*args*/)
        {
            Player * player = handler->GetSession()->GetPlayer();

			if (player->isInCombat()) {
				handler->PSendSysMessage("You can't use this in combat!");
				return true;
			}

			if(!player->isHardcoreEnabled()) {
				handler->PSendSysMessage("Hardcore Mode is already disabled!");
			}
			else {
				player->DisableHardcore();
				handler->PSendSysMessage("Hardcore Mode has been turned off");
			}
            return true;
        }

        static bool HandleHardcoreOnCommand(ChatHandler* handler, const char* /*args*/)
        {
            Player * player = handler->GetSession()->GetPlayer();

			if (player->isInCombat()) {
				handler->PSendSysMessage("You can't use this in combat!");
				return true;
			}

			if(player->isHardcoreEnabled()) {
				handler->PSendSysMessage("Hardcore Mode is already enabled!");
			}
			else {
				player->EnableHardcore();
				handler->PSendSysMessage("|cffe50202Hardcore Mode is now enabled! It is now possible to lose your items!");
				handler->PSendSysMessage("|cffe50202To disable this, type .hardcore off");
			}
            return true;
        }

        ChatCommand* GetCommands() const
        {
			static ChatCommand hardcoreCommandTable[] = 
			{
				{ "on",				SEC_PLAYER,			false,	&HandleHardcoreOnCommand, 	"", NULL },
				{ "off",			SEC_PLAYER,			false,	&HandleHardcoreOffCommand, 	"", NULL },
				{NULL,				0,					false,	NULL,					  	"", NULL }
			
			};
		
            static ChatCommand commandTable[] =
            {
                { "hardcore",       SEC_PLAYER,         false,   NULL,			 "", hardcoreCommandTable },
                { NULL,             0,                  false,  NULL,                            "", NULL }
            };
            return commandTable;
        }
};

void AddSC_cs_hardcore()
{
    new cs_hardcore();
}