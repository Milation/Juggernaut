#include "ScriptPCH.h"

enum Spells {

	SPELL_SHIELD			= 35158,
	SPELL_HEX				= 16097,
	SPELL_POISON_BREATH		= 63226,
	SPELL_POISON_CLOUD		= 28240,
	SPELL_BLESSING_OF_ADAL	= 35076
};

class boss_cave : public CreatureScript
{
    public:
        boss_cave() : CreatureScript("boss_cave") { }

		CreatureAI * GetAI_boss_cave(Creature * creature) const {
			return new boss_caveAI(creature);
		}

		struct boss_caveAI : public ScriptedAI {
			boss_caveAI(Creature * creature) : ScriptedAI(creature) {}

			GameObject * gate1;
			GameObject * gate2;
			uint32 shield_timer;
			uint32 hex_timer;
			uint32 poison_breath_timer;
			uint32 teleport_timer;
			uint32 FACTION;
			uint8 phase;

			void JustDied(Unit* killer) {

				Player * player = sObjectMgr->GetPlayerByLowGUID(killer->GetGUIDLow());
				FACTION = player->GetTeam();

				Map::PlayerList const& Players = player->GetMap()->GetPlayers();
				for (Map::PlayerList::const_iterator itr = Players.begin(); itr != Players.end(); ++itr)
				{
					if (Player* plr = itr->getSource())
					{
						if (plr->GetTeam() == FACTION)
							plr->AddAura(SPELL_BLESSING_OF_ADAL, plr);
	
						std::string team = FACTION == HORDE ? "Horde" : "Alliance";
						ChatHandler(plr).PSendSysMessage("The %s has defeated the troll boss!", team);
					}
				}
			}

			void EnterCombat(Unit* /*victim*/) {
				gate1 = me->SummonGameObject(500000, -944.572998f, -195.503998f, 76.946198f, 1.30298f, 0.0f, 0.0f, 0.606371f, 0.795182f, 600);
				gate2 = me->SummonGameObject(500000, -964.565002f, -200.848999f, 68.580902f, 0.88671f, 0.0f, 0.0f, 0.428976f, 0.903316f, 600);
			}

			void Reset() {
				gate1->RemoveFromWorld();
				gate2->RemoveFromWorld();
				shield_timer = 45000;
				hex_timer = 25000;
				poison_breath_timer = 6000;
				teleport_timer = 60000;
				phase = 1;
			}

			void DamageTaken(Unit *victim, uint32 &damage) {
				if (me->HasAura(SPELL_SHIELD)) {
					me->SetHealth(me->GetHealth() + (damage * 2));
				}
			}

			void UpdateAI(uint32 const diff) {
				if (!UpdateVictim())
					return;

				if (me->GetHealthPct() <= 50)
					phase = 2;

				if (shield_timer <= diff) {
					DoCast(me, SPELL_SHIELD);
					shield_timer = 45000;
				} else shield_timer -= diff;

				if (hex_timer <= diff) {
					DoCast(SelectTarget(SELECT_TARGET_RANDOM, 1, 50, true), SPELL_HEX);
					hex_timer = 25000;
				} else hex_timer -= diff;
				
				if (poison_breath_timer <= diff) {
					DoCast(SelectTarget(SELECT_TARGET_TOPAGGRO, 0, 30, true), SPELL_POISON_BREATH);
				}

				if (phase == 2 && teleport_timer <= diff) {
					DoTeleportAll(0.0f, 0.0f, 0.0f, 0.0f);
					DoCast(SelectTarget(SELECT_TARGET_RANDOM, 1, 50, true), SPELL_POISON_CLOUD);
				} else teleport_timer -= diff;

				DoMeleeAttackIfReady();
			}
		};

};

void AddSC_boss_cave()
{
    new boss_cave();
}