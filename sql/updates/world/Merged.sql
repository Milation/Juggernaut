UPDATE `version` SET `db_version`='TDB 335.11.47' LIMIT 1;
DELETE FROM `creature_loot_template` WHERE `entry`=31813 AND `item`=36912; -- Saronite Ore
-- Set Variables
SET @Gunship10N := 28057; -- Data1 for 201872 & 202177
SET @Gunship10H := 28045; -- Data1 for 201873 & 202178
SET @Gunship25N := 28072; -- Data1 for 201874 & 202179
SET @Gunship25H := 28090; -- Data1 for 201875 & 202180
SET @emblem := 49426; -- Emblem of Frost
SET @SfShard := 50274; -- Shadowfrost Shard
SET @PriSar := 49908; -- Primordial Saronite
-- Dug up the old references i created for UP34:
SET @Ref10J := 34329;
SET @Ref25J := 34251;
SET @RefJ10H := 34263;
SET @RefJ25H := 34275;
-- Gunship_Armory10N_reference
DELETE FROM `reference_loot_template` WHERE `entry` IN (@Ref10J,@Ref25J,@RefJ10H,@RefJ25H);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(@Ref10J,50791,0,1,1,1,1), -- Saronite Gargoyle Cloak
(@Ref10J,50795,0,1,1,1,1), -- Cord of Dark Suffering
(@Ref10J,50794,0,1,1,1,1), -- Neverending Winter
(@Ref10J,50787,0,1,1,1,1), -- Frost Giant's Cleaver
(@Ref10J,50793,0,1,1,1,1), -- Midnight Sun
(@Ref10J,50788,0,1,1,1,1), -- Bone Drake's Enameled Boots
(@Ref10J,50792,0,1,1,1,1), -- Pauldrons of Lost Hope
(@Ref10J,50340,0,1,1,1,1), -- Muradin's Spyglass
(@Ref10J,50797,0,1,1,1,1), -- Ice-Reinforced Vrykul Helm
(@Ref10J,50790,0,1,1,1,1), -- Abomination's Bloody Ring
(@Ref10J,50789,0,1,1,1,1), -- Icecrown Rampart Bracers
(@Ref10J,50796,0,1,1,1,1), -- Bracers of Pale Illumination
-- Gunship_Armory25N_reference
(@Ref25J,50011,0,1,1,1,1), -- Gunship Captain's Mittens
(@Ref25J,50002,0,1,1,1,1), -- Polar Bear Claw Bracers
(@Ref25J,50006,0,1,1,1,1), -- Corp'rethar Ceremonial Crown
(@Ref25J,50010,0,1,1,1,1), -- Waistband of Righteous Fury
(@Ref25J,50003,0,1,1,1,1), -- Boneguard Commander's Pauldrons
(@Ref25J,50000,0,1,1,1,1), -- Scourge Hunter's Vambraces
(@Ref25J,50359,0,1,1,1,1), -- Althor's Abacus
(@Ref25J,50352,0,1,1,1,1), -- Corpse Tongue Coin
(@Ref25J,49999,0,1,1,1,1), -- Skeleton Lord's Circle
(@Ref25J,50009,0,1,1,1,1), -- Boots of Unnatural Growth
(@Ref25J,50008,0,1,1,1,1), -- Ring of Rapid Ascent
(@Ref25J,49998,0,1,1,1,1), -- Shadowvault Slayer's Cloak
(@Ref25J,50005,0,1,1,1,1), -- Amulet of the Silent Eulogy
(@Ref25J,50411,0,1,1,1,1), -- Scourgeborne Waraxe
(@Ref25J,50001,0,1,1,1,1), -- Ikfirus's Sack of Wonder
-- Gunship_Armory10H_reference
(@RefJ10H,51912,0,1,1,1,1), -- Saronite Gargoyle Cloak (heroic)
(@RefJ10H,51908,0,1,1,1,1), -- Cord of Dark Suffering (heroic)
(@RefJ10H,51909,0,1,1,1,1), -- Neverending Winter (heroic)
(@RefJ10H,51916,0,1,1,1,1), -- Frost Giant's Cleaver (heroic)
(@RefJ10H,51910,0,1,1,1,1), -- Midnight Sun (heroic)
(@RefJ10H,51915,0,1,1,1,1), -- Bone Drake's Enameled Boots (heroic)
(@RefJ10H,51911,0,1,1,1,1), -- Pauldrons of Lost Hope (heroic)
(@RefJ10H,50345,0,1,1,1,1), -- Muradin's Spyglass (heroic)
(@RefJ10H,51906,0,1,1,1,1), -- Ice-Reinforced Vrykul Helm (heroic)
(@RefJ10H,51913,0,1,1,1,1), -- Abomination's Bloody Ring (heroic)
(@RefJ10H,51914,0,1,1,1,1), -- Icecrown Rampart Bracers (heroic)
(@RefJ10H,51907,0,1,1,1,1), -- Bracers of Pale Illumination (heroic)
-- Gunship_Armory25H_reference
(@RefJ25H,50663,0,1,1,1,1), -- Gunship Captain's Mittens (heroic)
(@RefJ25H,50659,0,1,1,1,1), -- Polar Bear Claw Bracers (heroic)
(@RefJ25H,50661,0,1,1,1,1), -- Corp'rethar Ceremonial Crown (heroic)
(@RefJ25H,50667,0,1,1,1,1), -- Waistband of Righteous Fury (heroic)
(@RefJ25H,50660,0,1,1,1,1), -- Boneguard Commander's Pauldrons (heroic)
(@RefJ25H,50655,0,1,1,1,1), -- Scourge Hunter's Vambraces (heroic)
(@RefJ25H,50366,0,1,1,1,1), -- Althor's Abacus (heroic)
(@RefJ25H,50349,0,1,1,1,1), -- Corpse Tongue Coin (heroic)
(@RefJ25H,50657,0,1,1,1,1), -- Skeleton Lord's Circle (heroic)
(@RefJ25H,50665,0,1,1,1,1), -- Boots of Unnatural Growth (heroic)
(@RefJ25H,50664,0,1,1,1,1), -- Ring of Rapid Ascent (heroic)
(@RefJ25H,50653,0,1,1,1,1), -- Shadowvault Slayer's Cloak (heroic)
(@RefJ25H,50658,0,1,1,1,1), -- Amulet of the Silent Eulogy (heroic)
(@RefJ25H,50654,0,1,1,1,1), -- Scourgeborne Waraxe (heroic)
(@RefJ25H,50656,0,1,1,1,1); -- Ikfirus's Sack of Wonder (heroic)
-- Bind the refs to the objects
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (@Gunship10N,@Gunship10H,@Gunship25N,@Gunship25H);
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- Gunship10N
(@Gunship10N,@emblem,100,1,0,2,2), -- Gunship Armory 2xemblems 10N
(@Gunship10N,1,100,1,0,-@Ref10J,2), -- 2 from reference 10Normal
-- Gunship25N
(@Gunship25N,@emblem,100,1,0,2,2), -- Gunship Armory 2xemblems 25N
(@Gunship25N,1,100,1,0,-@Ref25J,2), -- 3 from reference 25Normal
(@Gunship25N,@SfShard,-35,1,0,1,1), -- Shadowfrost Shard @ 38% chance
(@Gunship25N,@PriSar,38,1,0,1,1), -- Primordial Saronite @ 10% chance
-- Gunship10H
(@Gunship10H,@emblem,100,1,0,2,2), -- Gunship Armory 2xemblems 10H
(@Gunship10H,1,100,1,0,-@RefJ10H,2), -- 2 from reference 10Heroic
(@Gunship10H,@PriSar,38,1,0,1,1), -- Primordial Saronite @ 38% chance
-- Gunship25H
(@Gunship25H,@emblem,100,1,0,2,2), -- Gunship Armory 2xemblems 25H
(@Gunship25H,1,100,1,0,-@RefJ25H,2), -- 3 from reference 25Heroic
(@Gunship25H,@SfShard,-75,1,0,1,1), -- Shadowfrost Shard @ 75% chance
(@Gunship25H,@PriSar,50,1,0,1,1); -- Primordial Saronite @ 50% chance
DELETE FROM `reference_loot_template` WHERE `entry`=34172;
DELETE FROM `creature_loot_template` WHERE `entry`=38013;
DELETE FROM `gameobject_loot_template` WHERE `entry`=28683;
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(28683,35498,3,1,0,1,1), -- Formula: Enchant Weapon - Deathfrost
(28683,35557,28,1,0,1,2), -- Huge Snowball
(28683,35720,3,1,0,5,6), -- Lord of Frost's Private Label
(28683,35723,12,1,0,1,1), -- Shards of Ahune
(28683,54801,0,1,1,1,1), -- Icebound Cloak
(28683,54802,0,1,1,1,1), -- The Frost Lord's War Cloak
(28683,54803,0,1,1,1,1), -- The Frost Lord's Battle Shroud
(28683,54804,0,1,1,1,1), -- Shroud of Winter's Chill
(28683,54805,0,1,1,1,1); -- Cloak of the Frigid Winds
-- Update mod rep command name
UPDATE `command` SET 
    `name` = 'modify reputation',
    `help` = 'Syntax: .modify reputation #repId (#repvalue | $rankname [#delta])\nSets the selected players reputation with faction #repId to #repvalue or to $reprank.\nIf the reputation rank name is provided, the resulting reputation will be the lowest reputation for that rank plus the delta amount, if specified.\nYou can use \'.pinfo rep\' to list all known reputation ids, or use \'.lookup faction $name\' to locate a specific faction id.'
WHERE `name` = 'modify rep';

-- Fix "2012-05-20 06:46:00 ERROR: SourceEntry 52264 in `condition` table, has incorrect SourceGroup 0 (spell effectMask) set , ignoring."
UPDATE `conditions` SET
    `SourceGroup` = 1,
    `SourceId` = 0
WHERE 
    `SourceTypeOrReferenceId` = 13 AND
    `SourceEntry` = 52264 AND
    `ConditionTypeOrReference` = 29 AND
    `ConditionValue1` = 28653 AND
    `ConditionValue2` = 5;
DELETE FROM `spell_bonus_data` WHERE `entry`=633; 
INSERT INTO `spell_bonus_data` (`entry`,`comments`) VALUES (633,'Paladin - Lay on Hands'); 
UPDATE `spell_proc_event` SET `procFlags` = 332116 WHERE `entry` = 63611;
-- As of patch 3.1.0, the drop rate of Formula: Enchant Boots - Surefooted has been increased to Guaranteed (100%).
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=100 WHERE `entry`=16472 and `item`=22545;
-- Chicken Spawns from sniff:
SET @Chicken := 28161;
SET @CGUID := 88570;
DELETE FROM `creature` WHERE `id`=@Chicken;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`MovementType`) VALUES
(@CGUID,@Chicken,571,1,1,5199.809,4704.83,-128.2989,1.70125,120,0,0), -- Chicken Escapee
(@CGUID+1,@Chicken,571,1,1,5201.715,4702.484,-127.8371,1.53589,120,0,0), -- Chicken Escapee
(@CGUID+2,@Chicken,571,1,1,5198.132,4702.78,-127.5534,1.797689,120,0,0), -- Chicken Escapee
(@CGUID+3,@Chicken,571,1,1,5198.32,4704.375,-127.9992,1.064651,120,0,0), -- Chicken Escapee
(@CGUID+4,@Chicken,571,1,1,5201.744,4704.674,-128.4752,4.555309,120,0,0), -- Chicken Escapee
(@CGUID+5,@Chicken,571,1,1,5251.442,4508.976,-85.30431,4.304774,120,0,0), -- Chicken Escapee
(@CGUID+6,@Chicken,571,1,1,5251.708,4511.778,-85.32935,1.64061,120,0,0), -- Chicken Escapee
(@CGUID+7,@Chicken,571,1,1,5251.118,4509.744,-85.32935,4.886922,120,0,0), -- Chicken Escapee
(@CGUID+8,@Chicken,571,1,1,5252.795,4509.772,-85.32524,0.7853982,120,0,0), -- Chicken Escapee
(@CGUID+9,@Chicken,571,1,1,5253.682,4511.424,-85.32755,2.356194,120,0,0), -- Chicken Escapee
(@CGUID+10,@Chicken,571,1,1,5254.174,4514.632,-84.96572,0.4096795,120,0,0), -- Chicken Escapee
(@CGUID+11,@Chicken,571,1,1,5252.096,4514.868,-85.32635,4.363323,120,0,0), -- Chicken Escapee
(@CGUID+12,@Chicken,571,1,1,5251.637,4513.41,-85.32935,3.490659,120,0,0), -- Chicken Escapee
(@CGUID+13,@Chicken,571,1,1,5253.287,4513.109,-85.32935,3.036873,120,0,0), -- Chicken Escapee
(@CGUID+14,@Chicken,571,1,1,5253.494,4514.764,-85.31329,3.717551,120,0,0), -- Chicken Escapee
(@CGUID+15,@Chicken,571,1,1,5251.158,4518.321,-85.3019,1.592369,120,0,0), -- Chicken Escapee
(@CGUID+16,@Chicken,571,1,1,5250.385,4516.643,-85.3257,5.044002,120,0,0), -- Chicken Escapee
(@CGUID+17,@Chicken,571,1,1,5251.159,4515.294,-85.32935,4.694936,120,0,0), -- Chicken Escapee
(@CGUID+18,@Chicken,571,1,1,5252.267,4516.414,-85.30904,0.5235988,120,0,0), -- Chicken Escapee
(@CGUID+19,@Chicken,571,1,1,5251.693,4517.859,-85.3243,4.590216,120,0,0), -- Chicken Escapee
(@CGUID+20,@Chicken,571,1,1,5262.68,4528.738,-84.4747,4.718389,120,0,0), -- Chicken Escapee
(@CGUID+21,@Chicken,571,1,1,5256.907,4480.617,-84.26879,4.927223,120,0,0), -- Chicken Escapee
(@CGUID+22,@Chicken,571,1,1,5298.603,4489.708,-93.65161,6.16371,120,0,0), -- Chicken Escapee
(@CGUID+23,@Chicken,571,1,1,5192.673,4513.661,-89.12463,1.299241,120,0,0), -- Chicken Escapee
(@CGUID+24,@Chicken,571,1,1,5228.781,4579.799,-96.98647,0.05766594,120,0,0), -- Chicken Escapee
(@CGUID+25,@Chicken,571,1,1,5230.247,4433.143,-96.82567,5.135688,120,0,0), -- Chicken Escapee
(@CGUID+26,@Chicken,571,1,1,5180.035,4541.38,-97.84879,0.2208638,120,0,0), -- Chicken Escapee
(@CGUID+27,@Chicken,571,1,1,5178.563,4538.964,-97.54511,0.9771074,120,0,0), -- Chicken Escapee
(@CGUID+28,@Chicken,571,1,1,5272.981,4417.033,-96.50356,0.9044432,120,0,0), -- Chicken Escapee
(@CGUID+29,@Chicken,571,1,1,5214.513,4416.202,-96.53072,2.862281,120,0,0), -- Chicken Escapee
(@CGUID+30,@Chicken,571,1,1,5160.117,4474.996,-96.96887,4.499754,120,0,0), -- Chicken Escapee
(@CGUID+31,@Chicken,571,1,1,5263.541,4409.121,-95.87889,1.570796,120,0,0), -- Chicken Escapee
(@CGUID+32,@Chicken,571,1,1,5234.166,4404.604,-95.12725,1.031549,120,0,0), -- Chicken Escapee
(@CGUID+33,@Chicken,571,1,1,5297.803,4493.681,-93.65161,5.525303,120,0,0), -- Chicken Escapee
(@CGUID+34,@Chicken,571,1,1,5260.112,4340.577,-97.61092,1.942801,120,0,0), -- Chicken Escapee
(@CGUID+35,@Chicken,571,1,1,5208.492,4379.111,-95.49483,0.6675518,120,0,0), -- Chicken Escapee
(@CGUID+36,@Chicken,571,1,1,5172.742,4368.674,-96.27965,0.8766832,120,0,0), -- Chicken Escapee
(@CGUID+37,@Chicken,571,1,1,5223.491,4467.19,-96.75621,4.723376,120,0,0), -- Chicken Escapee
(@CGUID+38,@Chicken,571,1,1,5220.966,4469.76,-96.75582,5.183968,120,0,0), -- Chicken Escapee
(@CGUID+39,@Chicken,571,1,1,5221.419,4473.14,-96.75536,4.98181,120,0,0), -- Chicken Escapee
(@CGUID+40,@Chicken,571,1,1,5221.419,4473.14,-96.75536,5.49084,120,0,0), -- Chicken Escapee
(@CGUID+41,@Chicken,571,1,1,5221.828,4470.711,-96.57594,5.315169,120,0,0), -- Chicken Escapee
(@CGUID+42,@Chicken,571,1,1,5151.083,4416.434,-96.38642,2.066685,120,0,0), -- Chicken Escapee
(@CGUID+43,@Chicken,571,1,1,5281.582,4425.185,-96.79945,4.45059,120,0,0), -- Chicken Escapee
(@CGUID+44,@Chicken,571,1,1,5257.173,4424.231,-95.62836,3.996804,120,0,0); -- Chicken Escapee

-- Aura for Chicken Escapee (thx Discovered)
DELETE FROM `creature_template_addon` WHERE `entry`=28161;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(28161,0,0,0,0,'50734'); -- Chicken Escapee - Frenzyheart Chicken: Invisibility
-- Delete all spawnings of Chicken Escapee via quest_start_scripts
DELETE FROM `quest_start_scripts` WHERE `command`=10 AND `datalong`=28161;

-- Elder Harkek SAI
SET @ENTRY := 28138;
SET @SPELL_SEE_INVIS_CHICKEN := 50735;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,12532,0,0,0,85,@SPELL_SEE_INVIS_CHICKEN,2,0,0,0,0,7,0,0,0,0,0,0,0,"Elder Harkek - On Quest Accept - Invoker Cast Frenzyheart Chicken: See Invisibility"),
(@ENTRY,0,1,0,19,0,100,0,12702,0,0,0,85,@SPELL_SEE_INVIS_CHICKEN,2,0,0,0,0,7,0,0,0,0,0,0,0,"Elder Harkek - On Quest Accept - Invoker Cast Frenzyheart Chicken: See Invisibility"),
(@ENTRY,0,2,0,20,0,100,0,12532,0,0,0,28,@SPELL_SEE_INVIS_CHICKEN,0,0,0,0,0,7,0,0,0,0,0,0,0,"Elder Harkek - On Quest Complete - Remove Aura Frenzyheart Chicken: See Invisibility"),
(@ENTRY,0,3,0,20,0,100,0,12702,0,0,0,28,@SPELL_SEE_INVIS_CHICKEN,0,0,0,0,0,7,0,0,0,0,0,0,0,"Elder Harkek - On Quest Complete - Remove Aura Frenzyheart Chicken: See Invisibility");
-- Chicken Escapee SAI
SET @ENTRY := 28161;
SET @SPELL_NET_CHICKEN := 51959;
SET @SPELL_INVIS_CHICKEN := 50734;
SET @SPELL_SCARED_CHICKEN := 51846;
SET @SPELL_CREATE_QUESTITEM := 51037;
UPDATE `creature` SET `MovementType`=0,`spawndist`=0,`spawntimesecs`=5 WHERE `id`=@ENTRY;
UPDATE `creature_template` SET `AIName`='SmartAI',`npcflag`=1 WHERE `entry`=@ENTRY;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,@SPELL_NET_CHICKEN,0,0,0,28,@SPELL_SCARED_CHICKEN,0,0,0,0,0,1,0,0,0,0,0,0,0,"Chicken Escapee - On Spellhit - Remove Aura Scared Chicken"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,41,4000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Chicken Escapee - On Spellhit - Forced Despawn"),
(@ENTRY,0,2,3,64,0,100,0,0,0,0,0,85,@SPELL_CREATE_QUESTITEM,2,0,0,0,0,7,0,0,0,0,0,0,0,"Chicken Escapee - On Gossip Hello - Invoker Cast Capture Chicken Escapee"), -- Triggered because of cast-time
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chicken Escapee - On Gossip Hello - Close Gossip"),
(@ENTRY,0,4,5,61,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Chicken Escapee - On Gossip Hello - Set Npcflag None"),
(@ENTRY,0,5,6,61,0,100,0,0,0,0,0,28,@SPELL_SCARED_CHICKEN,0,0,0,0,0,1,0,0,0,0,0,0,0,"Chicken Escapee - On Gossip Hello - Remove Aura Scared Chicken"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,"Chicken Escapee - On Gossip Hello - Forced Despawn"),
(@ENTRY,0,7,8,25,0,100,0,0,0,0,0,11,@SPELL_INVIS_CHICKEN,1,0,0,0,0,1,0,0,0,0,0,0,0,"Chicken Escapee - On Reset - Cast Frenzyheart Chicken: Invisibility"), -- Just in case
(@ENTRY,0,8,0,61,0,100,0,0,0,0,0,11,@SPELL_SCARED_CHICKEN,0,0,0,0,0,1,0,0,0,0,0,0,0,"Chicken Escapee - On Reset - Cast Scared Chicken");
SET @entry := 35093;
SET @epic := 25009;
SET @gem := @entry+1;
-- Create references
DELETE FROM `reference_loot_template` WHERE `entry` IN(@entry,@epic,@gem);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(@entry,27452,0,1,1,1,1), -- Light Scribe Bands
(@entry,27453,0,1,1,1,1), -- Averinn's RIng of Slaying
(@entry,27454,0,1,1,1,1), -- Volcanic Pauldrons
(@entry,27455,0,1,1,1,1), -- Irondrake faceguard
(@entry,27456,0,1,1,1,1), -- Raiments of Nature's Breath
(@entry,27457,0,1,1,1,1), -- Life Bearer's Gauntlets
(@entry,27458,0,1,1,1,1), -- Oceansong Kilt
(@entry,27459,0,1,1,1,1), -- Vambraces of Daring
(@entry,27460,0,1,1,1,1), -- Reavers' Ring
(@entry,27461,0,1,1,1,1), -- Chestguard of the Prowler
-- Epics
(@epic,29238,0,1,1,1,1), -- Lion's Heart Girdle
(@epic,29264,0,1,1,1,1), -- Tree-Mender's Belt
(@epic,29346,0,1,1,1,1), -- Feltooth Eviscerator
(@epic,32077,0,1,1,1,1), -- Wrath Infused Gauntlets
-- Gems
(@gem,30592,0,1,1,1,1), -- Steady Chrysoprase
(@gem,30593,0,1,1,1,1), -- Potent Fire Opal
(@gem,30594,0,1,1,1,1); -- Regal Chrysoprase
-- Assign loot to the chest
SET @GOloot := 21764; -- lootid of Reinforced Fel Iron Chest Heroic
DELETE FROM `gameobject_loot_template` WHERE `entry`=@GOloot;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(@GOloot,1,100,1,0,-@entry, 2), -- one from gear
(@GOloot,2,30,1,0,-@gem,1), -- one gem (30%)
(@GOloot,3,100,1,0,-@epic,1); -- one from epics
DELETE FROM `gameobject` WHERE `id`=188677;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(318,188677,571,1,1,2567.449,-388.7118,3.573463,-2.879789,0,0,0.639778,0.76856,1200,100,1);
-- Spawn from Sniff
DELETE FROM `creature` WHERE `id`=34526;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES 
(42161,34526,1,1,1,0,0,-1050.052,-286.7274,159.1137,5.951573,120,0,0,1,0,0,0,0,0);
-- Template updates
UPDATE `creature_template` SET `faction_A`=104,`faction_H`=104,`baseattacktime`=2000,`npcflag`=`npcflag`|3,`unit_flags`=`unit_flags`|512 WHERE `entry`=34526; -- Aponi Brightmane
-- Model data
UPDATE `creature_model_info` SET `bounding_radius`=1.003375,`combat_reach`=4.3125,`gender`=1 WHERE `modelid`=29249; -- Aponi Brightmane
-- Addon data
DELETE FROM `creature_template_addon` WHERE `entry`=34526;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(34526,0,1,256,0,NULL); -- Aponi Brightmane
UPDATE `creature_template` SET `faction_A`=1914,`faction_H`=1914,`unit_flags`=33024 WHERE `entry`=26452;

DELETE FROM `creature_template_addon` WHERE `entry`=26452;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(26452,0,0,0,1,383,'');
DELETE FROM `gameobject` WHERE `id`=175759 AND `guid`=219;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(219,175759,530,1,1,9636.439,-7231.265,16.73347,-2.82743,0,0,-0.9876881,0.1564362,900,100,1);
-- Eye of the Lich King SAI
SET @ENTRY := 36913; -- NPC entry
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,6,0,0,1000,1000,66,0,0,0,0,0,0,21,150,0,0,0,0,0,0, 'Eye of the Lich King - OOC - face closest player');
-- Bladewing Bloodletter InhabitType fix
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=21033;

-- Bladewing Bloodletter
SET @NPC := 73849;
SET @PATH := @NPC*10;
UPDATE `creature` SET `position_x`=1987.838,`position_y`=6153.995,`position_z`=146.4068,`spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES (@NPC,@PATH,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUE
(@PATH,1,1987.838,6153.995,146.4068,0,0,0,100,0),
(@PATH,2,1981.592,6150.557,146.4068,0,0,0,100,0),
(@PATH,3,1966.573,6153.941,146.4068,0,0,0,100,0),
(@PATH,4,1953.747,6155.154,146.4068,0,0,0,100,0),
(@PATH,5,1941.287,6159.015,146.4068,0,0,0,100,0),
(@PATH,6,1937.986,6166.096,146.4068,0,0,0,100,0),
(@PATH,7,1948.558,6175.274,145.1566,0,0,0,100,0),
(@PATH,8,1959.44,6173.246,145.6567,0,0,0,100,0),
(@PATH,9,1971.408,6169.729,145.7679,0,0,0,100,0),
(@PATH,10,1986.747,6168.348,144.8511,0,0,0,100,0),
(@PATH,11,1998.881,6168.547,144.4066,0,0,0,100,0),
(@PATH,12,2008.877,6170.33,143.7955,0,0,0,100,0),
(@PATH,13,2021.965,6166.769,143.657,0,0,0,100,0),
(@PATH,14,2027.152,6158.083,145.4344,0,0,0,100,0),
(@PATH,15,2025.352,6149.427,146.4068,0,0,0,100,0),
(@PATH,16,2011.869,6150.37,146.4068,0,0,0,100,0),
(@PATH,17,1999.44,6155.886,146.4068,0,0,0,100,0);

-- Bladewing Bloodletter
SET @NPC := 73850;
SET @PATH := @NPC*10;
UPDATE `creature` SET `position_x`=2099.588,`position_y`=6126.344,`position_z`=148.8029,`spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES (@NPC,@PATH,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUE
(@PATH,1,2099.588,6126.344,148.8029,0,0,0,100,0),
(@PATH,2,2094.131,6133.031,148.303,0,0,0,100,0),
(@PATH,3,2085.703,6143.32,148.303,0,0,0,100,0),
(@PATH,4,2077.25,6154.094,148.5252,0,0,0,100,0),
(@PATH,5,2062.893,6175.25,146.414,0,0,0,100,0),
(@PATH,6,2056.135,6184.647,144.8307,0,0,0,100,0),
(@PATH,7,2050.784,6189.019,141.9417,0,0,0,100,0),
(@PATH,8,2044,6181.015,142.6362,0,0,0,100,0),
(@PATH,9,2044.303,6175.524,143.3028,0,0,0,100,0),
(@PATH,10,2053.432,6161.702,145.8306,0,0,0,100,0),
(@PATH,11,2064.378,6145.299,146.7471,0,0,0,100,0),
(@PATH,12,2064.748,6135.614,147.7195,0,0,0,100,0),
(@PATH,13,2067.337,6117.838,149.0529,0,0,0,100,0),
(@PATH,14,2073.338,6100.975,149.664,0,0,0,100,0),
(@PATH,15,2089.383,6099.217,149.3585,0,0,0,100,0),
(@PATH,16,2099.147,6111.964,149.1641,0,0,0,100,0);

-- Bladewing Bloodletter
SET @NPC := 73852;
SET @PATH := @NPC*10;
UPDATE `creature` SET `position_x`=2180.795,`position_y`=6149.398,`position_z`=145.9554,`spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES (@NPC,@PATH,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUE
(@PATH,1,2180.795,6149.398,145.9554,0,0,0,100,0),
(@PATH,2,2185.298,6157.3,146.8721,0,0,0,100,0),
(@PATH,3,2191.635,6164.935,146.6221,0,0,0,100,0),
(@PATH,4,2203.45,6168.873,146.2055,0,0,0,100,0),
(@PATH,5,2217.238,6165.062,145.6221,0,0,0,100,0),
(@PATH,6,2225.425,6159.092,145.1501,0,0,0,100,0),
(@PATH,7,2228.766,6146.569,145.3166,0,0,0,100,0),
(@PATH,8,2225.81,6129.76,143.9,0,0,0,100,0),
(@PATH,9,2203.906,6114.964,145.0111,0,0,0,100,0),
(@PATH,10,2184.713,6115.808,145.7333,0,0,0,100,0),
(@PATH,11,2173.165,6123,146.8721,0,0,0,100,0),
(@PATH,12,2175.542,6139.301,146.8721,0,0,0,100,0);

-- Bladewing Bloodletter
SET @NPC := 73853;
SET @PATH := @NPC*10;
UPDATE `creature` SET `position_x`=2153.506,`position_y`=6119.981,`position_z`=148.0267,`spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES (@NPC,@PATH,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUE
(@PATH,1,2153.506,6119.981,148.0267,0,0,0,100,0),
(@PATH,2,2144.238,6124.169,148.0267,0,0,0,100,0),
(@PATH,3,2133.341,6127.807,148.0267,0,0,0,100,0),
(@PATH,4,2120.865,6126.57,148.0267,0,0,0,100,0),
(@PATH,5,2110.276,6122.198,148.0267,0,0,0,100,0),
(@PATH,6,2108.702,6111.856,148.0267,0,0,0,100,0),
(@PATH,7,2113.887,6104.159,148.0267,0,0,0,100,0),
(@PATH,8,2123.298,6095.088,148.0267,0,0,0,100,0),
(@PATH,9,2136.37,6099.125,148.0267,0,0,0,100,0),
(@PATH,10,2146.343,6107.208,148.0267,0,0,0,100,0),
(@PATH,11,2150.752,6118.491,148.0267,0,0,0,100,0),
(@PATH,12,2158.115,6126.979,148.0267,0,0,0,100,0),
(@PATH,13,2168.949,6133.578,148.0267,0,0,0,100,0),
(@PATH,14,2180.009,6134.229,148.0267,0,0,0,100,0),
(@PATH,15,2189.201,6129.583,148.0267,0,0,0,100,0),
(@PATH,16,2192.429,6119.862,148.0267,0,0,0,100,0),
(@PATH,17,2187.044,6112.755,148.0267,0,0,0,100,0),
(@PATH,18,2176.445,6111.443,148.0267,0,0,0,100,0),
(@PATH,19,2166.243,6114.129,148.0267,0,0,0,100,0);

-- Bladewing Bloodletter
SET @NPC := 73858;
SET @PATH := @NPC*10;
UPDATE `creature` SET `position_x`=2128.704,`position_y`=6018.743,`position_z`=141.9579,`spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES (@NPC,@PATH,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUE
(@PATH,1,2128.704,6018.743,141.9579,0,0,0,100,0),
(@PATH,2,2118.804,6016.506,141.9433,0,0,0,100,0),
(@PATH,3,2100.692,6019.814,141.9433,0,0,0,100,0),
(@PATH,4,2080.599,6017.728,144.3877,0,0,0,100,0),
(@PATH,5,2070.564,6003.17,144.1802,0,0,0,100,0),
(@PATH,6,2079.148,5988.599,143.5968,0,0,0,100,0),
(@PATH,7,2088.214,5974.081,142.9579,0,0,0,100,0),
(@PATH,8,2102.427,5966.812,142.208,0,0,0,100,0),
(@PATH,9,2117.762,5969.647,141.9579,0,0,0,100,0),
(@PATH,10,2130.632,5977.25,141.9579,0,0,0,100,0),
(@PATH,11,2135.56,5993.264,141.9579,0,0,0,100,0),
(@PATH,12,2148.631,6003.11,141.1247,0,0,0,100,0),
(@PATH,13,2144.206,6017.48,141.9579,0,0,0,100,0);

-- Bladewing Bloodletter
SET @NPC := 73860;
SET @PATH := @NPC*10;
UPDATE `creature` SET `position_x`=1951.455,`position_y`=5919.516,`position_z`=140.4673,`spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES (@NPC,@PATH,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUE
(@PATH,1,1951.455,5919.516,140.4673,0,0,0,100,0),
(@PATH,2,1953.539,5912.287,140.4179,0,0,0,100,0),
(@PATH,3,1955.967,5902.248,140.4179,0,0,0,100,0),
(@PATH,4,1947.568,5889.415,140.4179,0,0,0,100,0),
(@PATH,5,1938.332,5877.63,140.4179,0,0,0,100,0),
(@PATH,6,1946.422,5859.488,140.4179,0,0,0,100,0),
(@PATH,7,1958.004,5850.275,140.4179,0,0,0,100,0),
(@PATH,8,1967.889,5861.601,140.4673,0,0,0,100,0),
(@PATH,9,1967.766,5874.843,140.4673,0,0,0,100,0),
(@PATH,10,1962.739,5881.181,140.4673,0,0,0,100,0),
(@PATH,11,1965.367,5889.64,140.4673,0,0,0,100,0),
(@PATH,12,1977.617,5904.389,140.4673,0,0,0,100,0),
(@PATH,13,1979.003,5918.971,140.4673,0,0,0,100,0),
(@PATH,14,1969.612,5933.128,140.4673,0,0,0,100,0),
(@PATH,15,1958.879,5940.208,140.4673,0,0,0,100,0),
(@PATH,16,1952.594,5927.489,140.4673,0,0,0,100,0);
-- Floating Flavor Eye InhabitType fix
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=21659;
-- Fix unit flags for Blackhand Incarcerator
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|768 WHERE `entry`=10316;
-- Fix unit flags for Pyroguard Emberseer
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|33554688 WHERE `entry`=9816;
-- Remove hack event script
DELETE FROM `event_scripts` WHERE `id`=4884;
-- Remove script to Dragonspire Hall Runes "UBRS"
UPDATE `gameobject_template` SET `ScriptName`= '' WHERE `entry` BETWEEN 175194 AND 175200;
-- Correction for Obsidian Nullifier EAI
UPDATE `creature_ai_scripts` SET
    `action1_param1` = 23
WHERE `id` = 1531201;

-- Correction for Wildspawn Felsworn and Wildspawn Hellcaller SAI
UPDATE `smart_scripts` SET
    `event_phase_mask` = 2,
    `action_type` = 22,
    `action_param1` = 1,
    `target_type` = 1
WHERE 
    (`entryorguid` = 11457 AND
    `source_type` = 0 AND
    `id` = 10 AND
    `link` = 0) OR
    (`entryorguid` = 11455 AND
    `source_type` = 0 AND
    `id` = 11 AND
    `link` = 0);
-- Fire Shield from 2.0.12 dbc
DELETE FROM `spell_dbc` WHERE `Id`=13377;
INSERT INTO `spell_dbc` (`Id`, `Dispel`, `Mechanic`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `AttributesEx6`, `AttributesEx7`, `Stances`, `StancesNot`, `Targets`, `CastingTimeIndex`, `AuraInterruptFlags`, `ProcFlags`, `ProcChance`, `ProcCharges`, `MaxLevel`, `BaseLevel`, `SpellLevel`, `DurationIndex`, `RangeIndex`, `StackAmount`, `EquippedItemClass`, `EquippedItemSubClassMask`, `EquippedItemInventoryTypeMask`, `Effect1`, `Effect2`, `Effect3`, `EffectDieSides1`, `EffectDieSides2`, `EffectDieSides3`, `EffectRealPointsPerLevel1`, `EffectRealPointsPerLevel2`, `EffectRealPointsPerLevel3`, `EffectBasePoints1`, `EffectBasePoints2`, `EffectBasePoints3`, `EffectMechanic1`, `EffectMechanic2`, `EffectMechanic3`, `EffectImplicitTargetA1`, `EffectImplicitTargetA2`, `EffectImplicitTargetA3`, `EffectImplicitTargetB1`, `EffectImplicitTargetB2`, `EffectImplicitTargetB3`, `EffectRadiusIndex1`, `EffectRadiusIndex2`, `EffectRadiusIndex3`, `EffectApplyAuraName1`, `EffectApplyAuraName2`, `EffectApplyAuraName3`, `EffectAmplitude1`, `EffectAmplitude2`, `EffectAmplitude3`, `EffectMultipleValue1`, `EffectMultipleValue2`, `EffectMultipleValue3`, `EffectMiscValue1`, `EffectMiscValue2`, `EffectMiscValue3`, `EffectMiscValueB1`, `EffectMiscValueB2`, `EffectMiscValueB3`, `EffectTriggerSpell1`, `EffectTriggerSpell2`, `EffectTriggerSpell3`, `EffectSpellClassMaskA1`, `EffectSpellClassMaskA2`, `EffectSpellClassMaskA3`, `EffectSpellClassMaskB1`, `EffectSpellClassMaskB2`, `EffectSpellClassMaskB3`, `EffectSpellClassMaskC1`, `EffectSpellClassMaskC2`, `EffectSpellClassMaskC3`, `MaxTargetLevel`, `SpellFamilyName`, `SpellFamilyFlags1`, `SpellFamilyFlags2`, `SpellFamilyFlags3`, `MaxAffectedTargets`, `DmgClass`, `PreventionType`, `DmgMultiplier1`, `DmgMultiplier2`, `DmgMultiplier3`, `AreaGroupId`, `SchoolMask`, `Comment`) VALUES 
(13377, 1, 0, 2512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 101, 0, 0, 40, 40, 21, 1, 0, -1, -1, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 23, 0, 0, 3000, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, 13376, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 2, 'Fire Shield');
-- Training dummies
UPDATE `creature_template` SET
    `flags_extra`=0x40000, /* NO_SKILLGAIN */
    `mechanic_immune_mask`=0x20|0x4000 /* GRIP|BLEED */ /* two of the templates already had bleed immunity, is that correct? */
WHERE `ScriptName`='npc_training_dummy';
-- First page of A Steamy Romance Novel: Northern Exposure
DELETE FROM `page_text` WHERE `entry`=3562;
INSERT INTO `page_text` (`entry`, `text`, `next_page`) VALUES
(3562, 'The tiny gnome peered over the railing into the secluded Dalaran courtyard.$B$B"The view from the balcony is amazing.  You have to come see!"$B$BArmor legplates creaked as Marcus walked over, taking in a deep breath as he absently scratched his scruffy chin.$B$B"The Hero''s Welcome is no slouch.  And there''s something in the room that might interest you."$B$BTavi bounded into the room, pausing only a moment before jumping onto the massive bed.  She turned to gaze at Marcus with her huge saucer-like eyes, narrowing them playfully and replacing her glowing smile with a diabolical grin.', 3563);
-- Training dummies
UPDATE `creature_template` SET
    `mechanic_immune_mask` = `mechanic_immune_mask` &~ 0x4000 /* BLEED */
WHERE `ScriptName`='npc_training_dummy';
-- Blade's Edge - Legion - Invis Bunny
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|128 WHERE `entry`=20736;
-- Death's Door Warp-Gate Explosion Bunny
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|128 WHERE `entry`=22502;
-- Death's Door North Warp-Gate
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|128 WHERE `entry`=22471;
-- Death's Door South Warp-Gate
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|128 WHERE `entry`=22472;
-- Blackhand Dreadweaver <Blackhand Legion> SAI
SET @ENTRY   := 9817;  -- NPC entry
SET @SPELL1  := 12739; -- Shadow Bolt
SET @SPELL2  := 7068;  -- Veil of Shadow
SET @SPELL3  := 12380; -- Shadow Channeling
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM creature_ai_scripts WHERE creature_id=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,2,0,0,0,0,58,1,@SPELL1,3600,6300,25,30,1,0,0,0,0,0,0,0, 'Blackhand Dreadweaver - On Reset - Load caster template Cast Shadow Bolt'),
(@ENTRY,0,1,0,25,0,100,0,0,0,0,0,11,@SPELL3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Dreadweaver - On Reset - Aura Shadow Channeling'),
(@ENTRY,0,2,3,4,0,100,2,0,0,0,0,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Blackhand Dreadweaver - On Aggro - Cast Shadow Bolt'),
(@ENTRY,0,3,0,61,0,100,2,0,0,0,0,39,10,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Dreadweaver - On Aggro - Call for help'),
(@ENTRY,0,4,0,0,0,100,2,9400,21400,22000,28800,11,@SPELL2,3,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Dreadweaver - Combat - Cast Veil of Shadow'),
(@ENTRY,0,5,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Dreadweaver - HP@15% - Flee for help'),
(@ENTRY,0,6,7,1,0,100,2,0,8000,12000,14000,92,0,0,1,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Dreadweaver - OOC - interupt channeling'),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Dreadweaver - OOC - set phase 1'),
(@ENTRY,0,8,0,1,1,100,2,0,0,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Dreadweaver - OOC - emote (phase 1)'),
(@ENTRY,0,9,10,1,1,100,2,4000,4000,4000,4000,11,@SPELL3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Dreadweaver - OOC - Aura Shadow Channeling (phase 1)'),
(@ENTRY,0,10,0,61,1,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Dreadweaver - OOC - set phase 0 (phase 1)');

-- Blackhand Summoner <Blackhand Legion> SAI
SET @ENTRY   := 9818;  -- NPC entry
SET @SPELL1  := 12466; -- Fireball
SET @SPELL2  := 15532; -- Frost Nova
SET @SPELL3  := 15792; -- Summon Blackhand Veteran
SET @SPELL4  := 15794; -- Summon Blackhand Dreadweaver
SET @SPELL5  := 12380; -- Shadow Channeling
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM creature_ai_scripts WHERE creature_id=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,2,0,0,0,0,58,1,@SPELL1,3600,6300,25,30,1,0,0,0,0,0,0,0, 'Blackhand Summoner - On Reset - Load caster template Cast Fireball'),
(@ENTRY,0,1,0,25,0,100,0,0,0,0,0,11,@SPELL5,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Summoner - On Reset - Aura Shadow Channeling'),
(@ENTRY,0,2,3,4,0,100,2,0,0,0,0,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Blackhand Summoner - On Aggro - Cast Shadow Bolt'),
(@ENTRY,0,3,0,61,0,100,2,0,0,0,0,39,10,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Summoner - On Aggro - Call for help'),
(@ENTRY,0,4,0,0,0,100,2,11400,11400,12700,16700,11,@SPELL2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Summoner - Combat - Cast Frost Nova'),
(@ENTRY,0,5,6,0,0,100,3,30000,35000,0,0,11,@SPELL3,1,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Summoner - Combat - Cast Summon Blackhand Veteran'),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Summoner - Combat - say 0'),
(@ENTRY,0,7,8,0,0,100,3,40000,45000,0,0,11,@SPELL4,1,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Summoner - Combat - Cast Summon Blackhand Dreadweaver'),
(@ENTRY,0,8,0,61,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Summoner - Combat - say 1'),
(@ENTRY,0,9,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Summoner - HP@15% - Flee for help'),
(@ENTRY,0,10,0,1,0,100,2,0,8000,12000,14000,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Summoner - OOC - emote');
-- NPC talk text insert
DELETE FROM `creature_text` WHERE `entry`=9818;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(9818,0,0,'%s begins to summon in a Blackhand Veteran!',16,0,100,0,0,0,'Blackhand Summoner'),
(9818,1,0,'%s begins to summon in a Blackhand Dreadweaver!',16,0,100,0,0,0,'Blackhand Summoner');

-- Blackhand Veteran <Blackhand Legion> SAI
SET @ENTRY   := 9819;  -- NPC entry
SET @SPELL1  := 15749; -- Shield Charge
SET @SPELL2  := 14516; -- Strike
SET @SPELL3  := 11972; -- Shield Bash
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM creature_ai_scripts WHERE creature_id=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,2,0,0,0,0,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Blackhand Veteran - On Aggro - Cast Shield Charge'),
(@ENTRY,0,1,0,61,0,100,2,0,0,0,0,39,10,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Veteran - On Aggro - Call for help'),
(@ENTRY,0,2,0,0,0,100,2,7800,15800,13800,22900,11,@SPELL2,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Blackhand Veteran - Combat - Cast Veil of Shadow'),
(@ENTRY,0,3,0,0,0,100,2,10000,20000,6000,12000,11,@SPELL3,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Blackhand Veteran - Combat - Cast Veil of Shadow'),
(@ENTRY,0,4,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Veteran - HP@15% - Flee for help'),
(@ENTRY,0,5,0,1,0,100,2,0,8000,12000,14000,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Veteran - OOC - emote');

-- Rage Talon Dragonspawn SAI
SET @ENTRY   := 9096;  -- NPC entry 
SET @SPELL1  := 15580; -- Strike
SET @SPELL2  := 12021; -- Fixate
SET @SPELL3  := 15572; -- Sunder Armor
SET @SPELL4  := 3391; -- Thrash
SET @SPELL5  := 8269; -- Frenzy
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM creature_ai_scripts WHERE creature_id=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,4000,13200,6600,14400,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Rage Talon Dragonspawn - Combat - Cast Strike'),
(@ENTRY,0,1,0,0,0,100,2,7700,17100,20300,34200,11,@SPELL2,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Rage Talon Dragonspawn - Combat - Cast Fixate'),
(@ENTRY,0,2,0,0,0,100,2,1400,12300,7100,11700,11,@SPELL3,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Rage Talon Dragonspawn - Combat - Cast Sunder Armor'),
(@ENTRY,0,3,0,0,0,100,2,8200,17100,5600,18100,11,@SPELL4,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Rage Talon Dragonspawn - Combat - Cast Thrash'),
(@ENTRY,0,4,5,2,0,100,2,0,30,120000,120000,11,@SPELL5,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Rage Talon Dragonspawn - HP@30% - Cast Frenzy'),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Summoner - HP@30% - say 0');
-- NPC talk text insert
DELETE FROM `creature_text` WHERE `entry`=9096;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(9096,0,0,'%s goes into a frenzy!',16,0,100,0,0,0,'Rage Talon Dragonspawn');

 -- Scarshield Legionnaire <Scarshield Legion> SAI
SET @ENTRY   := 9097;  -- NPC entry
SET @SPELL1  := 15496; -- Cleave
SET @SPELL2  := 11972; -- Shield Bash
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM creature_ai_scripts WHERE creature_id=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,2,0,0,0,0,39,10,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Scarshield Legionnaire - On Aggro - Call for help'),
(@ENTRY,0,1,0,0,0,100,2,7800,11500,8000,22100,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Scarshield Legionnaire -  Combat - Cast Cleave'),
(@ENTRY,0,2,0,0,0,100,2,4000,10000,14000,20000,11,@SPELL2,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Scarshield Legionnaire -  Combat - Cast Shield Bash');

-- Scarshield Acolyte <Scarshield Legion> SAI
SET @ENTRY   := 9045;  -- NPC entry
SET @SPELL1  := 14032; -- Shadow Word: Pain
SET @SPELL2  := 12039; -- Heal
SET @SPELL3  := 8362;  -- Renew
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM creature_ai_scripts WHERE creature_id=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,2,0,0,0,0,39,10,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Scarshield Acolyte - On Aggro - Call for help'),
(@ENTRY,0,1,0,0,0,100,2,7700,15700,21900,33500,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Scarshield Acolyte - Combat - Cast Shadow Word: Pain'),
(@ENTRY,0,2,0,2,0,100,3,0,75,0,0,11,@SPELL2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Scarshield Acolyte -  HP@75% - Cast Heal'),
(@ENTRY,0,3,0,14,0,100,2,35,8,5000,6000,11,@SPELL3,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Scarshield Acolyte -  Friendly hp@35 - Cast Renew on friendly unit');

-- Scarshield Spellbinder <Scarshield Legion> SAI
SET @ENTRY   := 9098;  -- NPC entry
SET @SPELL1  := 13748; -- Arcane Bolt
SET @SPELL2  := 15123; -- Resist Fire
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM creature_ai_scripts WHERE creature_id=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,2,0,0,0,0,58,1,@SPELL1,1100,3000,30,30,1,0,0,0,0,0,0,0, 'Scarshield Spellbinder - On Reset - Load caster template Cast Arcane Bolt'),
(@ENTRY,0,1,0,4,0,100,2,0,0,0,0,39,10,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Scarshield Spellbinder - On Aggro - Call for help'),
(@ENTRY,0,2,0,16,0,100,2,@SPELL2,30,3000,6000,11,@SPELL2,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Blackhand Summoner - Combat - Cast Resist Fire');

-- Blackhand Incarcerator SAI
SET @ENTRY   := 10316; -- NPC entry
SET @SPELL1  := 15281; -- Encage Emberseer
SET @SPELL2  := 12039; -- Heal
SET @SPELL3  := 8362;  -- Renew
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM creature_ai_scripts WHERE creature_id=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,3,1000,1000,1000,1000,11,@SPELL1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Incarcerator - OOC -  Cast Encage Emberseer'),
(@ENTRY,0,1,2,38,0,100,2,0,1,0,0,92,0,@SPELL1,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Incarcerator - On data set -  Stop Casting Encage Emberseer'),
(@ENTRY,0,2,4,61,0,100,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Incarcerator - On data set -  Remove unit flags'),
(@ENTRY,0,3,4,4,0,100,2,0,0,0,0,9,0,0,0,0,0,0,15,175244,100,0,0,0,0,0, 'Blackhand Incarcerator - On aggro -  close emberseer in door'),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,9,0,0,0,0,0,0,15,175705,100,0,0,0,0,0, 'Blackhand Incarcerator - On aggro -  close doors'),
(@ENTRY,0,5,0,0,0,100,2,7800,15800,13800,22900,11,@SPELL2,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Blackhand Incarcerator - Combat - Cast Strike'),
(@ENTRY,0,6,0,0,0,100,2,10000,20000,6000,12000,11,@SPELL3,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Blackhand Incarcerator - Combat - Cast Encage'),
(@ENTRY,0,7,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Incarcerator - HP@15% - Flee for help'),
(@ENTRY,0,8,0,6,0,100,0,0,0,0,0,41,10000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Incarcerator - On death - Despawn after 10 sec');
-- Gameobject updates based on sniffs
UPDATE `gameobject_template` SET `size` =2.5,`questItem1`=30876,`data0`=57,`data1`=21583 WHERE `entry`=185032;
UPDATE `gameobject` SET `position_x`=-3420.991,`position_y`=1373.175,`position_z`=257.5233,`orientation`=3.141593 WHERE `id`=185032;
-- Gameobject loot template
DELETE FROM `gameobject_loot_template` WHERE `entry`=21583;
INSERT INTO `gameobject_loot_template` VALUES
(21583,30876,100,1,0,1,1); -- Quenched Illidari-Bane Blade
-- RE FIX Reanimated Frost Wyrm
DELETE FROM `creature` WHERE `guid` IN (116670,116671,116672,116681,116683,116684,116685,116686,116687,116696,116697,116699,116700,116701);
UPDATE `creature` SET `MovementType`=2 WHERE `guid` BETWEEN 40497 AND 40505;
UPDATE `creature_addon` SET `bytes1`=50331648,`bytes2`=1 WHERE `guid` BETWEEN 40497 AND 40505;
-- Fix Wildhammer Scout
UPDATE `creature` SET `MovementType`=0 WHERE guid IN (69122,69123,69124,69125,69126,69127);
UPDATE `creature_addon` SET `path_id`=0 WHERE guid IN (69122,69123,69124,69125,69126,69127);
-- Add Missing spawn for Queen Angerboda
DELETE FROM `creature` WHERE `id`=24023; 
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(42162,24023,571,1,1,0,0,2855.372,-3869.662,248.6132,2.181662,150,0,0,9291,3231,0,0,0,0);
-- Remove Spawns for Compact Harvest Reaper, it should be spawned via script
DELETE FROM `creature` WHERE `id`=2676;
-- Reconstructed Wyrm SAI
SET @ENTRY  := 27693;
SET @SPELL1 := 49386; -- Not in dbc
SET @SPELL2 := 49343; -- Frost Breath Strafe
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,11,0,100,0,0,0,0,0,11,@SPELL2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Reconstructed Wyrm - On spawn - cast aura'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,53,0,@ENTRY,0,0,0,0,1,0,0,0,0,0,0,0,'Reconstructed Wyrm - On spawn - Load Path');
-- waypoints for Reconstructed Wyrm
DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY); 
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,4685.845,1130.759,150.1177, 'Reconstructed Wyrm'),
(@ENTRY,2,4686.284,1131.658,150.1177, 'Reconstructed Wyrm'),
(@ENTRY,3,4688.699,1166.089,161.2737, 'Reconstructed Wyrm'),
(@ENTRY,4,4702.308,1212.668,161.2737, 'Reconstructed Wyrm'),
(@ENTRY,5,4733.535,1260.209,169.6348, 'Reconstructed Wyrm'),
(@ENTRY,6,4751.818,1293.699,175.9404, 'Reconstructed Wyrm'),
(@ENTRY,7,4794.479,1345.154,199.5372, 'Reconstructed Wyrm'),
(@ENTRY,8,4812.264,1373.523,219.8613, 'Reconstructed Wyrm');
-- Fix spawns
UPDATE `creature` SET `position_x`=4685.845,`position_y`=1130.759,`position_z`=150.1177,`spawntimesecs`=120,`spawndist`=0,`MovementType`=0 WHERE `guid`=100211;
DELETE FROM `creature` WHERE `guid` IN (100256,133240,133241);
DELETE FROM `creature_addon` WHERE `guid` IN (100256,133240,133241);
-- [QUEST] Attunement to Dalaran
SET @GUID := 320;
-- Adds the gameobject to recognize the zone
DELETE FROM `gameobject` WHERE `id`=300193;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`)
VALUES
(@GUID,300193,571,1,1,3343.8,2502.85,-15.1381,5.74342,0,0,0.266617,-0.963802,300,0,1);
-- [SAI] NPC Attunement To Dalaran Kill Credit Bunny 27135
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=27135;
DELETE FROM `smart_scripts` WHERE `entryorguid`=27135 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`)
VALUES
(27135,0,0,0,8,0,100,1,48021,1,0,0,33,27135,0,0,0,0,0,7,0,0,0,0,0,0,0, 'On spellhit - give kill credit - Attunement to Dalaran Kill Credit Bunny');
-- Tukemuth
DELETE FROM `smart_scripts` WHERE `entryorguid`=32400;
INSERT INTO `smart_scripts` VALUES 
(32400,0,0,0,9,0,100,0,0,5,9000,13000,11,50410,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Tukemuth - Cast Tusk Strike'),
(32400,0,1,0,0,0,100,0,9000,17000,15000,22000,11,57066,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Tukemuth - Cast Trample');
UPDATE `creature_template` SET faction_A=7,faction_H=7,mindmg=2926.0,maxdmg=3542.0,skinloot=70209,spell1=50410,spell2=57066,attackpower=3384,dmg_multiplier=1.0,AIName= 'SmartAI',mechanic_immune_mask=2147483647 where entry=32400;

-- Fumblub Gearwind
DELETE FROM `smart_scripts` WHERE `entryorguid`=32358;
INSERT INTO `smart_scripts` VALUES 
(32358,0,0,0,0,0,100,0,4000,6000,12000,15000,11,60906,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Fumblub Gearwind - Cast Machine Gun');
UPDATE `creature_template` SET faction_A=14,faction_H=14,mindmg=2792,maxdmg=3376,spell1=60906,attackpower=3384,dmg_multiplier=1.0,AIName= 'SmartAI',mechanic_immune_mask=2147483647,type_flags=2048,InhabitType=4 where entry=32358;
UPDATE `creature_addon` SET mount=22719,bytes1=33554432 where guid=151938;

-- Old Crystalbark
DELETE FROM `smart_scripts` WHERE `entryorguid`=32357;
INSERT INTO `smart_scripts` VALUES
(32357,0,0,0,0,0,100,0,3700,16200,19200,28000,11,50506,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Old Crystalbark - Cast Mark of Detonation'),
(32357,0,1,0,0,0,100,0,1625,8100,9600,14000,11,60903,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Old Crystalbark - Cast Arcane Breath');
UPDATE `creature_template` SET faction_A=14,faction_H=14,mindmg=3231.0,maxdmg=3309.0,spell1=60903,spell2=50506,attackpower=3214,dmg_multiplier=1.0,AIName= 'SmartAI',mechanic_immune_mask=2147483647 where entry=32357;

-- Terror Spinner - Tameable
DELETE FROM `smart_scripts` WHERE `entryorguid`=32475;
INSERT INTO `smart_scripts` VALUES
(32475,0,0,0,0,0,100,0,4000,6000,12000,15000,11,36839,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Terror Spinner - Cast Impairing Poison'),
(32475,0,1,0,0,0,100,0,1625,8100,9600,14000,11,28428,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Terror Spinner - Cast Instant Poison');
UPDATE `creature_template` SET faction_A=14,faction_H=14,mindmg=3625.0,maxdmg=4301.0,spell1=32475,spell2=28428,attackpower=3963,dmg_multiplier=1.0,AIName= 'SmartAI',mechanic_immune_mask=66624,name= 'Terror Spinner' where entry=32475;

-- Hildana Deathstealer
DELETE FROM `smart_scripts` WHERE `entryorguid`=32495;
INSERT INTO `smart_scripts` VALUES
(32495,0,0,0,0,0,100,1,0,0,0,0,22,1,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Hildana Deathstealer - Enter phase 1'),
(32495,0,1,2,0,1,100,0,3000,6000,4000,6000,11,60991,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Hildana Deathstealer - Cast Lash'),
(32495,0,2,0,61,1,100,0,0,0,0,0,22,2,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Hildana Deathstealer - Enter phase 2'),
(32495,0,3,0,0,2,100,0,3000,5000,9000,11000,11,57547,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Hildana Deathstealer - Cast Touch of the Valkyr'),
(32495,0,4,0,0,2,100,0,12000,13000,13000,15000,22,1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Hildana Deathstealer - timer back to phase 1');
UPDATE `creature_template` SET faction_A=14,faction_H=14,mindmg=4715,maxdmg=5474,attackpower=5094,dmg_multiplier=1.0,AIName= 'SmartAI',mechanic_immune_mask=2147483647 where entry=32495;

-- Syreian the Bonecarver
UPDATE `creature_template` SET faction_A=14,faction_H=14,mindmg=2926,maxdmg=3542,spell1=38952,spell2=47168,spell3=50092,attackpower=3234,dmg_multiplier=1.0,mechanic_immune_mask=2147483647 where entry=32438;

-- Icehorn - Tameable
DELETE FROM `smart_scripts` WHERE `entryorguid`=32361;
INSERT INTO `smart_scripts` VALUES
(32361,0,0,0,0,0,100,0,4500,6750,6750,9750,11,57468,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Icehorn - Cast Romp');
UPDATE `creature_template` SET type_flags= '1',faction_A=14,faction_H=14,mindmg=2792,maxdmg=3376,spell1=57468,attackpower=3084,dmg_multiplier=1.0,AIName= 'SmartAI',mechanic_immune_mask=66624,skinloot=70211 where entry=32361;

-- King Ping
DELETE FROM `smart_scripts` WHERE `entryorguid`=32398;
INSERT INTO `smart_scripts` VALUES
(32398,0,0,0,0,0,100,0,1600,8000,12400,13000,11,61115,0,0,0,0,0,2,0,0,0,0,0,0,0, 'King Ping - Cast Belly Flop'),
(32398,0,1,0,0,0,100,0,800,2600,4200,6800,11,50169,0,0,0,0,0,2,0,0,0,0,0,0,0, 'King Ping - Cast Flipper Thwack');
UPDATE `creature_template` SET faction_A=14,faction_H=14,mindmg=2792,maxdmg=3376,spell1=61115,spell2=50169,attackpower=3234,dmg_multiplier=1.0,AIName= 'SmartAI',mechanic_immune_mask=2147483647 WHERE entry=32398;

-- High Thane Jorfus
DELETE FROM `smart_scripts` WHERE `entryorguid`=32501;
INSERT INTO `smart_scripts` VALUES
(32501,0,0,0,0,0,100,0,1600,3200,6400,12800,11,60950,0,0,0,0,0,2,0,0,0,0,0,0,0, 'High Thane Jorfus - Cast Blood Plague'),
(32501,0,1,0,0,0,100,2,10000,20000,10000,20000,11,60945,0,0,0,0,0,2,0,0,0,0,0,0,0, 'High Thane Jorfus - Cast Blood Strike'),
(32501,0,2,0,0,0,100,0,8000,13000,16000,21000,11,60953,1,0,0,0,0,5,0,0,0,0,0,0,0, 'High Thane Jorfus - Cast Death and Decaye'),
(32501,0,3,0,0,0,100,4,1000,1400,8500,20500,11,60949,0,0,0,0,0,5,0,0,0,0,0,0,0, 'High Thane Jorfus - Cast Death Coil'),
(32501,0,4,0,0,0,100,2,5000,9000,15000,22000,11,60951,0,0,0,0,0,2,0,0,0,0,0,0,0, 'High Thane Jorfus - Cast Frost Strike');
UPDATE `creature_template` set faction_A=14,faction_H=14,mindmg=4894,maxdmg=5649,spell1=60950,spell2=60945,spell3=60953,spell4=60949,spell5=60951,attackpower=5271,dmg_multiplier=1.0,AIName= 'SmartAI',mechanic_immune_mask=2147483647 WHERE entry=32501;

-- Perobas the Bloodthirster
DELETE FROM `smart_scripts` WHERE `entryorguid`=32377;
INSERT INTO `smart_scripts` VALUES
(32377,0,0,0,0,0,100,0,5000,8000,12000,15000,11,50046,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Perobas the Bloodthirster - Cast Gnaw Bone'),
(32377,0,1,0,2,0,100,0,0,50,10000,13000,11,50271,1,0,0,0,0,1,0,0,0,0,0,0,0, 'Perobas the Bloodthirster - Cast Killing Rage');
UPDATE `creature_template` set faction_A=14,faction_H=14,mindmg=2792,maxdmg=3376,spell1=50046,spell2=52071,attackpower=3084,dmg_multiplier=1.0,AIName= 'SmartAI',mechanic_immune_mask=66624,skinloot=70209 where entry=32377;

-- Aotona - Tameable
UPDATE `creature` SET curhealth=15952  where id=32481;
UPDATE `creature_template` SET exp=2,armor_mod=1.0,minlevel=75,maxlevel=75,faction_A=14,faction_H=14,mindmg=3376,maxdmg=4034,spell1=49865,spell2=51144,attackpower=3705,dmg_multiplier=1.0,mechanic_immune_mask=66624 where entry=32481;

--  Griegen
DELETE FROM `smart_scripts` WHERE `entryorguid`=32471;
INSERT INTO `smart_scripts` VALUES
(32471,0,0,0,0,0,100,0,5000,8000,9000,12000,11,51334,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Griegen - Cast Smash');
UPDATE `creature` set curhealth=15952  where id=32471;
UPDATE `creature_template` set exp=2,armor_mod=1.0,minlevel=75,maxlevel=75,faction_A=14,faction_H=14,mindmg=3376,maxdmg=4034,spell1=51334,attackpower=3705,dmg_multiplier=1.0,AIName= 'SmartAI',mechanic_immune_mask=2147483647 where entry=32471;

-- Seething Hate
UPDATE `creature_template` SET mindmg=2926,maxdmg=3542,attackpower=3234,dmg_multiplier=1.0,mechanic_immune_mask=66624 WHERE entry=32429;

-- Vigdis the War Maiden
DELETE FROM `creature_template_addon` WHERE entry=32386;
INSERT INTO `creature_template_addon` VALUES
(32386,0,28040,0,0,0,NULL);
UPDATE `creature` SET spawndist=20.0,MovementType=1 WHERE id=32386;
UPDATE `creature_template` SET faction_A=14,faction_H=14,mindmg=2792,maxdmg=3376,attackpower=3084,dmg_multiplier=1.0,mechanic_immune_mask=2147483647,InhabitType=1 where entry=32386;

-- King Krush - Tameable
UPDATE `creature_template` SET faction_A=14,faction_H=14,mechanic_immune_mask=66624 WHERE entry=32485;

-- Scarlet Highlord Daion
UPDATE `creature_template` SET faction_A=14,faction_H=14,mindmg=2926,maxdmg=3542,attackpower=3234,dmg_multiplier=1.0,mechanic_immune_mask=66624 WHERE entry=32417;

-- Crazed Indu'le Survivor
UPDATE `creature_template` SET mindmg=2926,maxdmg=3542,attackpower=3234,dmg_multiplier=1.0,mechanic_immune_mask=66624 WHERE entry=32409;

-- Grocklar
UPDATE `creature_template` SET mindmg=3137,maxdmg=3777,attackpower=3457,dmg_multiplier=1.0,mechanic_immune_mask=66624 WHERE entry=32422;

-- Loque'nahak - Tameable
UPDATE `creature_template` SET type_flags= '1',mechanic_immune_mask=66624 WHERE entry=32422;

-- Zuldrak Sentinel
DELETE FROM `smart_scripts` WHERE `entryorguid`=32447;
INSERT INTO `smart_scripts` VALUES 
(32447,0,0,0,0,0,100,0,0,5,9000,13000,11,55196,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Zuldrak Sentinel - Cast Stomp'),
(32447,0,1,0,0,0,100,0,15000,20000,21000,35000,11,54565,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Zuldrak Sentinel - Cast Whammy');
UPDATE `creature_template` SET mindmg= '3905',maxdmg= '4600',attackpower= '4252',dmg_multiplier= '1.0',mechanic_immune_mask= '66624',spell1= '54565',spell2= '55196',AIName= 'SmartAI' WHERE entry= '32447';
UPDATE `game_event` SET `start_time` ='2012-06-21 00:01:00' WHERE `eventEntry`=1;  -- Midsummer Fire Festival
UPDATE `game_event` SET `start_time` ='2012-09-19 00:01:00' WHERE `eventEntry`=50; -- Pirates' Day
UPDATE `game_event` SET `start_time` ='2012-09-20 00:01:00' WHERE `eventEntry`=24; -- Brewfest
UPDATE `game_event` SET `start_time` ='2012-09-24 00:01:00' WHERE `eventEntry`=11; -- Harvest Festival
UPDATE `game_event` SET `start_time` ='2012-09-18 01:00:00' WHERE `eventEntry`=11; -- Hallow's End
UPDATE `game_event` SET `start_time` ='2012-11-01 01:00:00' WHERE `eventEntry`=51; -- Day of the Dead
UPDATE `game_event` SET `start_time` ='2012-11-18 01:00:00' WHERE `eventEntry`=26; -- Pilgrim's Bounty
UPDATE `game_event` SET `start_time` ='2012-12-15 06:00:00' WHERE `eventEntry`=2;  -- Winter Veil
-- Fix pathing for Thiassi the Lightning Bringer
DELETE FROM `creature_addon` WHERE `guid`=106554;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES (106554,1065540,1);

-- bio's screwed up movement for rares. Fix for some
UPDATE `creature` SET `spawndist`=10,`MovementType`=1 WHERE `id` IN (32400,32417,32422,32429);
UPDATE `creature_addon` SET `path_id`=2026020 WHERE `guid`=202602;
UPDATE `waypoint_data` SET `id`=2026020 WHERE `id`=2500060;
-- Fix recent DB errors
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=27135; -- Attunement To Dalaran Kill Credit
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=32400; -- Tukemuth

-- Fix recent DB errors (credits to Vincent-Michael)
DELETE FROM `creature_addon` WHERE `guid` = 2593;
DELETE FROM `creature_template_addon` WHERE `entry` = 2676;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(2676,0,0,0,4097,0,NULL);
-- Spawn Deadmire
SET @GUID := 33909;
SET @NPC := @GUID*10;
DELETE FROM `creature` WHERE `id`=4841;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@GUID,4841,1,1,1,0,0,-3949.688,-3471.041,29.15445,4.288023,360,0,0,1902,0,0,0,0,0); -- respawn Deadmire on old guid
-- Set movement info
UPDATE `creature_addon` SET `path_id`=@NPC WHERE `guid`=@GUID;
UPDATE `creature_template` SET `MovementType`=2 WHERE `entry`=4841;
-- Add Waypoint Data
DELETE FROM `waypoint_data` WHERE `id`=@NPC;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@NPC,1,-3942.966,-3455.51,28.89743,0,0,0,0,0,0),
(@NPC,2,-3943.117,-3456.498,28.89743,0,0,0,0,0,0),
(@NPC,3,-3948.063,-3467.443,29.64743,0,0,0,0,0,0),
(@NPC,4,-3950.123,-3472.004,29.02243,0,0,0,0,0,0),
(@NPC,5,-3953.303,-3479.054,28.64743,0,0,0,0,0,0),
(@NPC,6,-3953.303,-3479.054,28.64743,0,0,0,0,0,0);
-- Spawn Deadmire
SET @GUID := 202606;
SET @NPC := @GUID*10;
-- Set movement info
UPDATE `creature_addon` SET `path_id`=@NPC WHERE `guid`=@GUID;
UPDATE `creature_template` SET `MovementType`=2 WHERE `entry`=32630;
-- Add Waypoint Data
DELETE FROM `waypoint_data` WHERE `id`=@NPC;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@NPC,1,7024.75,-1625.538,957.3694,0,0,0,0,0,0),
(@NPC,2,7025.494,-1624.87,957.3694,0,0,0,0,0,0),
(@NPC,3,7167.578,-1501.694,962.5693,0,0,0,0,0,0),
(@NPC,4,7440.402,-1295.861,997.2911,0,0,0,0,0,0),
(@NPC,5,7210.958,-1046.892,1006.18,0,0,0,0,0,0),
(@NPC,6,6998.465,-1076.847,1024.819,0,0,0,0,0,0),
(@NPC,7,6874.249,-1097.382,927.736,0,0,0,0,0,0),
(@NPC,8,6614.792,-875.7547,812.7645,0,0,0,0,0,0),
(@NPC,9,6563.275,-811.7673,749.8757,0,0,0,0,0,0),
(@NPC,10,6299.502,-797.577,529.1257,0,0,0,0,0,0),
(@NPC,11,6194.549,-1013.144,501.5424,0,0,0,0,0,0),
(@NPC,12,6319.254,-1251.661,468.6258,0,0,0,0,0,0),
(@NPC,13,6309.161,-1537.857,615.0423,0,0,0,0,0,0),
(@NPC,14,6748.211,-1664.307,919.3118,0,0,0,0,0,0),
(@NPC,15,6913.308,-1725.261,954.7917,0,0,0,0,0,0),
(@NPC,16,7167.578,-1501.694,962.5693,0,0,0,0,0,0),
(@NPC,17,7440.402,-1295.861,997.2911,0,0,0,0,0,0);
-- correct waypointid to guid*10
UPDATE `waypoint_data` SET `id`=2026020 WHERE `id`=2026060;
UPDATE `creature_addon` SET `path_id`=2026020 WHERE `guid`=202602;
-- malcroms request
UPDATE `creature_template` SET `MovementType`=0 WHERE `entry`=32630;
UPDATE `creature` SET `MovementType`=2 WHERE `id`=32630;
-- Guid for inserts
SET @NEXT := 134704; -- need 129
-- Correct Phasing/Quest relation for the Argent Vanguard,Crusader's Pinnacle,Scourgeholme,The Breach,Valley of Echoes and Pit of Fiends (I didn't use Phase IV spell id: 57675 since it sets phase to one,I don't see the point since that's the default phase)
-- The spells are Argent Vanguard Chapter I (id: 57673),Argent Vanguard Chapter II (id: 57569) and Argent Vanguard Chapter III (id: 57674)
DELETE FROM `spell_area` WHERE `spell` IN (57673,57569,57674);
INSERT INTO `spell_area` (`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`) VALUES
(57673,4501,0,0,13070,0,0,2,1),
(57673,4504,0,0,13070,0,0,2,1),
(57673,4505,0,0,13086,0,0,2,1),
(57673,4506,0,0,13086,0,0,2,1),
(57673,4580,0,0,13086,0,0,2,1),
(57673,4593,0,0,13086,0,0,2,1),
(57569,4501,13070,0,13086,0,0,2,1),
(57569,4504,13070,0,13086,0,0,2,1),
(57674,4501,13086,0,13141,0,0,2,1),
(57674,4504,13086,0,13141,0,0,2,1),
(57674,4505,13086,0,13141,0,0,2,1),
(57674,4506,13086,0,13141,0,0,2,1),
(57674,4593,13086,0,13141,0,0,2,1),
(57674,4580,13086,0,13141,0,0,2,1);
-- Phase for objects in Crusader's Pinnacle (Scourge controlled)
UPDATE `gameobject` SET `phaseMask`=194 WHERE `id` IN (192936,192938,192953,192954,192955,192956,192957,192982,192995,193003,192958,192959,192960,192961,192962,192963,192964,192965,192966,192967,192968,192969,192970,192971,192972,192973,192974,192975,192976,192977,192978,192979,192980,192981,192983,192985,192986,192987,192988,192989,192990,192991,192994,192934,192935,192992,192993,193002,192997,192996,192999,193000,193001,192936,192937);
-- Phase for a few objects in Scourgeholme
UPDATE `gameobject` SET `phaseMask`=195 WHERE `id` IN (192576,192577,192575,192579,192578);
-- Misc Objects in Argent Vanguard to be visible in all phases
UPDATE `gameobject` SET `phaseMask`=195 WHERE `guid` IN (62021,62027,62356,62359,62353,62071,62061);
-- Duplicates of the objects in Argent Vanguard,no need to have 2 of each if they have no special interaction with a particular phase
DELETE FROM `gameobject` WHERE `guid` IN (100101,100484,100097,100433,100098,100432,100104,100485);
-- Phase for the walls and towers for all phases except during "The last line of defense"
UPDATE `gameobject` SET `phaseMask`=131 WHERE `guid` IN (61089,61066,61027,61056,61004,60999,60996,60976);
-- Phase for walls during "The last line of defense",they need a separate object here because they interact directly with the phase
UPDATE `gameobject` SET `phaseMask`=64 WHERE `guid` IN (100441,100440,100438,100439,100437,100436,100435,100434);
-- Phase for objects in The Breach after "The last line of defense"
UPDATE `gameobject` SET `phaseMask`=129 WHERE `id` IN (192797,192798,192799,192800,192801,192802,192803,192804,192805);
-- Phase for objects in The Breach before "The last line of defense"
UPDATE `gameobject` SET `phaseMask`=66 WHERE `id` IN (192161,192162,192166,192806,192807,192808,192809,192810,192811,192812,192813,192814,192815,192816,192817); 
-- Phase for NPCs in Argent Vanguard that should be in all phases (except during "The last line of defense)
UPDATE `creature` SET `phaseMask`=131 WHERE `guid` IN (121664,124618,124483,121684,121671,121696,121668,121693,121669,121677,121697,121666,121662,121678,121670,121680,121685,121683,121665,121682,121686,121663,121695,124527,124491,124661,123618,124497,124323,124340,124332,207301,207298,207296,207297,207299,207300,124442);
-- Same as with the objects,delete duplicate creatures that have no direct interaction with a particular phase,a single creature can fulfill that role.
DELETE FROM `creature` WHERE `guid` IN (207239,207264,207260,207251,207245,207256,207242,207254,207243,207246,207257,207241,207237,207247,207244,207248,207252,207250,207240,207249,207253,207238,207255,207263,207261,207265,207258,207262,207259);
-- Phase for NPCs only present until "The last line of defense"
UPDATE `creature` SET `phaseMask`=2 WHERE `guid` IN (207229,207228,207234,207233,207232,207235,207236,207227,207222,207230,207231,207223,202409,207225,207226);
-- Phase for Siegemaster Fezzik (He is the only one present up until and during "the last line of defense")
UPDATE `creature` SET `phaseMask`=66 WHERE `guid`=207224;
-- Phase for NPCs in the Valley of Echoes before "The last line of defense"
UPDATE `creature` SET `phaseMask`=2 WHERE `guid` IN (207290,207289,207288,207294,207293,207295,207284,207282,207286,207285,207287,207291,207283,207281,207292,207280);
-- Phase for Creatures on the Valley of Echoes before "The last line of defense"
UPDATE `creature` SET `phaseMask`=2 WHERE `id` IN (30206,30273);
-- Phase for mobs and NPCs in the Valley of Echoes and The breach after "The last line of defense"
UPDATE `creature` SET `phaseMask`=129 WHERE `guid` IN (124320,124302,124297,124317,124338,124333,124329,124341,124301,124307,124319,124339,124337,124324,124298,124308,124303,124302,124320,124330,124326,124309,124335,124318,124299,124311,124310,124325,124327,124300,124315,124314,124313,124312,124321,124336,124334,124331,124328,121679,121667,121681,121694,121700,121692,203393,121698,121672);
-- Set correct faction for Crusade Architect Silas
UPDATE `creature_template` SET `faction_H`=2070,`faction_A`=2070 WHERE `entry`=30686;
-- Mount for Highlord Tirion Fordring in Argent Vanguard after "the last line of defense"
DELETE FROM `creature_template_addon` WHERE `entry`=30677;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(30677,0,2325,0,0,0,NULL);
-- Phase for Father Gustav in Valley of Echoes after "the last line of defense"
UPDATE `creature` SET `phaseMask`=128 WHERE `id`=30683;
-- Lich King flag,non attackable unless he engages first
UPDATE `creature_template` SET `unit_flags`=256 WHERE `entry`=30443;
-- Set right exp value and level for Underking Talonox
UPDATE `creature_template` SET `exp`=2,`minlevel`=79,`maxlevel`=79 WHERE `entry`=30830;
-- Set the right phase for the already existing creatures (Including Captured crusaders)
UPDATE `creature` SET `phaseMask`=1 WHERE `id` IN (31037,31039,31043,31040);
UPDATE `creature` SET `phaseMask`=2 WHERE `id` IN (30544,30407);
-- Set flag extra to 64 for creatures in Scourgeholme during the first phase,they should not give XP.
UPDATE `creature_template` SET `flags_extra`=64 WHERE `entry` IN (30544,30407);
-- Set right inhabit type for the second phase version of Wrathstrike Gargoyle (They should be able to fly)
UPDATE `creature_template` SET `InhabitType`=7 WHERE `entry`=30482;
-- Set right faction for previously not spawned creatures
UPDATE `creature_template` SET `faction_H`=2068,`faction_A`=2068 WHERE `entry` IN (30541,30203,30543,30202,30482,30830,30831,30829,30443);
-- ----------------
-- -- Spawnfixes -- 
-- ----------------
-- Add the right mobs for each phase,they have a different id for each phase. Some mobs are only on 2 phases,not all 3 (Reanimated crusader and Gargoyles). They have the exact same points as their already spawned counterparts which belong to the final phase. 
-- NOTE: The ones with a currentwaypoint set have it simply because that's the waypoint the of their already spawned counterpart. I use it simply as a guideline for me to create the paths for all these new ones and its changed back to 0 after I set the new paths with creature_addon later in this SQL.
DELETE FROM `creature` WHERE `id` IN (30596,30686,30714,30677,30443,30829,30830,30831,30203,30543,30202,30541,30482,30333,30205);
DELETE FROM `creature` WHERE `guid` BETWEEN @NEXT+83 and @NEXT+89 AND `id`=30544;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`MovementType`) VALUES
-- Add missing creatures (Highlord Tirion Fordring in Argent Vanguard after "the last line of defense",The Ebon Watcher,Crusade Architect Silas and Crusade Engineer Spitzpatrick in Valley of Echoes after "the last line of defense")
(@NEXT,30596,571,1,128,6376.657227,239.053055,396.047028,4.8044,300,0,0,0),
(@NEXT+1,30686,571,1,128,6370.632324,232.238022,396.046051,1.352186,300,0,0,0),
(@NEXT+2,30714,571,1,128,6371.689941,239.699265,396.899902,4.792617,300,0,0,0),
(@NEXT+3,30677,571,1,128,6259.583496,50.420799,388.508667,0.846391,300,0,0,0),
-- Add missing unique creatures in Scorugeholme (The Lich king,Salranax the Flesh Render,High Priest Yath'amon and Underking Talonox -- One for each phase they are in,since they are hostile mobs)
(@NEXT+4,30443,571,1,2,6697.528809,583.609131,428.332916,4.108414,300,0,0,0),
(@NEXT+5,30829,571,1,2,6838.717285,594.347046,426.230652,4.020655,300,0,0,0),
(@NEXT+6,30831,571,1,2,6869.587891,422.763397,470.783386,1.087875,300,0,0,0),
(@NEXT+7,30830,571,1,2,7211.243652,667.650146,488.187103,2.689305,300,0,0,0),
(@NEXT+8,30829,571,1,128,6838.717285,594.347046,426.230652,4.020655,300,0,0,0),
(@NEXT+9,30831,571,1,128,6869.587891,422.763397,470.783386,1.087875,300,0,0,0),
(@NEXT+10,30830,571,1,128,7211.243652,667.650146,488.187103,2.689305,300,0,0,0),
-- Forgotten Depths High Priest
(@NEXT+11,30203,571,1,2,6879.92,493.899,467.957,1.67552,300,0,0,0),
(@NEXT+12,30203,571,1,2,6916.07,467.629,468.799,0.977384,300,0,0,0),
(@NEXT+13,30203,571,1,2,6858.02,453.902,471.767,4.7822,300,0,0,0),
(@NEXT+14,30203,571,1,2,6835.59,414.643,471.77,0.802851,300,0,0,0),
(@NEXT+15,30203,571,1,2,6903.22,430.778,471.764,3.56047,300,0,0,0),
(@NEXT+16,30203,571,1,2,6881.51,391.672,471.771,1.93731,300,0,0,0),
(@NEXT+17,30203,571,1,2,6877.89,665.768,425.523,1.29154,300,0,0,0),
(@NEXT+18,30203,571,1,2,6553.27,579.069,419.185,3.90954,300,0,0,0),
(@NEXT+19,30203,571,1,2,6560.22,584.094,419.185,0.645772,300,0,0,0),
(@NEXT+20,30203,571,1,2,6747.13,456.848,419.284,1.39626,300,0,0,0),
(@NEXT+21,30203,571,1,2,7062.78,521.156,526.362,5.75959,300,0,0,0),
(@NEXT+22,30203,571,1,2,7068.11,477.927,530.313,0.558505,300,0,0,0),
(@NEXT+23,30203,571,1,2,6689.02,570.998,424.525,3.9968,300,0,0,0),
(@NEXT+24,30203,571,1,2,6745.99,449.016,419.284,4.4855,300,0,0,0),
(@NEXT+25,30203,571,1,2,6809.11,843.341,381.335,3.23154,300,0,1217160,2),
(@NEXT+26,30203,571,1,2,6901.58,727.055,420.546,3.24233,300,0,1217170,2),
(@NEXT+27,30203,571,1,2,7002.27,602.799,476.138,5.93303,300,0,1217200,2),
(@NEXT+28,30543,571,1,128,6879.92,493.899,467.957,1.67552,300,0,0,0),
(@NEXT+29,30543,571,1,128,6916.07,467.629,468.799,0.977384,300,0,0,0),
(@NEXT+30,30543,571,1,128,6858.02,453.902,471.767,4.7822,300,0,0,0),
(@NEXT+31,30543,571,1,128,6835.59,414.643,471.77,0.802851,300,0,0,0),
(@NEXT+32,30543,571,1,128,6903.22,430.778,471.764,3.56047,300,0,0,0),
(@NEXT+33,30543,571,1,128,6881.51,391.672,471.771,1.93731,300,0,0,0),
(@NEXT+34,30543,571,1,128,6877.89,665.768,425.523,1.29154,300,0,0,0),
(@NEXT+35,30543,571,1,128,6553.27,579.069,419.185,3.90954,300,0,0,0),
(@NEXT+36,30543,571,1,128,6560.22,584.094,419.185,0.645772,300,0,0,0),
(@NEXT+37,30543,571,1,128,6747.13,456.848,419.284,1.39626,300,0,0,0),
(@NEXT+38,30543,571,1,128,7062.78,521.156,526.362,5.75959,300,0,0,0),
(@NEXT+39,30543,571,1,128,7068.11,477.927,530.313,0.558505,300,0,0,0),
(@NEXT+40,30543,571,1,128,6689.02,570.998,424.525,3.9968,300,0,0,0),
(@NEXT+41,30543,571,1,128,6745.99,449.016,419.284,4.4855,300,0,0,0),
(@NEXT+42,30543,571,1,128,6809.11,843.341,381.335,3.23154,300,0,1217160,2),
(@NEXT+43,30543,571,1,128,6901.58,727.055,420.546,3.24233,300,0,1217170,2),
(@NEXT+44,30543,571,1,128,7002.27,602.799,476.138,5.93303,300,0,1217200,2),
-- Reanimated Crusader
(@NEXT+45,30202,571,1,128,6770.55,386.311,421.153,2.7317,300,5,0,1),
(@NEXT+46,30202,571,1,128,6655.04,328.894,442.276,0.929563,300,5,0,1),
(@NEXT+47,30202,571,1,128,6448.62,618.154,432.265,2.1122,300,5,0,1),
(@NEXT+48,30202,571,1,128,6471.01,562.99,438.4,3.5549,300,5,0,1),
(@NEXT+49,30202,571,1,128,6448.03,608.829,433.982,1.32629,300,5,0,1),
(@NEXT+50,30202,571,1,128,6526.88,512.588,412.274,2.77181,300,5,0,1),
(@NEXT+51,30202,571,1,128,6513.35,523.34,415.136,0.501217,300,5,0,1),
(@NEXT+52,30202,571,1,128,6556.12,636.946,408.191,1.22528,300,5,0,1),
(@NEXT+53,30202,571,1,128,6697.52,476.907,401.588,2.99677,300,5,0,1),
(@NEXT+54,30202,571,1,128,6704.82,441.489,406.499,3.35221,300,5,0,1),
(@NEXT+55,30202,571,1,128,6723.74,417.997,412.953,4.18409,300,5,0,1),
(@NEXT+56,30202,571,1,128,6644.93,422.78,401.853,3.19711,300,5,0,1),
(@NEXT+57,30202,571,1,128,6654.72,492.468,398.206,2.81552,300,5,0,1),
(@NEXT+58,30202,571,1,128,6630.65,458.047,398.995,5.84132,300,5,0,1),
(@NEXT+59,30202,571,1,128,6661.41,584.323,408.676,0.785398,300,5,0,1),
(@NEXT+60,30202,571,1,128,6518.07,616.422,410.051,2.1325,300,5,0,1),
(@NEXT+61,30202,571,1,128,6514.78,664.2,399.383,0.291176,300,5,0,1),
(@NEXT+62,30202,571,1,128,6563.32,539.29,404.559,0.919091,300,5,0,1),
(@NEXT+63,30202,571,1,128,6617.92,519.797,396.795,1.55615,300,5,0,1),
(@NEXT+64,30202,571,1,128,6643.92,633.926,404.904,1.84373,300,5,0,1),
(@NEXT+65,30202,571,1,128,6592.97,620.213,408.135,1.80125,300,5,0,1),
(@NEXT+66,30202,571,1,128,6707.83,535.834,405.493,5.84095,300,5,0,1),
(@NEXT+67,30202,571,1,128,6758.07,512.831,410.903,2.78648,300,5,0,1),
(@NEXT+68,30202,571,1,128,6764.6,535.115,415.201,3.48219,300,5,0,1),
(@NEXT+69,30202,571,1,128,6669.68,527.603,401.525,5.13205,300,5,0,1),
(@NEXT+70,30202,571,1,128,6613,590.876,403.789,2.88047,300,5,0,1),
(@NEXT+71,30202,571,1,128,6545.45,535.57,407.359,1.50529,300,5,0,1),
(@NEXT+72,30202,571,1,128,6623.12,684.658,405.968,4.4761,300,5,0,1),
(@NEXT+73,30202,571,1,128,6584.43,679.969,406.644,2.11574,300,5,0,1),
(@NEXT+74,30202,571,1,128,6576.55,460.06,408.104,0.763302,300,5,0,1),
(@NEXT+75,30202,571,1,128,6606.58,489.339,398.158,5.60417,300,5,0,1),
(@NEXT+76,30202,571,1,128,6563.66,505.381,403.489,0.430917,300,5,0,1),
(@NEXT+77,30202,571,1,128,6579.71,401.572,416.112,6.10437,300,5,0,1),
(@NEXT+78,30202,571,1,128,6632.51,382.456,412.855,5.91518,300,5,0,1),
(@NEXT+79,30202,571,1,128,6721.48,346.299,424.582,5.91108,300,5,0,1),
(@NEXT+80,30202,571,1,128,6657.63,385.761,411.832,2.05191,300,5,0,1),
(@NEXT+81,30202,571,1,128,6709.57,384.33,414.698,3.57468,300,5,0,1),
(@NEXT+82,30202,571,1,128,6722.58,492.852,405.603,5.6035,300,5,0,1),
-- Forgotten Depths Underking
(@NEXT+83,30544,571,1,2,6962.62,734.955,445.296,4.4855,300,0,0,0),
(@NEXT+84,30544,571,1,2,7056.29,572.491,497.073,2.23402,300,0,0,0),
(@NEXT+85,30544,571,1,2,7005.75,714.752,468.614,3.07178,300,0,0,0),
(@NEXT+86,30544,571,1,2,6809.11,843.341,381.335,5.7554,300,0,1217280,0),
(@NEXT+87,30544,571,1,2,6437.59,604.262,439.155,0.369627,300,0,1217310,2),
(@NEXT+89,30544,571,1,2,7002.27,602.799,476.138,5.7192,300,0,1217350,0),
(@NEXT+90,30541,571,1,128,6962.62,734.955,445.296,4.4855,300,0,0,0),
(@NEXT+91,30541,571,1,128,7056.29,572.491,497.073,2.23402,300,0,0,0),
(@NEXT+92,30541,571,1,128,7005.75,714.752,468.614,3.07178,300,0,0,0),
(@NEXT+93,30541,571,1,128,6760.42,515.039,411.837,3.66099,300,0,1217270,2),
(@NEXT+94,30541,571,1,128,6809.11,843.341,381.335,5.7554,300,0,1217280,0),
(@NEXT+95,30541,571,1,128,7002.27,602.799,476.138,5.7192,300,0,1217350,0),
(@NEXT+96,30541,571,1,128,6769.89,628.623,425.97,-1.65443,300,0,1217290,2),
(@NEXT+97,30541,571,1,128,6697.87,429.598,406.569,1.77104,300,0,1217300,2),
(@NEXT+98,30541,571,1,128,6437.59,604.262,439.155,0.369627,300,0,1217310,2),
(@NEXT+99,30541,571,1,128,6622.62,585.661,402.875,5.61246,300,0,1217320,2),
(@NEXT+100,30541,571,1,128,6710.23,685.938,408.296,3.24837,300,0,1217330,2),
(@NEXT+101,30541,571,1,128,6575.6,465.094,407.446,2.69257,300,0,1217360,2),
(@NEXT+102,30541,571,1,128,6641.92,396.595,408.673,2.55359,300,0,1217370,2),
-- Wrathstrike Gargoyle
(@NEXT+103,30482,571,1,128,7059.52,455.611,581.574,3.35148,300,0,1217550,2),
(@NEXT+104,30482,571,1,128,7009.05,544.408,610.468,3.23607,300,0,1217540,2),
(@NEXT+105,30482,571,1,128,6804.5,702.568,436.191,0.0303077,300,0,1217530,2),
(@NEXT+106,30482,571,1,128,6799.31,642.302,459.819,3.88908,300,0,1217520,2),
(@NEXT+107,30482,571,1,128,6753.66,410.408,446.625,3.19529,300,0,1217510,2),
(@NEXT+108,30482,571,1,128,6597.14,566.743,445.037,1.40898,300,0,1217500,2),
(@NEXT+109,30482,571,1,128,6596.2,564.031,445.111,4.27718,300,0,1217490,2),
(@NEXT+110,30482,571,1,128,6559.29,413.281,462.263,6.13325,300,0,1217480,2),
-- Add missing mobs in the Valley of Echoes during the first phase. The DB has no spawn info on these ones so I added them in a logical number and places,feel free to skip this part if its not "correct" enough. (If anyone has actual sniffs for the location of these mobs feel free to share)
-- Forgotten Depths Slayer for first phase (id:30333,not the same one that should appear during "The last line of defense)
(@NEXT+111,30333,571,1,2,6150.518066,147.111313,372.771057,0.197990,300,7,0,1),
(@NEXT+112,30333,571,1,2,6212.446777,130.204849,377.827118,0.657450,300,7,0,1),
(@NEXT+113,30333,571,1,2,6110.951660,83.364746,371.154419,1.230786,300,7,0,1),
(@NEXT+114,30333,571,1,2,6047.241699,178.537430,353.744293,5.322711,300,7,0,1),
(@NEXT+115,30333,571,1,2,6182.750000,199.942261,380.134705,4.996765,300,7,0,1),
(@NEXT+116,30333,571,1,2,6219.042480,236.113785,388.062317,5.134206,300,7,0,1),
(@NEXT+117,30333,571,1,2,6421.106445,188.232880,395.621826,2.247868,300,7,0,1),
(@NEXT+118,30333,571,1,2,6351.036621,91.049683,392.077698,1.969049,300,7,0,1),
(@NEXT+119,30333,571,1,2,6264.502930,147.837006,383.335876,2.346035,300,7,0,1),
-- Forgotten Depths Acolyte
(@NEXT+120,30205,571,1,2,6278.386230,199.642899,385.989258,5.377527,300,0,0,0),
(@NEXT+121,30205,571,1,2,6229.345703,133.398743,379.961639,3.759608,300,0,0,0),
(@NEXT+122,30205,571,1,2,6087.062012,136.313293,367.117310,4.827752,300,0,0,0),
(@NEXT+123,30205,571,1,2,6127.606445,172.50610,370.652832,6.190416,300,0,0,0),
(@NEXT+124,30205,571,1,2,6149.881836,220.209808,379.919403,5.361032,300,0,0,0),
(@NEXT+125,30205,571,1,2,6422.211426,148.303436,395.890137,1.964183,300,0,0,0),
(@NEXT+126,30205,571,1,2,6375.815918,81.636124,394.968140,2.337249,300,0,0,0),
(@NEXT+127,30205,571,1,2,6333.330566,29.062647,389.581329,1.508653,300,0,0,0),
(@NEXT+128,30205,571,1,2,6130.472656,172.082047,370.962646,5.695776,300,0,0,0);
-- Delete forgotten data from creature_addon
DELETE FROM `creature_addon` WHERE `guid` IN (207262,207257,207254,207251,207246,207243,207241,207237);
-- The following are the paths for the newly added mobs that have the same spawn spot as a mob (different phase and id) that already had a path. The paths are exactly the same as their already spawned counterparts.
-- Pathing for newly added Wrathstrike Gargoyles
-- -----------------------------------------------------------------------------------------------------------
SET @NEXT := 134704;
-- Wrathstrike Gargoyle 1
SET @NPC = @NEXT+103;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`) VALUES (@NPC,@PATH);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7060.05,455.727,581.492,0,0,0,100,0),
(@PATH,2,6982.99,465.858,581.492,0,0,0,100,0),
(@PATH,3,6963.94,516.342,581.492,0,0,0,100,0),
(@PATH,4,7012.51,555.944,581.492,0,0,0,100,0),
(@PATH,5,7062.92,517.784,566.464,0,0,0,100,0),
(@PATH,6,7074.5,487.171,566.464,0,0,0,100,0);
UPDATE `creature` SET `currentwaypoint`=0 WHERE `id`=30482 AND `currentwaypoint`=1217550;
-- -----------------------------------------------------------------------------------------------------------
-- Wrathstrike Gargoyle 2
SET @NPC = @NEXT+104;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`) VALUES (@NPC,@PATH);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,6975.12,457.238,608.122,0,0,0,100,0),
(@PATH,2,6994.13,442.679,608.122,0,0,0,100,0),
(@PATH,3,7024.58,437.239,608.122,0,0,0,100,0),
(@PATH,4,7055.78,456.622,580.705,0,0,0,100,0),
(@PATH,5,7069.78,488.277,580.705,0,0,0,100,0),
(@PATH,6,7057.18,540.235,608.205,0,0,0,100,0),
(@PATH,7,6978.62,537.405,608.205,0,0,0,100,0),
(@PATH,8,6960.95,489.864,595.233,0,0,0,100,0);
UPDATE `creature` SET `currentwaypoint`=0 WHERE `id`=30482 AND `currentwaypoint`=1217540;
-- -----------------------------------------------------------------------------------------------------------
-- Wrathstrike Gargoyle 3
SET @NPC = @NEXT+105;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`) VALUES (@NPC,@PATH);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,6817.71,701.731,436.81,0,0,0,100,0),
(@PATH,2,6839.81,671.33,438.476,0,0,0,100,0),
(@PATH,3,6771.48,625.298,444.032,0,0,0,100,0),
(@PATH,4,6729.31,607.063,451.504,0,0,0,100,0),
(@PATH,5,6689.26,569.483,444.032,0,0,0,100,0),
(@PATH,6,6664.17,580.683,449.976,0,0,0,100,0),
(@PATH,7,6657.52,638.465,440.893,0,0,0,100,0),
(@PATH,8,6664.19,665.048,444.032,0,0,0,100,0),
(@PATH,9,6735.33,692.836,433.938,0,0,0,100,0),
(@PATH,10,6741.25,694.33,433.56,0,0,0,100,0);
UPDATE `creature` SET `currentwaypoint`=0 WHERE `id`=30482 AND `currentwaypoint`=1217530;
-- -----------------------------------------------------------------------------------------------------------
-- Wrathstrike Gargoyle 4
SET @NPC = @NEXT+106;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`) VALUES (@NPC,@PATH);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,6808.92,649.929,459.327,0,0,0,100,0),
(@PATH,2,6779.63,606.717,465.077,0,0,0,100,0),
(@PATH,3,6799.14,541.206,474.66,0,0,0,100,0),
(@PATH,4,6863.37,520.467,465.077,0,0,0,100,0),
(@PATH,5,6900.8,554.799,459.216,0,0,0,100,0),
(@PATH,6,6904.96,624.433,471.549,0,0,0,100,0),
(@PATH,7,6860.9,661.477,465.077,0,0,0,100,0);
UPDATE `creature` SET `currentwaypoint`=0 WHERE `id`=30482 AND `currentwaypoint`=1217520;
-- -----------------------------------------------------------------------------------------------------------
-- Wrathstrike Gargoyle 5
SET @NPC = @NEXT+107;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`) VALUES (@NPC,@PATH);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,6764.29,413.94,446.625,0,0,0,100,0),
(@PATH,2,6727.13,417.659,446.625,0,0,0,100,0),
(@PATH,3,6709.2,445.43,446.625,0,0,0,100,0),
(@PATH,4,6714.21,476.942,446.625,0,0,0,100,0),
(@PATH,5,6760.44,491.312,446.625,0,0,0,100,0),
(@PATH,6,6786.47,463.163,446.625,0,0,0,100,0);
UPDATE `creature` SET `currentwaypoint`=0 WHERE `id`=30482 AND `currentwaypoint`=1217510;
-- -----------------------------------------------------------------------------------------------------------
-- Wrathstrike Gargoyle 6
SET @NPC = @NEXT+108;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`) VALUES (@NPC,@PATH);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,6589.56,608.719,445.037,0,0,0,100,0),
(@PATH,2,6536.49,613.397,445.037,0,0,0,100,0),
(@PATH,3,6515.31,571.263,445.037,0,0,0,100,0),
(@PATH,4,6540.83,538.391,445.037,0,0,0,100,0),
(@PATH,5,6561.1,543.055,445.037,0,0,0,100,0),
(@PATH,6,6595.09,559.099,445.037,0,0,0,100,0);
UPDATE `creature` SET `currentwaypoint`=0 WHERE `id`=30482 AND `currentwaypoint`=1217500;
-- -----------------------------------------------------------------------------------------------------------
-- Wrathstrike Gargoyle 7
SET @NPC = @NEXT+109;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`) VALUES (@NPC,@PATH);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,6661.58,545.496,432.795,0,0,0,100,0),
(@PATH,2,6659.48,589.326,447.184,0,0,0,100,0),
(@PATH,3,6628.78,594.459,446.434,0,0,0,100,0),
(@PATH,4,6613.69,584.967,446.434,0,0,0,100,0),
(@PATH,5,6595.45,562.222,444.795,0,0,0,100,0),
(@PATH,6,6595.77,535.16,436.934,0,0,0,100,0),
(@PATH,7,6631,528.616,450.823,0,0,0,100,0);
UPDATE `creature` SET `currentwaypoint`=0 WHERE `id`=30482 AND `currentwaypoint`=1217490;
-- -----------------------------------------------------------------------------------------------------------
-- Wrathstrike Gargoyle 8
SET @NPC = @NEXT+110;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`) VALUES (@NPC,@PATH);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,6585.6,408.848,446.514,0,0,0,100,0),
(@PATH,2,6607.57,400.701,444.745,0,0,0,100,0),
(@PATH,3,6647.89,401.573,444.745,0,0,0,100,0),
(@PATH,4,6667.63,414.847,433.912,0,0,0,100,0),
(@PATH,5,6648.87,462.506,444.745,0,0,0,100,0),
(@PATH,6,6592.11,478.371,444.745,0,0,0,100,0),
(@PATH,7,6501.26,474.703,444.745,0,0,0,100,0),
(@PATH,8,6484.09,430.145,485.097,0,0,0,100,0),
(@PATH,9,6519.88,419.711,485.097,0,0,0,100,0);
UPDATE `creature` SET `currentwaypoint`=0 WHERE `id`=30482 AND `currentwaypoint`=1217480;
-- -----------------------------------------------------------------------------------------------------------
-- Pathing for newly added Forgotten Depths Underkings
-- -----------------------------------------------------------------------------------------------------------
-- Forgotten Depths Underking 1
SET @NPC = @NEXT+96;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`) VALUES (@NPC,@PATH);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,6788.09,633.101,426.095,0,0,0,100,0),
(@PATH,2,6789.98,619.743,423.47,0,0,0,100,0),
(@PATH,3,6766.65,606.497,423.42,0,0,0,100,0),
(@PATH,4,6740.19,597.458,425.39,0,0,0,100,0),
(@PATH,5,6725.25,595.632,423.432,0,0,0,100,0),
(@PATH,6,6713.96,602.526,423.595,0,0,0,100,0),
(@PATH,7,6720.27,613.862,423.47,0,0,0,100,0),
(@PATH,8,6736.25,614.921,423.545,0,0,0,100,0),
(@PATH,9,6769.89,628.623,425.97,0,0,0,100,0);
UPDATE `creature` SET `currentwaypoint`=0 WHERE `id`=30541 AND `currentwaypoint`=1217290;
-- -----------------------------------------------------------------------------------------------------------
-- Forgotten Depths Underking 2
SET @NPC = @NEXT+97;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`) VALUES (@NPC,@PATH);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,6698.5,458.598,404.586,0,0,0,100,0),
(@PATH,2,6695.69,473.044,401.838,0,0,0,100,0),
(@PATH,3,6665,494.007,397.863,0,0,0,100,0),
(@PATH,4,6621.27,520.385,397.423,0,0,0,100,0),
(@PATH,5,6601.79,552.183,399.092,0,0,0,100,0),
(@PATH,6,6579.75,536.627,401.438,0,0,0,100,0),
(@PATH,7,6599.6,508.629,398.578,0,0,0,100,0),
(@PATH,8,6627.41,480.195,397.408,0,0,0,100,0),
(@PATH,9,6643.31,442.918,399.225,0,0,0,100,0),
(@PATH,10,6674.23,416.566,405.944,0,0,0,100,0),
(@PATH,11,6697.87,429.598,406.569,0,0,0,100,0);
UPDATE `creature` SET `currentwaypoint`=0 WHERE `id`=30541 AND `currentwaypoint`=1217300;
-- -----------------------------------------------------------------------------------------------------------
-- Forgotten Depths Underking 3-A
SET @NPC = @NEXT+98;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`) VALUES (@NPC,@PATH);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,6395.82,618.184,452.633,0,0,0,100,0),
(@PATH,2,6358.26,637.18,462.167,0,0,0,100,0),
(@PATH,3,6370.71,666.535,453.289,0,0,0,100,0),
(@PATH,4,6375.45,676.189,445.42,0,0,0,100,0),
(@PATH,5,6407.42,688.589,434.416,0,0,0,100,0),
(@PATH,6,6429.66,650.562,435.434,0,0,0,100,0),
(@PATH,7,6461.86,627.093,426.405,0,0,0,100,0),
(@PATH,8,6482.61,623.854,419.051,0,0,0,100,0),
(@PATH,9,6486.97,594.615,420.488,0,0,0,100,0),
(@PATH,10,6457.97,595.352,432.948,0,0,0,100,0),
(@PATH,11,6437.59,604.262,439.155,0,0,0,100,0);
UPDATE `creature` SET `currentwaypoint`=0 WHERE `id`=30541 AND `currentwaypoint`=1217310;
-- -----------------------------------------------------------------------------------------------------------
-- Forgotten Depths Underking 3-B
SET @NPC = @Next+87;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`) VALUES (@NPC,@PATH);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,6395.82,618.184,452.633,0,0,0,100,0),
(@PATH,2,6358.26,637.18,462.167,0,0,0,100,0),
(@PATH,3,6370.71,666.535,453.289,0,0,0,100,0),
(@PATH,4,6375.45,676.189,445.42,0,0,0,100,0),
(@PATH,5,6407.42,688.589,434.416,0,0,0,100,0),
(@PATH,6,6429.66,650.562,435.434,0,0,0,100,0),
(@PATH,7,6461.86,627.093,426.405,0,0,0,100,0),
(@PATH,8,6482.61,623.854,419.051,0,0,0,100,0),
(@PATH,9,6486.97,594.615,420.488,0,0,0,100,0),
(@PATH,10,6457.97,595.352,432.948,0,0,0,100,0),
(@PATH,11,6437.59,604.262,439.155,0,0,0,100,0);
UPDATE `creature` SET `currentwaypoint`=0 WHERE `id`=30544 AND `currentwaypoint`=1217310;
-- -----------------------------------------------------------------------------------------------------------
-- Forgotten Depths Underking 4
SET @NPC = @NEXT+99;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`) VALUES (@NPC,@PATH);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,6618.91,606.085,403.839,0,0,0,100,0),
(@PATH,2,6608.22,599.539,403.875,0,0,0,100,0),
(@PATH,3,6613.37,574.047,401.125,0,0,0,100,0),
(@PATH,4,6638.76,543.87,399.563,0,0,0,100,0),
(@PATH,5,6667.59,521.002,401.025,0,0,0,100,0),
(@PATH,6,6697.97,501.482,400.775,0,0,0,100,0),
(@PATH,7,6711.98,522.746,404.353,0,0,0,100,0),
(@PATH,8,6702.31,534.57,405.75,0,0,0,100,0),
(@PATH,9,6679.62,541.533,402.209,0,0,0,100,0),
(@PATH,10,6660.61,557.771,404.938,0,0,0,100,0),
(@PATH,11,6639.28,577.426,402.927,0,0,0,100,0),
(@PATH,12,6622.62,585.661,402.875,0,0,0,100,0);
UPDATE `creature` SET `currentwaypoint`=0 WHERE `id`=30541 AND `currentwaypoint`=1217320;
-- -----------------------------------------------------------------------------------------------------------
-- Forgotten Depths Underking 5
SET @NPC = @NEXT+100;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`) VALUES (@NPC,@PATH);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,6746.43,700.445,407.534,0,0,0,100,0),
(@PATH,2,6767.77,702.447,407.514,0,0,0,100,0),
(@PATH,3,6780.88,716.948,410.264,0,0,0,100,0),
(@PATH,4,6761.32,729.055,407.659,0,0,0,100,0),
(@PATH,5,6723.36,725.67,406.194,0,0,0,100,0),
(@PATH,6,6706.1,712.006,411.069,0,0,0,100,0),
(@PATH,7,6687.8,701.721,412.302,0,0,0,100,0),
(@PATH,8,6668.08,685.327,409.231,0,0,0,100,0),
(@PATH,9,6660.25,674.05,407.891,0,0,0,100,0),
(@PATH,10,6667.72,662.234,407.017,0,0,0,100,0),
(@PATH,11,6710.23,685.938,408.296,0,0,0,100,0);
UPDATE `creature` SET `currentwaypoint`=0 WHERE `id`=30541 AND `currentwaypoint`=1217330;
-- -----------------------------------------------------------------------------------------------------------
-- Forgotten Depths Underking 6
SET @NPC = @NEXT+101;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`) VALUES (@NPC,@PATH);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,6552.96,457.401,412.93,0,0,0,100,0),
(@PATH,2,6551.69,432.508,416.436,0,0,0,100,0),
(@PATH,3,6568.85,415.311,415.444,0,0,0,100,0),
(@PATH,4,6572.9,410.44,415.694,0,0,0,100,0),
(@PATH,5,6577.95,406.559,415.694,0,0,0,100,0),
(@PATH,6,6591.15,393.959,416.312,0,0,0,100,0),
(@PATH,7,6624.85,389.377,412.855,0,0,0,100,0),
(@PATH,8,6642.71,398.137,408.048,0,0,0,100,0),
(@PATH,9,6642.51,414.137,403.978,0,0,0,100,0),
(@PATH,10,6613.73,435.694,403.495,0,0,0,100,0),
(@PATH,11,6598.72,453.969,403.196,0,0,0,100,0),
(@PATH,12,6575.6,465.094,407.446,0,0,0,100,0);
UPDATE `creature` SET `currentwaypoint`=0 WHERE `id`=30541 AND `currentwaypoint`=1217360;
-- -----------------------------------------------------------------------------------------------------------
-- Forgotten Depths Underking 7
SET @NPC = @NEXT+102;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`) VALUES (@NPC,@PATH);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,6665.69,385.118,411.923,0,0,0,100,0),
(@PATH,2,6688.12,372.121,414.309,0,0,0,100,0),
(@PATH,3,6681.71,337.864,421.782,0,0,0,100,0),
(@PATH,4,6711.15,330.663,422.912,0,0,0,100,0),
(@PATH,5,6729,353.407,426.957,0,0,0,100,0),
(@PATH,6,6759.39,371.963,426.169,0,0,0,100,0),
(@PATH,7,6742.83,378.436,419.544,0,0,0,100,0),
(@PATH,8,6710.78,380.507,415.679,0,0,0,100,0),
(@PATH,9,6685.82,397.148,408.809,0,0,0,100,0),
(@PATH,10,6655.42,406.866,405.478,0,0,0,100,0),
(@PATH,11,6641.92,396.595,408.673,0,0,0,100,0);
UPDATE `creature` SET `currentwaypoint`=0 WHERE `id`=30541 AND `currentwaypoint`=1217370;
-- -----------------------------------------------------------------------------------------------------------
-- Forgotten Depths Underking 8
SET @NPC = @NEXT+93;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`) VALUES (@NPC,@PATH);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,6751.58,521.709,409.087,0,0,0,100,0),
(@PATH,2,6775.59,535.639,418.22,0,0,0,100,0),
(@PATH,3,6790.69,546.924,424.095,0,0,0,100,0),
(@PATH,4,6797.82,545.099,424.47,0,0,0,100,0),
(@PATH,5,6787.22,530.424,421.059,0,0,0,100,0),
(@PATH,6,6760.42,515.039,411.837,0,0,0,100,0);
UPDATE `creature` SET `currentwaypoint`=0 WHERE `id`=30541 AND `currentwaypoint`=1217270;
-- -----------------------------------------------------------------------------------------------------------
-- Pathing for newly added Forgotten Depths High Priests. There are A and B versions because only the ones from the last phase were already spawned in DB and had their pathing. This didn't occur with the Forgotten Depths Underkings because their first phase counterpats were already spawned (at least the ones with paths,the rest weren't). 2 of them don't get the current waypoint removed yet because its used for a guideline for creature_formations later.
-- -----------------------------------------------------------------------------------------------------------
-- Forgotten Depths High Priest 1-A
SET @NPC = @NEXT+25;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`) VALUES (@NPC,@PATH);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,6845.23,827.966,390.654,0,0,0,100,0),
(@PATH,2,6869.87,814.437,394.231,0,0,0,100,0),
(@PATH,3,6885.91,795.247,398.76,0,0,0,100,0),
(@PATH,4,6889.42,776.747,410.135,0,0,0,100,0),
(@PATH,5,6887.17,765.483,417.106,0,0,0,100,0),
(@PATH,6,6916.54,751.385,415.552,0,0,0,100,0),
(@PATH,7,6922.71,770.234,412.379,0,0,0,100,0),
(@PATH,8,6936.68,795.657,409.292,0,0,0,100,0),
(@PATH,9,6946.95,821.291,405.551,0,0,0,100,0),
(@PATH,10,6940.67,819.911,406.551,0,0,0,100,0),
(@PATH,11,6918.09,776.126,411.879,0,0,0,100,0),
(@PATH,12,6903.68,745.868,416.802,0,0,0,100,0),
(@PATH,13,6892.57,727.713,418.396,0,0,0,100,0),
(@PATH,14,6855.19,723.309,414.328,0,0,0,100,0),
(@PATH,15,6810.95,714.736,409.567,0,0,0,100,0),
(@PATH,16,6778.23,711.31,408.139,0,0,0,100,0),
(@PATH,17,6749.77,708.742,407.159,0,0,0,100,0),
(@PATH,18,6724.11,709.65,409.563,0,0,0,100,0),
(@PATH,19,6720.02,695.631,407.296,0,0,0,100,0),
(@PATH,20,6730.44,731.649,404.319,0,0,0,100,0),
(@PATH,21,6727.1,774.371,385.328,0,0,0,100,0),
(@PATH,22,6722.82,816.964,376.654,0,0,0,100,0),
(@PATH,23,6733.84,849.984,376.012,0,0,0,100,0),
(@PATH,24,6753.25,867.14,376.46,0,0,0,100,0),
(@PATH,25,6786.71,850.127,379.337,0,0,0,100,0),
(@PATH,26,6817.16,840.912,382.21,0,0,0,100,0);
-- -----------------------------------------------------------------------------------------------------------
-- Forgotten Depths High Priest 1-B
SET @NPC = @NEXT+42;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`) VALUES (@NPC,@PATH);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,6845.23,827.966,390.654,0,0,0,100,0),
(@PATH,2,6869.87,814.437,394.231,0,0,0,100,0),
(@PATH,3,6885.91,795.247,398.76,0,0,0,100,0),
(@PATH,4,6889.42,776.747,410.135,0,0,0,100,0),
(@PATH,5,6887.17,765.483,417.106,0,0,0,100,0),
(@PATH,6,6916.54,751.385,415.552,0,0,0,100,0),
(@PATH,7,6922.71,770.234,412.379,0,0,0,100,0),
(@PATH,8,6936.68,795.657,409.292,0,0,0,100,0),
(@PATH,9,6946.95,821.291,405.551,0,0,0,100,0),
(@PATH,10,6940.67,819.911,406.551,0,0,0,100,0),
(@PATH,11,6918.09,776.126,411.879,0,0,0,100,0),
(@PATH,12,6903.68,745.868,416.802,0,0,0,100,0),
(@PATH,13,6892.57,727.713,418.396,0,0,0,100,0),
(@PATH,14,6855.19,723.309,414.328,0,0,0,100,0),
(@PATH,15,6810.95,714.736,409.567,0,0,0,100,0),
(@PATH,16,6778.23,711.31,408.139,0,0,0,100,0),
(@PATH,17,6749.77,708.742,407.159,0,0,0,100,0),
(@PATH,18,6724.11,709.65,409.563,0,0,0,100,0),
(@PATH,19,6720.02,695.631,407.296,0,0,0,100,0),
(@PATH,20,6730.44,731.649,404.319,0,0,0,100,0),
(@PATH,21,6727.1,774.371,385.328,0,0,0,100,0),
(@PATH,22,6722.82,816.964,376.654,0,0,0,100,0),
(@PATH,23,6733.84,849.984,376.012,0,0,0,100,0),
(@PATH,24,6753.25,867.14,376.46,0,0,0,100,0),
(@PATH,25,6786.71,850.127,379.337,0,0,0,100,0),
(@PATH,26,6817.16,840.912,382.21,0,0,0,100,0);
-- -----------------------------------------------------------------------------------------------------------
-- Forgotten Depths High Priest 2-A
SET @NPC = @NEXT+26;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`) VALUES (@NPC,@PATH);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,6877.06,727.294,415.646,0,0,0,100,0),
(@PATH,2,6840.86,720.367,413.578,0,0,0,100,0),
(@PATH,3,6804.06,715.519,409.067,0,0,0,100,0),
(@PATH,4,6775.7,711.378,408.139,0,0,0,100,0),
(@PATH,5,6775.7,706.114,408.014,0,0,0,100,0),
(@PATH,6,6806.69,710.446,409.317,0,0,0,100,0),
(@PATH,7,6840.86,715.128,414.078,0,0,0,100,0),
(@PATH,8,6885.64,719.654,417.771,0,0,0,100,0),
(@PATH,9,6901.58,727.055,420.546,0,0,0,100,0);
UPDATE `creature` SET `currentwaypoint`=0 WHERE `id`=30203 AND `currentwaypoint`=1217170;
-- -----------------------------------------------------------------------------------------------------------
-- Forgotten Depths High Priest 2-B
SET @NPC = @NEXT+43;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`) VALUES (@NPC,@PATH);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,6877.06,727.294,415.646,0,0,0,100,0),
(@PATH,2,6840.86,720.367,413.578,0,0,0,100,0),
(@PATH,3,6804.06,715.519,409.067,0,0,0,100,0),
(@PATH,4,6775.7,711.378,408.139,0,0,0,100,0),
(@PATH,5,6775.7,706.114,408.014,0,0,0,100,0),
(@PATH,6,6806.69,710.446,409.317,0,0,0,100,0),
(@PATH,7,6840.86,715.128,414.078,0,0,0,100,0),
(@PATH,8,6885.64,719.654,417.771,0,0,0,100,0),
(@PATH,9,6901.58,727.055,420.546,0,0,0,100,0);
UPDATE `creature` SET `currentwaypoint`=0 WHERE `id`=30543 AND `currentwaypoint`=1217170;
-- -----------------------------------------------------------------------------------------------------------
-- Forgotten Depths High Priest 3-A
SET @NPC = @NEXT+27;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`) VALUES (@NPC,@PATH);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7028.06,593.528,484.848,0,0,0,100,0),
(@PATH,2,7050.86,587.232,490.487,0,0,0,100,0),
(@PATH,3,7088.02,583.536,496.767,0,0,0,100,0),
(@PATH,4,7135.53,587.626,498.11,0,0,0,100,0),
(@PATH,5,7174.15,581.088,498.373,0,0,0,100,0),
(@PATH,6,7200,579.166,498.248,0,0,0,100,0),
(@PATH,7,7217.31,586.021,496.983,0,0,0,100,0),
(@PATH,8,7203.83,615.728,490.388,0,0,0,100,0),
(@PATH,9,7164.62,625.286,496.707,0,0,0,100,0),
(@PATH,10,7126.29,619.13,497.944,0,0,0,100,0),
(@PATH,11,7094.89,587.951,498.017,0,0,0,100,0),
(@PATH,12,7050.28,590.763,490.362,0,0,0,100,0),
(@PATH,13,7013.81,602.295,479.513,0,0,0,100,0),
(@PATH,14,6987.71,624.076,465.805,0,0,0,100,0),
(@PATH,15,6964.91,625.148,460.924,0,0,0,100,0),
(@PATH,16,6944.73,587.153,467.576,0,0,0,100,0),
(@PATH,17,6927.86,556.953,466.828,0,0,0,100,0),
(@PATH,18,6919.79,527.804,467.056,0,0,0,100,0),
(@PATH,19,6907.68,497.326,466.719,0,0,0,100,0),
(@PATH,20,6914.34,512.11,466.681,0,0,0,100,0),
(@PATH,21,6926.01,537.956,466.578,0,0,0,100,0),
(@PATH,22,6938.29,577.003,466.951,0,0,0,100,0),
(@PATH,23,6952.16,594.699,466.951,0,0,0,100,0),
(@PATH,24,6969.78,616.559,463.68,0,0,0,100,0),
(@PATH,25,6985.14,615.594,467.305,0,0,0,100,0),
(@PATH,26,7002.27,602.799,476.138,0,0,0,100,0);
-- -----------------------------------------------------------------------------------------------------------
-- Forgotten Depths High Priest 3-B
SET @NPC = @NEXT+44;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`) VALUES (@NPC,@PATH);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7028.06,593.528,484.848,0,0,0,100,0),
(@PATH,2,7050.86,587.232,490.487,0,0,0,100,0),
(@PATH,3,7088.02,583.536,496.767,0,0,0,100,0),
(@PATH,4,7135.53,587.626,498.11,0,0,0,100,0),
(@PATH,5,7174.15,581.088,498.373,0,0,0,100,0),
(@PATH,6,7200,579.166,498.248,0,0,0,100,0),
(@PATH,7,7217.31,586.021,496.983,0,0,0,100,0),
(@PATH,8,7203.83,615.728,490.388,0,0,0,100,0),
(@PATH,9,7164.62,625.286,496.707,0,0,0,100,0),
(@PATH,10,7126.29,619.13,497.944,0,0,0,100,0),
(@PATH,11,7094.89,587.951,498.017,0,0,0,100,0),
(@PATH,12,7050.28,590.763,490.362,0,0,0,100,0),
(@PATH,13,7013.81,602.295,479.513,0,0,0,100,0),
(@PATH,14,6987.71,624.076,465.805,0,0,0,100,0),
(@PATH,15,6964.91,625.148,460.924,0,0,0,100,0),
(@PATH,16,6944.73,587.153,467.576,0,0,0,100,0),
(@PATH,17,6927.86,556.953,466.828,0,0,0,100,0),
(@PATH,18,6919.79,527.804,467.056,0,0,0,100,0),
(@PATH,19,6907.68,497.326,466.719,0,0,0,100,0),
(@PATH,20,6914.34,512.11,466.681,0,0,0,100,0),
(@PATH,21,6926.01,537.956,466.578,0,0,0,100,0),
(@PATH,22,6938.29,577.003,466.951,0,0,0,100,0),
(@PATH,23,6952.16,594.699,466.951,0,0,0,100,0),
(@PATH,24,6969.78,616.559,463.68,0,0,0,100,0),
(@PATH,25,6985.14,615.594,467.305,0,0,0,100,0),
(@PATH,26,7002.27,602.799,476.138,0,0,0,100,0);
-- --------------------------------------------------------------------------------------------------
-- Create creature formations based on already existing ones. Also remove the final current waypoints.
-- Creature Formation 1-A
-- --------------------------------------------------------------------------------------------------
SET @LEADER = @NEXT+27;
SET @NPC = @NEXT+89;
DELETE FROM `creature_formations` WHERE `leaderGUID`=@LEADER;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`) VALUES
(@LEADER,@LEADER,0,0,2),
(@LEADER,@NPC,3,0,2);
UPDATE `creature` SET `currentwaypoint`=0 WHERE `id`=30203 AND `currentwaypoint`=1217200;
UPDATE `creature` SET `currentwaypoint`=0 WHERE `id`=30544 AND `currentwaypoint`=1217350;
-- Creature Formation 1-B
SET @LEADER = @NEXT+44;
SET @NPC = @NEXT+95;
DELETE FROM `creature_formations` WHERE `leaderGUID`=@LEADER;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`) VALUES
(@LEADER,@LEADER,0,0,2),
(@LEADER,@NPC,3,0,2);
UPDATE `creature` SET `currentwaypoint`=0 WHERE `id`=30543 AND `currentwaypoint`=1217200;
UPDATE `creature` SET `currentwaypoint`=0 WHERE `id`=30541 AND `currentwaypoint`=1217350;
-- Creature Formation 2-A
SET @LEADER = @NEXT+25;
SET @NPC = @NEXT+86;
DELETE FROM `creature_formations` WHERE `leaderGUID`=@LEADER;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`) VALUES
(@LEADER,@LEADER,0,0,2),
(@LEADER,@NPC,3,0,2);
UPDATE `creature` SET `currentwaypoint`=0 WHERE `id`=30203 AND `currentwaypoint`=1217160;
UPDATE `creature` SET `currentwaypoint`=0 WHERE `id`=30544 AND `currentwaypoint`=1217280;
-- Creature Formation 2-B
SET @LEADER = @NEXT+42;
SET @NPC = @NEXT+94;
DELETE FROM `creature_formations` WHERE `leaderGUID`=@LEADER;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`) VALUES
(@LEADER,@LEADER,0,0,2),
(@LEADER,@NPC,3,0,2);
UPDATE `creature` SET `currentwaypoint`=0 WHERE `id`=30543 AND `currentwaypoint`=1217160;
UPDATE `creature` SET `currentwaypoint`=0 WHERE `id`=30541 AND `currentwaypoint`=1217280;
-- Correct Quest chaining and requirements up until the quest "Crusader's Pinnacle", when the Argent Base in the pinnacle phases in
UPDATE `quest_template` SET `PrevQuestId`=13036, `NextQuestId`=13044, `ExclusiveGroup`=-13008 WHERE `id`=13008; -- Scourge Tactics
UPDATE `quest_template` SET `PrevQuestId`=13036, `NextQuestId`=13044, `ExclusiveGroup`=-13008 WHERE `id`=13039; -- Defending The Vanguard
UPDATE `quest_template` SET `PrevQuestId`=13036, `NextQuestId`=13044, `ExclusiveGroup`=-13008 WHERE `id`=13040; -- Curing The Incurable
UPDATE `quest_template` SET `PrevQuestId`=0, `NextQuestId`=13045, `ExclusiveGroup`=0, `NextQuestIdChain`=13045 WHERE `id`=13044; -- If There Are Survivors
UPDATE `quest_template` SET `PrevQuestId`=13044, `NextQuestId`=13070, `ExclusiveGroup`=0, `NextQuestIdChain`=13070 WHERE `id`=13045; -- Into The Wild Green Yonder
UPDATE `quest_template` SET `Method`=0, `PrevQuestId`=13045, `NextQuestId`=13086, `ExclusiveGroup`=0, `NextQuestIdChain`=13086 WHERE `id`=13070; -- A Cold Front Approaches
UPDATE `quest_template` SET `PrevQuestId`=13070, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestidChain`=0 WHERE `id`=13086; -- The Last Line Of Defense
-- Fix restrictions for DK and all rest classes without DK
UPDATE `quest_template` SET `PrevQuestId`=13086, `RequiredClasses`=32,`NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestIdChain`=0 WHERE `id`=13104; -- Once More Unto The Breach, Hero /Death Knight's Special/
UPDATE `quest_template` SET `PrevQuestId`=13086, `RequiredClasses`=1502,`NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestIdChain`=0 WHERE `id`=13105; -- Once More Unto The Breach, Hero
UPDATE `quest_template` SET `PrevQuestId`=13104, `NextQuestId`=13139, `ExclusiveGroup`=-13122, `NextQuestIdChain`=0 WHERE `id`=13122; -- The Scourgestone
UPDATE `quest_template` SET `PrevQuestId`=13104, `NextQuestId`=13139, `ExclusiveGroup`=-13122, `NextQuestIdChain`=0 WHERE `id`=13118; -- The Purging of Scourgeholme
UPDATE `quest_template` SET `PrevQuestId`=13104, `NextQuestId`=13139, `ExclusiveGroup`=-13122, `NextQuestIdChain`=0 WHERE `id`=13110; -- The Restless Dead
UPDATE `quest_template` SET `PrevQuestId`=13104, `NextQuestId`=13139, `ExclusiveGroup`=-13122, `NextQuestIdChain`=0 WHERE `id`=13125; -- The Air Stands Still
UPDATE `quest_template` SET `PrevQuestId`=13104, `NextQuestId`=13139, `ExclusiveGroup`=-13122, `NextQuestIdChain`=0 WHERE `id`=13130; -- The Stone That Started a Revolution
UPDATE `quest_template` SET `PrevQuestId`=13104, `NextQuestId`=13139, `ExclusiveGroup`=-13122, `NextQuestIdChain`=0 WHERE `id`=13135; -- It Could Kill Us All
UPDATE `quest_template` SET `PrevQuestId`=0, `NextQuestId`=13141, `ExclusiveGroup`=0, `NextQuestIdChain`=13141 WHERE `id`=13139; -- Into The Cold Heart Of Northrend
UPDATE `quest_template` SET `PrevQuestId`=13139, `NextQuestId`=13157, `ExclusiveGroup`=0, `NextQuestIdChain`=13157 WHERE `id`=13141; -- The Battle For Crusader`s Pinnacle
UPDATE `quest_template` SET `PrevQuestId`=13141, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestIdChain`=0 WHERE `id`=13135; -- The Crusader's Pinnacle
SET @Twins := 34329; 
SET @emblem := 49426;
DELETE FROM `reference_loot_template` WHERE `entry`=@Twins;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(@Twins,47296,0,1,1,1,1), -- Greaves of Ruthless Judgment
(@Twins,47297,0,1,1,1,1), -- The Executioner's Vice
(@Twins,47298,0,1,1,1,1), -- Armguards of the Shieldmaiden
(@Twins,47299,0,1,1,1,1), -- Belt of the Pitiless Killer
(@Twins,47300,0,1,1,1,1), -- Gouge of the Frigid Heart
(@Twins,47301,0,1,1,1,1), -- Skyweaver Vestments
(@Twins,47302,0,1,1,1,1), -- Twin's Pact
(@Twins,47303,0,1,1,1,1), -- Death's Choice
(@Twins,47304,0,1,1,1,1), -- Legplates of Ascension
(@Twins,47305,0,1,1,1,1); -- Legionnaire's Gorget
SET @Gunship10N := 28057; -- Data1 for 201872 & 202177
SET @Ref10J := 12036;
-- Gunship_Armory10N_reference
DELETE FROM `reference_loot_template` WHERE `entry`=@Ref10J;
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(@Ref10J,50791,0,1,1,1,1), -- Saronite Gargoyle Cloak
(@Ref10J,50795,0,1,1,1,1), -- Cord of Dark Suffering
(@Ref10J,50794,0,1,1,1,1), -- Neverending Winter
(@Ref10J,50787,0,1,1,1,1), -- Frost Giant's Cleaver
(@Ref10J,50793,0,1,1,1,1), -- Midnight Sun
(@Ref10J,50788,0,1,1,1,1), -- Bone Drake's Enameled Boots
(@Ref10J,50792,0,1,1,1,1), -- Pauldrons of Lost Hope
(@Ref10J,50340,0,1,1,1,1), -- Muradin's Spyglass
(@Ref10J,50797,0,1,1,1,1), -- Ice-Reinforced Vrykul Helm
(@Ref10J,50790,0,1,1,1,1), -- Abomination's Bloody Ring
(@Ref10J,50789,0,1,1,1,1), -- Icecrown Rampart Bracers
(@Ref10J,50796,0,1,1,1,1); -- Bracers of Pale Illumination
-- Bind the refs to the objects
DELETE FROM `gameobject_loot_template` WHERE `entry`=@Gunship10N;
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- Gunship10N
(@Gunship10N,@emblem,100,1,0,2,2), -- Gunship Armory 2xemblems 10N
(@Gunship10N,1,100,1,0,-@Ref10J,2); -- 2 from reference 10Normal
-- Missing Vehicle_Id's from UDB
UPDATE `creature_template` SET `VehicleId`=22 WHERE `entry`=24806;
UPDATE `creature_template` SET `VehicleId`=22 WHERE `entry`=24821;
UPDATE `creature_template` SET `VehicleId`=22 WHERE `entry`=24823;
UPDATE `creature_template` SET `VehicleId`=22 WHERE `entry`=24825;
UPDATE `creature_template` SET `VehicleId`=35 WHERE `entry`=26586;
UPDATE `creature_template` SET `VehicleId`=35 WHERE `entry`=26590;
UPDATE `creature_template` SET `VehicleId`=42 WHERE `entry`=27061;
UPDATE `creature_template` SET `VehicleId`=80 WHERE `entry`=27886;
UPDATE `creature_template` SET `VehicleId`=88 WHERE `entry`=27923;
UPDATE `creature_template` SET `VehicleId`=90 WHERE `entry`=27932;
UPDATE `creature_template` SET `VehicleId`=134 WHERE `entry`=28115;
UPDATE `creature_template` SET `VehicleId`=152 WHERE `entry`=28182;
UPDATE `creature_template` SET `VehicleId`=118 WHERE `entry`=28399;
UPDATE `creature_template` SET `VehicleId`=121 WHERE `entry`=28468;
UPDATE `creature_template` SET `VehicleId`=126 WHERE `entry`=28665;
UPDATE `creature_template` SET `VehicleId`=138 WHERE `entry`=28817;
UPDATE `creature_template` SET `VehicleId`=146 WHERE `entry`=28875;
UPDATE `creature_template` SET `VehicleId`=148 WHERE `entry`=28985;
UPDATE `creature_template` SET `VehicleId`=148 WHERE `entry`=28999;
UPDATE `creature_template` SET `VehicleId`=149 WHERE `entry`=29005;
UPDATE `creature_template` SET `VehicleId`=179 WHERE `entry`=29579;
UPDATE `creature_template` SET `VehicleId`=186 WHERE `entry`=29677;
UPDATE `creature_template` SET `VehicleId`=197 WHERE `entry`=29754;
UPDATE `creature_template` SET `VehicleId`=203 WHERE `entry`=29863;
UPDATE `creature_template` SET `VehicleId`=216 WHERE `entry`=30108;
UPDATE `creature_template` SET `VehicleId`=231 WHERE `entry`=30331;
UPDATE `creature_template` SET `VehicleId`=240 WHERE `entry`=30487;
UPDATE `creature_template` SET `VehicleId`=257 WHERE `entry`=30895;
UPDATE `creature_template` SET `VehicleId`=258 WHERE `entry`=31050;
UPDATE `creature_template` SET `VehicleId`=259 WHERE `entry`=31110;
UPDATE `creature_template` SET `VehicleId`=262 WHERE `entry`=31125;
UPDATE `creature_template` SET `VehicleId`=264 WHERE `entry`=31157;
UPDATE `creature_template` SET `VehicleId`=287 WHERE `entry`=31838;
UPDATE `creature_template` SET `VehicleId`=315 WHERE `entry`=31857;
UPDATE `creature_template` SET `VehicleId`=315 WHERE `entry`=31858;
UPDATE `creature_template` SET `VehicleId`=315 WHERE `entry`=31861;
UPDATE `creature_template` SET `VehicleId`=315 WHERE `entry`=31862;
UPDATE `creature_template` SET `VehicleId`=296 WHERE `entry`=32198;
UPDATE `creature_template` SET `VehicleId`=296 WHERE `entry`=32208;
UPDATE `creature_template` SET `VehicleId`=302 WHERE `entry`=32348;
UPDATE `creature_template` SET `VehicleId`=305 WHERE `entry`=32483;
UPDATE `creature_template` SET `VehicleId`=295 WHERE `entry`=32511;
UPDATE `creature_template` SET `VehicleId`=287 WHERE `entry`=32513;
UPDATE `creature_template` SET `VehicleId`=308 WHERE `entry`=32535;
UPDATE `creature_template` SET `VehicleId`=313 WHERE `entry`=32640;
UPDATE `creature_template` SET `VehicleId`=90 WHERE `entry`=32682;
UPDATE `creature_template` SET `VehicleId`=347 WHERE `entry`=33108;
UPDATE `creature_template` SET `VehicleId`=356 WHERE `entry`=33364;
UPDATE `creature_template` SET `VehicleId`=357 WHERE `entry`=33366;
UPDATE `creature_template` SET `VehicleId`=358 WHERE `entry`=33369;
UPDATE `creature_template` SET `VehicleId`=370 WHERE `entry`=33432;
UPDATE `creature_template` SET `VehicleId`=371 WHERE `entry`=33651;
UPDATE `creature_template` SET `VehicleId`=373 WHERE `entry`=33670;
UPDATE `creature_template` SET `VehicleId`=392 WHERE `entry`=34146;
UPDATE `creature_template` SET `VehicleId`=395 WHERE `entry`=34150;
UPDATE `creature_template` SET `VehicleId`=396 WHERE `entry`=34151;
UPDATE `creature_template` SET `VehicleId`=399 WHERE `entry`=34183;
UPDATE `creature_template` SET `VehicleId`=435 WHERE `entry`=34776;
UPDATE `creature_template` SET `VehicleId`=514 WHERE `entry`=35069;
UPDATE `creature_template` SET `VehicleId`=548 WHERE `entry`=36812;
UPDATE `creature_template` SET `VehicleId`=615 WHERE `entry`=37980;
UPDATE `creature_template` SET `VehicleId`=647 WHERE `entry`=38711;
UPDATE `creature_template` SET `VehicleId`=648 WHERE `entry`=38712;
UPDATE `creature_template` SET `VehicleId`=700 WHERE `entry`=39682;
UPDATE `creature_template` SET `VehicleId`=753 WHERE `entry`=39759;
UPDATE `creature_template` SET `VehicleId`=763 WHERE `entry`=39819;
UPDATE `creature_template` SET `VehicleId`=711 WHERE `entry`=39860;
UPDATE `creature_template` SET `VehicleId`=747 WHERE `entry`=40479;
UPDATE `creature_template` SET `VehicleId`=604 WHERE `entry`=37827;
UPDATE `creature_template` SET `VehicleId`=610 WHERE `entry`=37952;
-- From PitCrawler
UPDATE `creature_template` SET `vehicleId`=202 WHERE `entry`=29903; -- Frostbite
UPDATE `creature_template` SET `vehicleId`=241 WHERE `entry`=30388; -- Stormhoof
UPDATE `creature_template` SET `vehicleId`=25 WHERE `entry`=25194; -- Kor'kron Riding Wolf
UPDATE `creature_template` SET `vehicleId`=108 WHERE `entry`=28639; -- Heb'Jin's Bat
-- Fixing Required Races on Quests 8553 and 8554 to allow for Alliance completion
UPDATE `quest_template` SET `RequiredRaces`=0 WHERE `id`=8554;
UPDATE `quest_template` SET `RequiredRaces`=0 WHERE `id`=8553;
-- Fixing Next Quest for Quest 8552
UPDATE `quest_template` SET `NextQuestIDChain`=8553 WHERE `id`=8552;
-- Set Fel Steed Formation/Group Combat Assistance
DELETE FROM `creature_formations` WHERE `leaderGUID`=16441;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`) VALUES
(16441,16441,0,0,2),
(16441,16442,10,225,2),
(16441,16440,10,120,2);
-- Add missing gossip for Book "Soothsaying for Dummies"
DELETE FROM `gossip_menu` WHERE `entry`=7058;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7058,8321);
-- Creature Gossip_menu_id Update from sniff
UPDATE `creature_template` SET `gossip_menu_id`=8388 WHERE `entry`=21118; -- Razak Ironsides
UPDATE `creature_template` SET `gossip_menu_id`=8306 WHERE `entry`=21494; -- Smiles O'Byron
UPDATE `creature_template` SET `gossip_menu_id`=8385 WHERE `entry`=21824; -- Dizzy Dina
UPDATE `creature_template` SET `gossip_menu_id`=8303 WHERE `entry`=21460; -- Tally Zapnabber
UPDATE `creature_template` SET `gossip_menu_id`=8304 WHERE `entry`=21461; -- Rally Zapnabber
UPDATE `creature_template` SET `gossip_menu_id`=8351 WHERE `entry`=21690; -- R-3D0
UPDATE `creature_template` SET `gossip_menu_id`=8370 WHERE `entry`=21755; -- Nickwinkle the Metro-Gnome
UPDATE `creature_template` SET `gossip_menu_id`=8429 WHERE `entry`=21981; -- Overseer Nuaar
UPDATE `creature_template` SET `gossip_menu_id`=8432 WHERE `entry`=21983; -- Samia Inkling
UPDATE `creature_template` SET `gossip_menu_id`=8431 WHERE `entry`=22007; -- Tree Warden Chawn
UPDATE `creature_template` SET `gossip_menu_id`=8436 WHERE `entry`=22019; -- Kolphis Darkscale
UPDATE `creature_template` SET `gossip_menu_id`=8447 WHERE `entry`=22020; -- O'Mally Zapnabber
UPDATE `creature_template` SET `gossip_menu_id`=8508 WHERE `entry`=22053; -- Mosswood the Ancient
UPDATE `creature_template` SET `gossip_menu_id`=8490 WHERE `entry`=22099; -- Wyrmcult Provisioner
UPDATE `creature_template` SET `gossip_menu_id`=8491 WHERE `entry`=22103; -- Baron Sablemane
UPDATE `creature_template` SET `gossip_menu_id`=8523 WHERE `entry`=22127; -- Wildlord Antelarion
UPDATE `creature_template` SET `gossip_menu_id`=8496 WHERE `entry`=22149; -- Commander Haephus Stonewall
UPDATE `creature_template` SET `gossip_menu_id`=8506 WHERE `entry`=22215; -- Treebole
UPDATE `creature_template` SET `gossip_menu_id`=8723 WHERE `entry`=22264; -- Ogri'la Steelshaper
UPDATE `creature_template` SET `gossip_menu_id`=8717, `npcflag`=`npcflag`|1 WHERE `entry`=22266; -- Food Vendor
UPDATE `creature_template` SET `gossip_menu_id`=8716, `npcflag`=`npcflag`|1 WHERE `entry`=22270; -- Ogri'la Merchant
UPDATE `creature_template` SET `gossip_menu_id`=8722, `npcflag`=`npcflag`|1 WHERE `entry`=22271; -- Ogri'la Trader
UPDATE `creature_template` SET `gossip_menu_id`=8529 WHERE `entry`=22386; -- Watcher Moonshade
UPDATE `creature_template` SET `gossip_menu_id`=8615 WHERE `entry`=22924; -- Arthorn Windsong
UPDATE `creature_template` SET `gossip_menu_id`=8620 WHERE `entry`=22941; -- Mog'dorg the Wizened
UPDATE `creature_template` SET `gossip_menu_id`=8657 WHERE `entry`=22995; -- Chort
UPDATE `creature_template` SET `gossip_menu_id`=8753 WHERE `entry`=23038; -- Sky Commander Adaris
UPDATE `creature_template` SET `gossip_menu_id`=8630 WHERE `entry`=23048; -- Sky Sergeant Doryn
UPDATE `creature_template` SET `gossip_menu_id`=8640, `npcflag`=`npcflag`|1 WHERE `entry`=23052; -- Bloodmaul Supplicant
UPDATE `creature_template` SET `gossip_menu_id`=8640, `npcflag`=`npcflag`|1 WHERE `entry`=23053; -- Bladespire Supplicant
UPDATE `creature_template` SET `gossip_menu_id`=8721, `npcflag`=`npcflag`|1 WHERE `entry`=23110; -- Ogri'la Keg King
UPDATE `creature_template` SET `gossip_menu_id`=8724 WHERE `entry`=23112; -- Mingo
UPDATE `creature_template` SET `gossip_menu_id`=8642, `npcflag`=`npcflag`|1 WHERE `entry`=23120; -- Sky Sergeant Vanderlip
UPDATE `creature_template` SET `gossip_menu_id`=8737 WHERE `entry`=23208; -- Skyguard Pyrotechnician
UPDATE `creature_template` SET `gossip_menu_id`=8679 WHERE `entry`=23253; -- Kronk
UPDATE `creature_template` SET `gossip_menu_id`=8667 WHERE `entry`=23306; -- Hazzik
UPDATE `creature_template` SET `gossip_menu_id`=8670 WHERE `entry`=23335; -- Skyguard Khatie
UPDATE `creature_template` SET `gossip_menu_id`=8683 WHERE `entry`=23363; -- Sahaak
UPDATE `creature_template` SET `gossip_menu_id`=8718 WHERE `entry`=23413; -- Skyguard Handler Irena
UPDATE `creature_template` SET `gossip_menu_id`=8719 WHERE `entry`=23415; -- Skyguard Handler Deesak
UPDATE `creature_template` SET `gossip_menu_id`=8726 WHERE `entry`=23428; -- Jho'nass
UPDATE `creature_template` SET `gossip_menu_id`=8736 WHERE `entry`=23473; -- Aether-tech Apprentice

-- Gossip Menu insert from sniff
DELETE FROM `gossip_menu` WHERE `entry`=8303 AND `text_id` IN (10359,10569);
DELETE FROM `gossip_menu` WHERE `entry`=8304 AND `text_id` IN (10360,10537);
DELETE FROM `gossip_menu` WHERE `entry`=8306 AND `text_id`=10410;
DELETE FROM `gossip_menu` WHERE `entry`=8343 AND `text_id`=10363;
DELETE FROM `gossip_menu` WHERE `entry`=8351 AND `text_id`=10422;
DELETE FROM `gossip_menu` WHERE `entry`=8370 AND `text_id`=10444;
DELETE FROM `gossip_menu` WHERE `entry`=8385 AND `text_id`=10466;
DELETE FROM `gossip_menu` WHERE `entry`=8388 AND `text_id`=10469;
DELETE FROM `gossip_menu` WHERE `entry`=8429 AND `text_id`=10532;
DELETE FROM `gossip_menu` WHERE `entry`=8430 AND `text_id`=10533;
DELETE FROM `gossip_menu` WHERE `entry`=8431 AND `text_id`=10534;
DELETE FROM `gossip_menu` WHERE `entry`=8432 AND `text_id`=10538;
DELETE FROM `gossip_menu` WHERE `entry`=8435 AND `text_id`=10541;
DELETE FROM `gossip_menu` WHERE `entry`=8436 AND `text_id`=10539;
DELETE FROM `gossip_menu` WHERE `entry`=8437 AND `text_id`=10542;
DELETE FROM `gossip_menu` WHERE `entry`=8438 AND `text_id`=10543;
DELETE FROM `gossip_menu` WHERE `entry`=8439 AND `text_id`=10544;
DELETE FROM `gossip_menu` WHERE `entry`=8440 AND `text_id`=10545;
DELETE FROM `gossip_menu` WHERE `entry`=8447 AND `text_id`=10554;
DELETE FROM `gossip_menu` WHERE `entry`=8454 AND `text_id`=10561;
DELETE FROM `gossip_menu` WHERE `entry`=8455 AND `text_id`=10562;
DELETE FROM `gossip_menu` WHERE `entry`=8490 AND `text_id`=10602;
DELETE FROM `gossip_menu` WHERE `entry`=8491 AND `text_id`=10603;
DELETE FROM `gossip_menu` WHERE `entry`=8496 AND `text_id`=10612;
DELETE FROM `gossip_menu` WHERE `entry`=8506 AND `text_id`=10637;
DELETE FROM `gossip_menu` WHERE `entry`=8508 AND `text_id`=10640;
DELETE FROM `gossip_menu` WHERE `entry`=8523 AND `text_id`=10657;
DELETE FROM `gossip_menu` WHERE `entry`=8529 AND `text_id`=10667;
DELETE FROM `gossip_menu` WHERE `entry`=8615 AND `text_id`=10793;
DELETE FROM `gossip_menu` WHERE `entry`=8620 AND `text_id` IN (10800,10860);
DELETE FROM `gossip_menu` WHERE `entry`=8630 AND `text_id`=10819;
DELETE FROM `gossip_menu` WHERE `entry`=8640 AND `text_id`=10838;
DELETE FROM `gossip_menu` WHERE `entry`=8642 AND `text_id` IN (10841,10992,10994,10995);
DELETE FROM `gossip_menu` WHERE `entry`=8657 AND `text_id` IN (10877,10878);
DELETE FROM `gossip_menu` WHERE `entry`=8660 AND `text_id` IN (10888,11057);
DELETE FROM `gossip_menu` WHERE `entry`=8667 AND `text_id`=10903;
DELETE FROM `gossip_menu` WHERE `entry`=8669 AND `text_id` IN (10906,10938,10988,10989,10990,10991);
DELETE FROM `gossip_menu` WHERE `entry`=8670 AND `text_id` IN (10907,10997,11001,11002,11004);
DELETE FROM `gossip_menu` WHERE `entry`=8671 AND `text_id` IN (10909,10951);
DELETE FROM `gossip_menu` WHERE `entry`=8672 AND `text_id` IN (10910,10922);
DELETE FROM `gossip_menu` WHERE `entry`=8674 AND `text_id`=10912;
DELETE FROM `gossip_menu` WHERE `entry`=8675 AND `text_id`=10915;
DELETE FROM `gossip_menu` WHERE `entry`=8678 AND `text_id` IN (10916,10917,10918,11013,11015,11018);
DELETE FROM `gossip_menu` WHERE `entry`=8679 AND `text_id` IN (10919,10920,11027,11028);
DELETE FROM `gossip_menu` WHERE `entry`=8680 AND `text_id` IN (10923,10924,10925,11019,11020,11021);
DELETE FROM `gossip_menu` WHERE `entry`=8681 AND `text_id` IN (10926,10927,11007,11009,11010,11011);
DELETE FROM `gossip_menu` WHERE `entry`=8683 AND `text_id`=10953;
DELETE FROM `gossip_menu` WHERE `entry`=8685 AND `text_id` IN (10931,10932);
DELETE FROM `gossip_menu` WHERE `entry`=8687 AND `text_id`=11058;
DELETE FROM `gossip_menu` WHERE `entry`=8689 AND `text_id` IN (10931,10932);
DELETE FROM `gossip_menu` WHERE `entry`=8690 AND `text_id` IN (10931,10932);
DELETE FROM `gossip_menu` WHERE `entry`=8691 AND `text_id` IN (10931,10932);
DELETE FROM `gossip_menu` WHERE `entry`=8716 AND `text_id` IN (10965,10966,10967,10968,10969);
DELETE FROM `gossip_menu` WHERE `entry`=8717 AND `text_id` IN (10972,10973,10974,10975,10976);
DELETE FROM `gossip_menu` WHERE `entry`=8718 AND `text_id` IN (10977,10978);
DELETE FROM `gossip_menu` WHERE `entry`=8719 AND `text_id` IN (10979,10980);
DELETE FROM `gossip_menu` WHERE `entry`=8721 AND `text_id` IN (10983,10984,10985,10986,10987);
DELETE FROM `gossip_menu` WHERE `entry`=8722 AND `text_id` IN (10993,10996,10998,10999,11000);
DELETE FROM `gossip_menu` WHERE `entry`=8723 AND `text_id` IN (11008,11012,11014,11016,11017);
DELETE FROM `gossip_menu` WHERE `entry`=8724 AND `text_id` IN (11022,11023,11024,11025,11026);
DELETE FROM `gossip_menu` WHERE `entry`=8726 AND `text_id` IN (11029,11036,11037,11038);
DELETE FROM `gossip_menu` WHERE `entry`=8736 AND `text_id`=11066;
DELETE FROM `gossip_menu` WHERE `entry`=8737 AND `text_id` IN (11059,11060,11061,11063);
DELETE FROM `gossip_menu` WHERE `entry`=8753 AND `text_id`=11089;
DELETE FROM `gossip_menu` WHERE `entry`=8757 AND `text_id` IN (11094,11095);
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(8303,10359),(8303,10569),
(8304,10537),(8304,10360),
(8306,10410),
(8343,10363),
(8351,10422),
(8370,10444),
(8385,10466),
(8388,10469),
(8429,10532),
(8430,10533),
(8431,10534),
(8435,10541),
(8436,10539),
(8437,10542),
(8438,10543),
(8439,10544),
(8440,10545),
(8447,10554),
(8454,10561),
(8455,10562),
(8490,10602),
(8491,10603),
(8496,10612),
(8506,10637),
(8508,10640),
(8523,10657),
(8529,10667),
(8615,10793),
(8620,10800),(8620,10860),
(8630,10819),
(8640,10838),
(8642,10841),(8642,10992),(8642,10994),(8642,10995),
(8657,10877),(8657,10878),
(8660,10888),(8660,11057),
(8667,10903),
(8669,10906),(8669,10938),(8669,10988),(8669,10989),(8669,10990),(8669,10991),
(8670,10907),(8670,10997),(8670,11001),(8670,11002),(8670,11004),
(8671,10909),(8671,10951),
(8672,10910),(8672,10922),
(8674,10912),
(8675,10915),
(8678,10916),(8678,10917),(8678,10918),(8678,11013),(8678,11015),(8678,11018),
(8679,10919),(8679,10920),(8679,11027),(8679,11028),
(8680,10923),(8680,10924),(8680,10925),(8680,11019),(8680,11020),(8680,11021),
(8681,10926),(8681,10927),(8681,11007),(8681,11009),(8681,11010),(8681,11011),
(8683,10953),
(8685,10931),(8685,10932),
(8687,11058),
(8689,10931),(8689,10932),
(8690,10931),(8690,10932),
(8691,10931),(8691,10932),
(8716,10965),(8716,10966),(8716,10967),(8716,10968),(8716,10969),
(8717,10976),(8717,10975),(8717,10974),(8717,10973),(8717,10972),
(8718,10977),(8718,10978),
(8719,10979),(8719,10980),
(8721,10983),(8721,10984),(8721,10985),(8721,10986),(8721,10987),
(8722,10993),(8722,10996),(8722,10998),(8722,10999),(8722,11000),
(8723,11008),(8723,11012),(8723,11014),(8723,11016),(8723,11017),
(8724,11022),(8724,11023),(8724,11024),(8724,11025),(8724,11026),
(8726,11029),(8726,11036),(8726,11037),(8726,11038),
(8736,11066),
(8737,11059),(8737,11060),(8737,11061),(8737,11063),
(8753,11089),
(8757,11094),(8757,11095);

-- Creature Gossip_menu_option insert from sniff
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (8303,8429,8435,8436,8437,8438,8439,8454,8490,8660,8661,8671,8672,8673,8674,8675,8676,8677,8679,8683,8685,8687,8689,8690,8691,8716,8717,8718,8719,8721,8722,8723,8724,8726,8737) AND `id`=0;
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (8672,8677,8718,8719) AND `id` IN (1);
DELETE FROM `gossip_menu_option` WHERE `menu_id`=8304 AND `id` IN (0,1,2,3,4,5);
DELETE FROM `gossip_menu_option` WHERE `menu_id`=8306 AND `id` IN (0,1);
DELETE FROM `gossip_menu_option` WHERE `menu_id`=8455 AND `id` IN (0,1,2,3,4);
DELETE FROM `gossip_menu_option` WHERE `menu_id`=8660 AND `id` IN (0,1,2,3);
DELETE FROM `gossip_menu_option` WHERE `menu_id`=8679 AND `id` IN (0,1);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(8303,0,0,'I need another waiver!',1,1,0,0,0,0,''), -- Spellcast 38255
(8304,0,0,'I''m ready for my test flight!',1,1,0,0,0,0,''),
(8304,1,0,'Take me to Singing Ridge.',1,1,8454,0,0,0,''),
(8304,2,0,'Send me to Razaan''s Landing!',1,1,0,0,0,0,''),
(8304,3,0,'Take me to Ruuan.',1,1,0,0,0,0,''),
(8304,4,0,'Send me to Raven''s Wood!',1,1,0,0,0,0,''),
(8304,5,0,'I want to fly to an old location!',1,1,8455,0,0,0,''),
(8306,1,0,'Why are you so far from Toshley''s Station?',1,1,8343,0,0,0,''),
(8429,0,0,'Overseer, I am here to negotiate on behalf of the Cenarion Expedition.',1,1,8430,0,0,0,''),
(8435,0,0,'Oh, it''s not my fault, I can assure you.',1,1,8437,0,0,0,''),
(8436,0,0,'I''m fine, thank you.  You asked for me?',1,1,8435,0,0,0,''),
(8437,0,0,'Um, no... no, I don''t want that at all.',1,1,8438,0,0,0,''),
(8438,0,0,'Impressive.  When do we attack?',1,1,8439,0,0,0,''),
(8439,0,0,'Absolutely!',1,1,8440,0,0,0,''),
(8454,0,0,'I have the signed waiver!  Fire me into the Singing Ridge!',1,1,0,0,0,0,''),
(8455,0,0,'Send me back to the Jagged Ridge.',1,1,0,0,0,0,''),
(8455,1,0,'Send me back to the Singing Ridge.',1,1,0,0,0,0,''),
(8455,2,0,'Send me back to Razaan''s Landing.',1,1,0,0,0,0,''),
(8455,3,0,'Send me back to Ruuan.',1,1,0,0,0,0,''),
(8455,4,0,'Send me back to Raven''s Wood.',1,1,0,0,0,0,''),
(8490,0,1,'Very well, let me see what you''ve got.',3,128,0,0,0,0,''),
(8660,0,0,'<Call forth Gezzarak the Huntress.>',1,1,0,0,0,0,''),
(8660,1,0,'<Call forth Darkscreecher Akkarai.>',1,1,0,0,0,0,''),
(8660,2,0,'<Call forth Karrog.>',1,1,0,0,0,0,''),
(8660,3,0,'<Call forth Vakkiz the Windrager.>',1,1,0,0,0,0,''),
(8661,0,1,'Show me your assortment of, err... things.',3,128,0,0,0,0,''),
(8671,0,0,'Place 35 Apexis Shards into the prism.',1,1,0,0,0,0,''),
(8672,0,0,'Purchase 1 Unstable Flask of the Beast for the cost of 10 Apexis Shards',1,1,8673,0,0,0,''),
(8672,1,0,'Purchase 5 Unstable Flasks of the Beast for the cost of 50 Apexis Shards',1,1,8674,0,0,0,''),
(8673,0,0,'Use the fel crystalforge to make another purchase.',1,1,8672,0,0,0,''),
(8674,0,0,'Use the fel crystalforge to make another purchase.',1,1,8672,0,0,0,''),
(8675,0,0,'Use the Bash''ir crystalforge to make another purchase.',1,1,8677,0,0,0,''),
(8676,0,0,'Use the Bash''ir crystalforge to make another purchase.',1,1,8677,0,0,0,''),
(8677,0,0,'Purchase 1 Unstable Flask of the Sorcerer for the cost of 10 Apexis Shards',1,1,8676,0,0,0,''),
(8677,1,0,'Purchase 5 Unstable Flasks of the Sorcerer for the cost of 50 Apexis Shards',1,1,8675,0,0,0,''),
(8679,0,0,'Kronk, tell me about the charged crystal foci.',1,1,8757,0,0,0,''),
(8683,0,1,'Skwak!',3,128,0,0,0,0,''),
(8685,0,0,'Place 35 Apexis Shards near the dragon egg to crack it open.',1,1,0,0,0,0,''),
(8687,0,0,'<Call forth Terokk.>',1,1,0,0,0,0,''),
(8689,0,0,'Place 35 Apexis Shards near the dragon egg to crack it open.',1,1,0,0,0,0,''),
(8690,0,0,'Place 35 Apexis Shards near the dragon egg to crack it open.',1,1,0,0,0,0,''),
(8691,0,0,'Place 35 Apexis Shards near the dragon egg to crack it open.',1,1,0,0,0,0,''),
(8716,0,1,'Let me browse your goods.',3,128,0,0,0,0,''),
(8717,0,1,'Let me browse your goods.',3,128,0,0,0,0,''),
(8718,1,0,'Yes, I''d love a ride to Blackwind Landing.',1,1,0,0,0,0,''),
(8719,1,0,'Absolutely!  Send me to the Skyguard Outpost.',1,1,0,0,0,0,''),
(8721,0,1,'Let me browse your goods.',3,128,0,0,0,0,''),
(8722,0,1,'Let me browse your goods.',3,128,0,0,0,0,''),
(8723,0,1,'Let me browse your goods.',3,128,0,0,0,0,''),
(8724,0,1,'Let me browse your goods.',3,128,0,0,0,0,''),
(8726,0,1,'Jho''nass, let me see what you have to offer.',3,128,0,0,0,0,''),
(8737,0,1,'Let me browse your goods.',3,128,0,0,0,0,'');

-- Insert npc_text from sniff
DELETE FROM `npc_text` WHERE `ID` IN (10838,10878,10909,10915,10918,10968,10977,10984,10985,10986,10987,10990,10991,10993,10996,10998,10999,11012,11013,11014,11015,11020,11022,11023,11024,11037,11063);
INSERT INTO `npc_text` (`ID`,`text0_0`,`text0_1`,`lang0`,`prob0`,`em0_0`,`em0_1`,`em0_2`,`em0_3`,`em0_4`,`em0_5`,`text1_0`,`text1_1`,`lang1`,`prob1`,`em1_0`,`em1_1`,`em1_2`,`em1_3`,`em1_4`,`em1_5`,`text2_0`,`text2_1`,`lang2`,`prob2`,`em2_0`,`em2_1`,`em2_2`,`em2_3`,`em2_4`,`em2_5`,`text3_0`,`text3_1`,`lang3`,`prob3`,`em3_0`,`em3_1`,`em3_2`,`em3_3`,`em3_4`,`em3_5`,`text4_0`,`text4_1`,`lang4`,`prob4`,`em4_0`,`em4_1`,`em4_2`,`em4_3`,`em4_4`,`em4_5`,`text5_0`,`text5_1`,`lang5`,`prob5`,`em5_0`,`em5_1`,`em5_2`,`em5_3`,`em5_4`,`em5_5`,`text6_0`,`text6_1`,`lang6`,`prob6`,`em6_0`,`em6_1`,`em6_2`,`em6_3`,`em6_4`,`em6_5`,`text7_0`,`text7_1`,`lang7`,`prob7`,`em7_0`,`em7_1`,`em7_2`,`em7_3`,`em7_4`,`em7_5`,`WDBVerified`) VALUES
(10838,'Yes, $g king : queen;?','',0,1,0,1,0,0,0,0,'You kill gronn!  Now you fight things from sky?','',0,1,0,15,0,0,0,0,'Me life for $N!','',0,1,0,15,0,0,0,0,'Dis drink good!','',0,1,0,1,0,0,0,0,'If $G King : Queen; $N dance, me dance!','',0,1,0,1,0,0,0,0,'$G King : Queen; not angry with me?','',0,1,0,1,0,0,0,0,'Why you look at me like dat?  You not gonna kiss me, right!?','',0,1,0,1,0,0,0,0,'Now all Sons of Gruul dead!  Now new $g king : queen; lead all ogres to Ogri''la!','',0,1,0,15,0,0,0,0,12340),
(10878,'Da $g king : queen;!  Chort ready to serve.','',0,1,0,2,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,12340),
(10909,'Burning eyes within the prism fill your mind with a sense of dread...','',0,1,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,12340),
(10915,'<As you place your apexis shards within the hollow of the Bash''ir crystalforge and pull the lever, the device literally disintegrates them.  A few moments later your flasks appear at your feet.>','',0,1,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,12340),
(10918,'The boy''s too stupid still to say it -- not enough crystal exposure yet -- but, he''s thankful for what you did in getting him those flasks.$B$BNow, only nine more sons to go.  Gah!$B$B<Both of Torkus''s heads sigh.>$B$BWant to take one of them off of our hands?  We''ll sell him to you cheap.','',0,1,0,1,0,5,0,6,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,12340),
(10968,'Mighty one! How can we serve you?','',0,1,1,396,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,12340),
(10977,'','Hey, comrade.  If you get yourself in good with the Skyguard, I can offer you a direct flight to our base, Blackwind Landing, in the Skethyl Mountains.$B$BDo you like my beautiful nether ray?  It is lovely.',0,1,0,1,0,6,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,12340),
(10984,'Everyone''s gotta drink. What can we get for you?','',0,1,1,396,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,12340),
(10985,'Greetings $G brother:sister;, how can we help?','',0,1,1,396,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,12340),
(10986,'Our drinks should quench even the mightiest of thirsts.','',0,1,1,396,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,12340),
(10987,'Drink or be gone!','',0,1,1,396,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,12340),
(10990,'Yer gettin'' ta be something of a revered figure ''round here, $g boy : girl;!  If''n I didn''t know better, I''d say ye were gunnin'' fer me job!!!$B$BAll the same, if ye keep up the way ye have been, ye''ll deserve it!','',0,1,0,5,0,396,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,12340),
(10991,'What can I say, $N?  Yer the finest o'' the Sha''tari Skyguard!$B$BJust don''t be lettin'' that go ta yer head.  I can still teach ya a thing or two, $g lad : lass;!$B$B<Sky Commander Keller grins at you and winks.>','',0,1,0,2,0,11,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,12340),
(10993,'How can we be of service, exalted one?','',0,1,1,16,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,12340),
(10996,'We are happy to provide you with supplies.','',0,1,1,1,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,12340),
(10998,'Honored $G brother:sister;, how can we help?','',0,1,1,1,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,12340),
(10999,'Friend! It''s been too long.  What can we get for you?','',0,1,1,1,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,12340),
(11013,'It''s an honor to have a $r such as yourself aiding us ogres.  You''re keeping our hope of a better future alive.$B$BNow if we could just get rid of these headaches.  Are you sure you don''t want one of our sons?','',0,1,0,1,0,6,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,12340),
(11012,'There are few things you can trust in life. Steel, you can trust.','',0,1,1,396,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,12340),
(11014,'What is steel compared to the hand that shapes it?','',0,1,1,396,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,12340),
(11015,'It''s amazing how much you''ve helped us out.  We dare say that if it weren''t for you, we''d already have been overrun by the demons, or fried to a crisp by the Black Dragonflight!$B$BOn a side note, we did mention that we''d sell you one of our sons, cheap, right?  No, not interested?','',0,1,0,1,0,6,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,12340),
(11020,'Gahk like little, $r $N.  Yous kill da big demon; make all da little demons scared!$B$B<Gahk''s heads both grin at you.>','',0,1,0,1,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,12340),
(11022,'What can we get for you, our exalted $G brother:sister;?','',0,1,1,16,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,12340),
(11023,'How might we be of assistance?','',0,1,1,1,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,12340),
(11024,'Honored $G brother:sister;, how may we help?','',0,1,1,396,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,12340),
(11037,'You''re like something of a revered figure around here, $g man : kitten;.  Seems like everyone''s talking about you.  That''s cool.$B$BLet''s see if there''s something in stock that you''re interested in.  We have a lot of nice stuff.','',0,1,0,25,0,1,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,12340),
(11063,'You can never be too prepared.','',0,1,1,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,12340);

-- Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=8303 AND `SourceEntry`=10569;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=8304 AND `SourceEntry`=10537;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=8620 AND `SourceEntry`=10860;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=8642 AND `SourceEntry` IN (10992,10994,10995);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=8657 AND `SourceEntry`=10878;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=8660 AND `SourceEntry`=11057;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=8669 AND `SourceEntry` IN (10938,10988,10989,10990,10991);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=8670 AND `SourceEntry` IN (10997,11001,11002,11004);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=8671 AND `SourceEntry`=10951;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=8672 AND `SourceEntry`=10922;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=8677 AND `SourceEntry`=10913;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=8678 AND `SourceEntry` IN (10917,10918,11013,11015,11018);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=8679 AND `SourceEntry` IN (10920,11027,11028);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=8680 AND `SourceEntry` IN (10923,10924,10925,11019,11020,11021);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=8681 AND `SourceEntry` IN (10926,10927,11007,11009,11010,11011);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup` IN (8685,8689,8690,8691) AND `SourceEntry`=10932;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=8716 AND `SourceEntry` IN (10965,10966,10968,10969);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=8717 AND `SourceEntry` IN (10972,10973,10974,10975,10976);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=8718 AND `SourceEntry`=10978;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=8719 AND `SourceEntry`=10979;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=8721 AND `SourceEntry` IN (10983,10984,10985,10986,10987);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=8722 AND `SourceEntry` IN (10993,10996,10998,10999,11000);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=8723 AND `SourceEntry` IN (11008,11012,11014,11016,11017);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=8724 AND `SourceEntry` IN (11022,11023,11024,11025,11026);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=8726 AND `SourceEntry` IN (11036,11037,11038);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=8737 AND `SourceEntry` IN (11060,11061,11063);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=8757 AND `SourceEntry`=11095;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=8304 AND `SourceEntry` IN (0,1,2,3,4,5);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=8429 AND `SourceEntry`=0;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=8454 AND `SourceEntry`=0;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=8455 AND `SourceEntry` IN (0,1,2,3,4);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=8660 AND `SourceEntry` IN (0,1,2,3);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=8671 AND `SourceEntry`=0;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=8672 AND `SourceEntry` IN (0,1);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=8677 AND `SourceEntry` IN (0,1);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=8685 AND `SourceEntry`=0;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=8687 AND `SourceEntry`=0;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=8689 AND `SourceEntry`=0;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=8690 AND `SourceEntry`=0;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=8691 AND `SourceEntry`=0;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=8718 AND `SourceEntry`=1;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=8719 AND `SourceEntry`=1;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,8303,10569,0,0,8,10557,0,0,0,0,'','Tally Zapnabber - Show different gossip if player has completed quest 10557'),
(14,8304,10537,0,0,1,37108,0,0,0,0,'','Rally Zapnabber - Show different gossip if player is affected by aura 37108'),
(14,8620,10860,0,0,8,11000,0,0,0,0,'','Mog''dorg the Wizened - Show different gossip if player has rewarded quest 11000'),
(14,8642,10992,0,0,5,1031,32,0,0,0,'','Sky Sergeant Vanderlip - Show different gossip if player is honored with Sha''tari Skyguards'),
(14,8642,10994,0,0,5,1031,64,0,0,0,'','Sky Sergeant Vanderlip - Show different gossip if player is revered with Sha''tari Skyguards'),
(14,8642,10995,0,0,5,1031,128,0,0,0,'','Sky Sergeant Vanderlip - Show different gossip if player is exalted with Sha''tari Skyguards'),
(14,8657,10878,0,0,8,11000,0,0,0,0,'','Chort - Show different gossip if player has rewarded quest 11000'),
(14,8660,11057,0,0,2,32620,1,0,0,0,'','Skull Pile - Show different gossip if player has item 32620'),
(14,8669,10938,0,0,8,11065,0,0,0,0,'','Sky Commander Keller - Show different gossip if player has rewarded quest 11065'),
(14,8669,10938,0,0,8,11010,0,0,0,0,'','Sky Commander Keller - Show different gossip if player has rewarded quest 11010'),
(14,8669,10988,0,0,8,11062,0,0,0,0,'','Sky Commander Keller - Show different gossip if player has rewarded quest 11062'),
(14,8669,10989,0,0,5,1031,32,0,0,0,'','Sky Commander Keller - Show different gossip if player is honored with Sha''tari Skyguards'),
(14,8669,10990,0,0,5,1031,64,0,0,0,'','Sky Commander Keller - Show different gossip if player is revered with Sha''tari Skyguards'),
(14,8669,10991,0,0,5,1031,128,0,0,0,'','Sky Commander Keller - Show different gossip if player is exalted with Sha''tari Skyguards'),
(14,8670,10997,0,0,8,11065,0,0,0,0,'','Skyguard Khatie - Show different gossip if player has rewarded quest 11065'),
(14,8670,11001,0,0,5,1031,32,0,0,0,'','Skyguard Khatie - Show different gossip if player is honored with Sha''tari Skyguards'),
(14,8670,11002,0,0,5,1031,64,0,0,0,'','Skyguard Khatie - Show different gossip if player is revered with Sha''tari Skyguards'),
(14,8670,11004,0,0,5,1031,128,0,0,0,'','Skyguard Khatie - Show different gossip if player is exalted with Sha''tari Skyguards'),
(14,8671,10951,0,0,2,32569,35,0,1,0,'','Fel Crystal Prism - Show different gossip if player does not have 35 of item 32569'),
(14,8672,10922,0,0,2,32569,10,0,1,0,'','Fel Crystalforge - Show different gossip if player has 10 of item 32569'),
(14,8677,10913,0,0,2,32569,10,0,0,0,'','Bash''ir Crystalforge - Show different gossip if player has 10 of item 32569'),
(14,8678,10917,0,0,8,11030,0,0,0,0,'','Torkus - Show different gossip if player has rewarded quest 11030'),
(14,8678,10918,0,0,8,11061,0,0,0,0,'','Torkus - Show different gossip if player has rewarded quest 11061'),
(14,8678,11013,0,0,5,1038,32,0,0,0,'','Torkus - Show different gossip if player is honored with Ogri''la'),
(14,8678,11015,0,0,5,1038,64,0,0,0,'','Torkus - Show different gossip if player is revered with Ogri''la'),
(14,8678,11018,0,0,5,1038,128,0,0,0,'','Torkus - Show different gossip if player is exalted with Ogri''la'),
(14,8679,10920,0,0,8,11026,0,0,0,0,'','Kronk - Show different gossip if player has rewarded quest 11026'),
(14,8679,11027,0,0,5,1038,64,0,0,0,'','Kronk - Show different gossip if player is revered with Ogri''la'),
(14,8679,11028,0,0,5,1038,128,0,0,0,'','Kronk - Show different gossip if player is exalted with Ogri''la'),
(14,8680,10923,0,0,5,1038,32+16+8,0,0,0,'','Gahk - Show different gossip if player is neutral, friendly or honored with Ogri''la'),
(14,8680,10924,0,0,8,11026,0,0,0,0,'','Gahk - Show different gossip if player has rewarded quest 11026'),
(14,8680,10925,0,0,8,11060,0,0,0,0,'','Gahk - Show different gossip if player has rewarded quest 11060'),
(14,8680,11019,0,0,5,1038,64,0,0,0,'','Gahk - Show different gossip if player is revered with Ogri''la'),
(14,8680,11020,0,0,8,11079,0,0,0,0,'','Gahk - Show different gossip if player has rewarded quest 11079'),
(14,8680,11021,0,0,5,1038,128,0,0,0,'','Gahk - Show different gossip if player is exalted with Ogri''la'),
(14,8681,10926,0,0,5,1038,16+8,0,0,0,'','Chu''a''lor - Show different gossip if player is neutral or friendly with Ogri''la'),
(14,8681,10927,0,0,8,11025,0,0,0,0,'','Chu''a''lor - Show different gossip if player has rewarded quest 11025'),
(14,8681,11007,0,0,8,11058,0,0,0,0,'','Chu''a''lor - Show different gossip if player has rewarded quest 11058'),
(14,8681,11009,0,0,5,1038,32,0,0,0,'','Chu''a''lor - Show different gossip if player is honored with Ogri''la'),
(14,8681,11010,0,0,5,1038,64,0,0,0,'','Chu''a''lor - Show different gossip if player is revered with Ogri''la'),
(14,8681,11011,0,0,5,1038,128,0,0,0,'','Chu''a''lor - Show different gossip if player is exalted with Ogri''la'),
(14,8685,10932,0,0,2,32569,35,0,1,0,'','Show different gossip if player has 35 of item 32569'),
(14,8689,10932,0,0,2,32569,35,0,1,0,'','Show different gossip if player has 35 of item 32569'),
(14,8690,10932,0,0,2,32569,35,0,1,0,'','Show different gossip if player has 35 of item 32569'),
(14,8691,10932,0,0,2,32569,35,0,1,0,'','Show different gossip if player has 35 of item 32569'),
(14,8716,10965,0,0,5,1038,16,0,0,0,'','Ogri''la Merchant - Show different gossip if player is friendly with Ogri''la'),
(14,8716,10966,0,0,5,1038,32,0,0,0,'','Ogri''la Merchant - Show different gossip if player is honored with Ogri''la'),
(14,8716,10968,0,0,5,1038,64,0,0,0,'','Ogri''la Merchant - Show different gossip if player is revered with Ogri''la'),
(14,8716,10969,0,0,5,1038,128,0,0,0,'','Ogri''la Merchant - Show different gossip if player is exalted with Ogri''la'),
(14,8717,10972,0,0,5,1038,128,0,0,0,'','Food Vendor - Show different gossip if player is exalted with Ogri''la'),
(14,8717,10973,0,0,5,1038,64,0,0,0,'','Food Vendor - Show different gossip if player is revered with Ogri''la'),
(14,8717,10974,0,0,5,1038,32,0,0,0,'','Food Vendor - Show different gossip if player is honored with Ogri''la'),
(14,8717,10975,0,0,5,1038,16,0,0,0,'','Food Vendor - Show different gossip if player is friendly with Ogri''la'),
(14,8717,10976,0,0,5,1038,8,0,0,0,'','Food Vendor - Show different gossip if player is neutral with Ogri''la'),
(14,8718,10978,0,0,5,1031,224,0,0,0,'','Skyguard Handler Irena - Show different gossip if player is honored, revered or exalted with Sha''tari Skyguards'),
(14,8719,10979,0,0,5,1031,224,0,0,0,'','Skyguard Handler Deesak - Show different gossip if player is honored, revered or exalted with Sha''tari Skyguards'),
(14,8721,10983,0,0,5,1038,128,0,0,0,'','Ogri''la Keg King - Show different gossip if player is exalted with Ogri''la'),
(14,8721,10984,0,0,5,1038,64,0,0,0,'','Ogri''la Keg King - Show different gossip if player is revered with Ogri''la'),
(14,8721,10985,0,0,5,1038,32,0,0,0,'','Ogri''la Keg King - Show different gossip if player is honored with Ogri''la'),
(14,8721,10986,0,0,5,1038,16,0,0,0,'','Ogri''la Keg King - Show different gossip if player is friendly with Ogri''la'),
(14,8721,10987,0,0,5,1038,8,0,0,0,'','Ogri''la Keg King - Show different gossip if player is neutral with Ogri''la'),
(14,8722,10993,0,0,5,1038,128,0,0,0,'','Ogri''la Trader - Show different gossip if player is exalted with Ogri''la'),
(14,8722,10996,0,0,5,1038,64,0,0,0,'','Ogri''la Trader - Show different gossip if player is revered with Ogri''la'),
(14,8722,10998,0,0,5,1038,32,0,0,0,'','Ogri''la Trader - Show different gossip if player is honored with Ogri''la'),
(14,8722,10999,0,0,5,1038,16,0,0,0,'','Ogri''la Trader - Show different gossip if player is friendly with Ogri''la'),
(14,8722,11000,0,0,5,1038,8,0,0,0,'','Ogri''la Trader - Show different gossip if player is neutral with Ogri''la'),
(14,8723,11008,0,0,5,1038,128,0,0,0,'','Ogri''la Steelshaper - Show different gossip if player is exalted with Ogri''la'),
(14,8723,11012,0,0,5,1038,64,0,0,0,'','Ogri''la Steelshaper - Show different gossip if player is revered with Ogri''la'),
(14,8723,11014,0,0,5,1038,32,0,0,0,'','Ogri''la Steelshaper - Show different gossip if player is honored with Ogri''la'),
(14,8723,11016,0,0,5,1038,16,0,0,0,'','Ogri''la Steelshaper - Show different gossip if player is friendly with Ogri''la'),
(14,8723,11017,0,0,5,1038,8,0,0,0,'','Ogri''la Steelshaper - Show different gossip if player is neutral with Ogri''la'),
(14,8724,11022,0,0,5,1038,128,0,0,0,'','Mingo - Show different gossip if player is exalted with Ogri''la'),
(14,8724,11023,0,0,5,1038,64,0,0,0,'','Mingo - Show different gossip if player is revered with Ogri''la'),
(14,8724,11024,0,0,5,1038,32,0,0,0,'','Mingo - Show different gossip if player is honored with Ogri''la'),
(14,8724,11025,0,0,5,1038,16,0,0,0,'','Mingo - Show different gossip if player is friendly with Ogri''la'),
(14,8724,11026,0,0,5,1038,8,0,0,0,'','Mingo - Show different gossip if player is neutral with Ogri''la'),
(14,8726,11036,0,0,5,1038,32,0,0,0,'','Jho''nass - Show different gossip if player is honored with Ogri''la'),
(14,8726,11037,0,0,5,1038,64,0,0,0,'','Jho''nass - Show different gossip if player is revered with Ogri''la'),
(14,8726,11038,0,0,5,1038,128,0,0,0,'','Jho''nass - Show different gossip if player is exalted with Ogri''la'),
(14,8737,11063,0,0,5,1031,32,0,0,0,'','Skyguard Pyrotechnician - Show different gossip if player is honored with Sha''tari Skyguards'),
(14,8737,11061,0,0,5,1031,64,0,0,0,'','Skyguard Pyrotechnician - Show different gossip if player is revered with Sha''tari Skyguards'),
(14,8737,11060,0,0,5,1031,128,0,0,0,'','Skyguard Pyrotechnician - Show different gossip if player is exalted with Sha''tari Skyguards'),
(14,8757,11095,0,0,5,1038,224,0,0,0,'','Kronk - Show different gossip if player is honored, revered or exalted with Ogri''la'),

(15,8304,0,0,0,9,10557,0,0,0,0,'','Rally Zapnabber - Show gossip option only if player has taken quest 10557'),
(15,8304,1,0,0,9,10710,0,0,0,0,'','Rally Zapnabber - Show gossip option only if player has taken quest 10710'),
(15,8304,2,0,0,9,10711,0,0,0,0,'','Rally Zapnabber - Show gossip option only if player has taken quest 10711'),
(15,8304,3,0,0,9,10712,0,0,0,0,'','Rally Zapnabber - Show gossip option only if player has taken quest 10712'),
(15,8304,4,0,0,9,10716,0,0,0,0,'','Rally Zapnabber - Show gossip option only if player has taken quest 10716'),
(15,8304,5,0,0,8,10557,0,0,0,0,'','Rally Zapnabber - Show gossip option only if player has taken quest 10557'),
(15,8429,0,0,0,9,10682,0,0,0,0,'','Overseer Nuaar - Show gossip option only if player has taken quest 10682'),
(15,8454,0,0,0,2,30539,1,0,0,0,'','Rally Zapnabber - Show gossip option only if player has item 30539'),
(15,8455,1,0,0,8,10710,0,0,0,0,'','Rally Zapnabber - Show gossip option only if player has completed quest 10710'),
(15,8455,2,0,0,8,10711,0,0,0,0,'','Rally Zapnabber - Show gossip option only if player has completed quest 10711'),
(15,8455,3,0,0,8,10712,0,0,0,0,'','Rally Zapnabber - Show gossip option only if player has completed quest 10712'),
(15,8455,4,0,0,8,10716,0,0,0,0,'','Rally Zapnabber - Show gossip option only if player has completed quest 10716'),
(15,8660,0,0,0,9,11885,0,0,0,0,'','Skull Pile - Show gossip option only if player has taken quest 11885'),
(15,8660,1,0,0,9,11885,0,0,0,0,'','Skull Pile - Show gossip option only if player has taken quest 11885'),
(15,8660,2,0,0,9,11885,0,0,0,0,'','Skull Pile - Show gossip option only if player has taken quest 11885'),
(15,8660,3,0,0,9,11885,0,0,0,0,'','Skull Pile - Show gossip option only if player has taken quest 11885'),
(15,8660,0,0,1,9,11074,0,0,0,0,'','Skull Pile - Show gossip option only if player has taken quest 11074'),
(15,8660,1,0,1,9,11074,0,0,0,0,'','Skull Pile - Show gossip option only if player has taken quest 11074'),
(15,8660,2,0,1,9,11074,0,0,0,0,'','Skull Pile - Show gossip option only if player has taken quest 11074'),
(15,8660,3,0,1,9,11074,0,0,0,0,'','Skull Pile - Show gossip option only if player has taken quest 11074'),
(15,8671,0,0,0,2,32569,35,0,0,0,'','Fel Crystal Prism - Show gossip option only if player has 35 of item 32569'),
(15,8672,0,0,0,2,32569,10,0,0,0,'','Fel Crystalforge - Show gossip option only if player has 10 of item 32569'),
(15,8672,1,0,0,2,32569,50,0,0,0,'','Fel Crystalforge - Show gossip option only if player has 50 of item 32569'),
(15,8677,0,0,0,2,32569,10,0,0,0,'','Bash''ir Crystalforge - Show gossip option only if player has 10 of item 32569'),
(15,8677,1,0,0,2,32569,50,0,0,0,'','Bash''ir Crystalforge - Show gossip option only if player has 50 of item 32569'),
(15,8685,0,0,0,2,32569,35,0,0,0,'','Show gossip option only if player has 35 of item 32569'),
(15,8687,0,0,0,2,32720,1,0,0,0,'','Ancient Skull Pile - Show gossip option only if player has 1 of item 32720'),
(15,8689,0,0,0,2,32569,35,0,0,0,'','Show gossip option only if player has 35 of item 32569'),
(15,8690,0,0,0,2,32569,35,0,0,0,'','Show gossip option only if player has 35 of item 32569'),
(15,8691,0,0,0,2,32569,35,0,0,0,'','Show gossip option only if player has 35 of item 32569'),
(15,8718,1,0,0,5,1031,224,0,0,0,'','Skyguard Handler Irena - Show gossip option only if player is honored, revered or exalted with Sha''tari Skyguards'),
(15,8719,1,0,0,5,1031,224,0,0,0,'','Skyguard Handler Deesak - Show gossip option only if player is honored, revered or exalted with Sha''tari Skyguards');
UPDATE `reference_loot_template` SET `entry`=14011 WHERE `entry`=3014;
UPDATE `creature_loot_template` SET `mincountOrRef`=-14011 WHERE `mincountOrRef`=-3014;
ALTER TABLE `item_template` ADD `flagsCustom` INT(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `maxMoneyLoot`;
UPDATE `item_template` SET `flagsCustom`=`flagsCustom`|0x1 WHERE `Duration`<0;
UPDATE `item_template` SET `duration`=ABS(`duration`);
ALTER TABLE `item_template` CHANGE `Duration` `duration` INT(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ArmorDamageModifier`;
-- http://www.youtube.com/watch?v=G89A9ITuTfs
-- Missing combat spell entries; Cata spells: 70316 (Cleave),84419 (Challenging Shout)

-- Paval should also attack --- faction 35 to 232 ----
-- Couldn't fix Ogron evading when entering combat

-- [Q] Questioning Reethe
SET @ENTRY_OGRON := 4983; -- Ogron
SET @ENTRY_PAVAL := 4980; -- Paval Reethe
SET @ENTRY_CALDWELL := 5046; -- Lieutenant Caldwell
SET @ENTRY_SKIRM := 5044; -- Theramore Skirmisher
SET @ENTRY_HALAN := 5045; -- Private Hallan
SET @SPELL_FAKE_SHOT := 7105;

-- Quest completable by external event
UPDATE `quest_template` SET `SpecialFlags`=`SpecialFlags`|2 WHERE `Id`=1273; -- Questioning Reethe

-- Set SAI AIName
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@ENTRY_OGRON,@ENTRY_PAVAL,@ENTRY_CALDWELL,@ENTRY_SKIRM,@ENTRY_HALAN);

-- Template updates
UPDATE `creature` SET `spawntimesecs`=120 WHERE `id`=@ENTRY_PAVAL;
UPDATE `creature_template` SET `faction_A`=35,`faction_H`=35 WHERE `entry` IN (@ENTRY_CALDWELL,@ENTRY_SKIRM,@ENTRY_HALAN); -- Script changes faction to 151 later
UPDATE `creature_template` SET `equipment_id`=189 WHERE `entry`=@ENTRY_HALAN;
UPDATE `creature_model_info` SET `bounding_radius`=1.29485,`combat_reach`=2.175,`gender`=0 WHERE `modelid`=10704; -- Ogron
DELETE FROM `creature_template_addon` WHERE `entry` IN (@ENTRY_OGRON,@ENTRY_PAVAL);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@ENTRY_OGRON,0,0,257,0,NULL),-- Ogron
(@ENTRY_PAVAL,0,0,1,0,NULL); -- Paval Reethe

-- Waypoints
DELETE FROM `waypoints` WHERE `entry`=@ENTRY_OGRON;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY_OGRON,1,-3349.78,-3134.81,28.5267,'Ogron'),
(@ENTRY_OGRON,2,-3366.01,-3144.31,35.2659,'Ogron'),
(@ENTRY_OGRON,3,-3367.34,-3164.10,35.9618,'Ogron'),
(@ENTRY_OGRON,4,-3372.77,-3174.81,35.8517,'Ogron'),
(@ENTRY_OGRON,5,-3378.53,-3191.64,35.7204,'Ogron'),
(@ENTRY_OGRON,6,-3370.92,-3190.48,34.1671,'Ogron'),
(@ENTRY_OGRON,7,-3366.86,-3209.47,33.9713,'Ogron');
-- (@ENTRY_OGRON,8,-3365.56,-3209.19,34.0187,'Ogron');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY_OGRON,@ENTRY_HALAN,@ENTRY_SKIRM,@ENTRY_CALDWELL,@ENTRY_PAVAL) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY_OGRON*100,@ENTRY_OGRON*100+1,@ENTRY_CALDWELL*100,@ENTRY_HALAN*100,@ENTRY_PAVAL*100,@ENTRY_CALDWELL*100+1,@ENTRY_PAVAL*100+1,@ENTRY_OGRON*100+2) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY_OGRON,0,0,0,6,0,100,0,0,0,0,0,6,1273,0,0,0,0,0,7,0,0,0,0,0,0,0,'Ogron - On Death - Fail Quest'),
(@ENTRY_OGRON,0,1,0,19,0,100,0,1273,0,0,0,80,@ENTRY_OGRON*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ogron - On Quest Accept - Script'),
(@ENTRY_OGRON*100,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ogron - On Script - Say "I noticed some fire.."'),
(@ENTRY_OGRON*100,9,1,0,0,0,100,0,0,0,0,0,53,0,@ENTRY_OGRON,0,0,0,2,1,0,0,0,0,0,0,0,'Ogron - On Script - Start WP'),
(@ENTRY_OGRON,0,2,0,40,0,100,0,5,@ENTRY_OGRON,0,0,54,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ogron - On WP 5 - Pause Path'),
(@ENTRY_OGRON,0,3,4,55,0,100,0,5,@ENTRY_OGRON,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ogron - On WP 5 - Say "That''s Reethe..."'), -- Link to 4
(@ENTRY_OGRON,0,4,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,6.281,'Ogron - On Link (WP 5) - Set Orientation'),
(@ENTRY_OGRON,0,5,0,58,0,100,0,7,@ENTRY_OGRON,0,0,80,@ENTRY_OGRON*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ogron - On WP 7 - Run Second Script'),
(@ENTRY_OGRON*100+1,9,0,0,0,0,100,0,0,0,0,0,54,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Paval - On Script - Pause WP'),
(@ENTRY_OGRON*100+1,9,1,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,9,@ENTRY_PAVAL,0,15,0,0,0,0,'Paval - On Script - Say "W-what do you..."'),
(@ENTRY_OGRON*100+1,9,2,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,9,@ENTRY_PAVAL,0,15,0,0,0,0,'Paval - On Script - Say "I swear, I didn''t..."'),
(@ENTRY_OGRON*100+1,9,3,0,0,0,100,0,4000,4000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ogron - On Script - Say "Just tell us..."'),
(@ENTRY_OGRON*100+1,9,4,0,0,0,100,0,3500,3500,0,0,1,2,0,0,0,0,0,9,@ENTRY_PAVAL,0,15,0,0,0,0,'Paval - On Script - Say "I... Well, I may..."'),
(@ENTRY_OGRON*100+1,9,5,0,0,0,100,0,3500,3500,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ogron - On Script - Say "Look here,if you..."'),
(@ENTRY_OGRON*100+1,9,6,0,0,0,100,0,2000,2000,0,0,1,3,0,0,0,0,0,9,@ENTRY_PAVAL,0,15,0,0,0,0,'Paval - On Script - Say "Not one step closer..."'),
(@ENTRY_OGRON*100+1,9,7,0,0,0,100,0,3000,3000,0,0,1,4,0,0,0,0,0,9,@ENTRY_PAVAL,0,15,0,0,0,0,'Paval - On Script - Say "And I don''t know..."'),
(@ENTRY_OGRON*100+1,9,8,0,0,0,100,0,3500,3500,0,0,1,5,0,0,0,0,0,9,@ENTRY_PAVAL,0,15,0,0,0,0,'Paval - On Script - Say "What was that? Did..."'),
(@ENTRY_OGRON*100+1,9,9,0,0,0,100,0,0,0,0,0,12,@ENTRY_HALAN,2,5*60*1000,0,0,0,8,0,0,0,-3384.600098,-3211.340088,34.868,0,'Ogron - On Script - Summon Private Hallan'),
(@ENTRY_OGRON*100+1,9,10,0,0,0,100,0,0,0,0,0,12,@ENTRY_SKIRM,2,5*60*1000,0,0,0,8,0,0,0,-3384.443604,-3208.477539,34.849,0,'Ogron - On Script - Summon Theramore Skirmisher'),
(@ENTRY_OGRON*100+1,9,11,0,0,0,100,0,0,0,0,0,12,@ENTRY_SKIRM,2,5*60*1000,0,0,0,8,0,0,0,-3385.615234,-3209.867432,34.904,0,'Ogron - On Script - Summon Theramore Skirmisher'),
(@ENTRY_OGRON*100+1,9,12,0,0,0,100,0,0,0,0,0,12,@ENTRY_CALDWELL,2,5*60*1000,0,0,0,8,0,0,0,-3381.498535,-3209.195068,35.037,0,'Ogron - On Script - Summon Lieutenant Caldwell'),
(@ENTRY_OGRON*100+1,9,13,0,0,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ogron - On Script - Set react state aggresive'),

(@ENTRY_HALAN,0,0,0,11,0,100,0,0,0,0,0,46,5,0,0,0,0,0,1,0,0,0,0,0,0,0,'Hallan - On Spawn - Move forward'),
(@ENTRY_SKIRM,0,0,0,11,0,100,0,0,0,0,0,46,4.5,0,0,0,0,0,1,0,0,0,0,0,0,0,'Skirmisher - On Spawn - Move forward'),
(@ENTRY_HALAN,0,1,0,11,0,100,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Hallan - On Spawn - Set Run 0'),
(@ENTRY_SKIRM,0,1,0,11,0,100,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Skirmisher - On Spawn - Set Run 0'),

(@ENTRY_CALDWELL,0,0,0,11,0,100,0,0,0,0,0,80,@ENTRY_CALDWELL*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Caldwell - On spawn - Script'),
(@ENTRY_CALDWELL*100,9,0,0,0,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,-3373.983398,-3210.881104,34.711,0,'Caldwell - On Script - Move'),
(@ENTRY_CALDWELL*100,9,1,0,0,0,100,0,2000,2000,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Caldwell - On Script - Say "Paval Reethe! Found..."'),
(@ENTRY_CALDWELL*100,9,2,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Caldwell - On Script - Say "Private, show Lieutenant..."'),
(@ENTRY_CALDWELL*100,9,3,0,0,0,100,0,500,500,0,0,45,1,1,0,0,0,0,11,@ENTRY_HALAN,20,0,0,0,0,0,'Caldwell - On Script - Set Data Hallan'),

(@ENTRY_HALAN,0,2,0,38,0,100,0,1,1,0,0,80,@ENTRY_HALAN*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Hallan - On Data Set - Run Script'),
(@ENTRY_HALAN*100,9,0,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Hallan - On Script - Say "Gladly, sir."'),
(@ENTRY_HALAN*100,9,1,0,0,0,100,0,0,0,0,0,11,@SPELL_FAKE_SHOT,0,0,0,0,0,11,@ENTRY_PAVAL,60,0,0,0,0,0,'Hallan - On Script - Cast Fake Shot'),

(@ENTRY_PAVAL,0,0,0,8,0,100,0,@SPELL_FAKE_SHOT,0,0,0,80,@ENTRY_PAVAL*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Paval - On Spellhit - Run Script'),
(@ENTRY_PAVAL*100,9,0,0,0,0,100,0,0,0,0,0,1,6,0,0,0,0,0,9,@ENTRY_PAVAL,0,15,0,0,0,0,'Paval - On Script - Say "Paval staggers back..."'),
(@ENTRY_PAVAL*100,9,1,0,0,0,100,0,2000,2000,0,0,1,7,0,0,0,0,0,9,@ENTRY_PAVAL,0,15,0,0,0,0,'Paval - On Script - Say "Ugh... Hallan..."'),
(@ENTRY_PAVAL*100,9,2,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.771,'Paval - On Script - Face Caldwell'),
(@ENTRY_PAVAL*100,9,3,0,0,0,100,0,2000,2000,0,0,1,2,0,0,0,0,0,9,@ENTRY_CALDWELL,0,15,0,0,0,0,'Caldwell - On Script - Say "Now let''s..."'),
(@ENTRY_PAVAL*100,9,4,0,0,0,100,0,1000,1000,0,0,1,4,0,0,0,0,0,9,@ENTRY_OGRON,0,15,0,0,0,0,'Ogron - On Script - Say "Damn it! You..."'),
(@ENTRY_PAVAL*100,9,5,0,0,0,100,0,0,0,0,0,2,16,0,0,0,0,0,9,@ENTRY_HALAN,0,15,0,0,0,0,'Paval - On Script - Set faction 151 on Hallan'),
(@ENTRY_PAVAL*100,9,6,0,0,0,100,0,0,0,0,0,2,16,0,0,0,0,0,9,@ENTRY_SKIRM,0,15,0,0,0,0,'Paval - On Script - Set faction 151 on Skirm'),
(@ENTRY_PAVAL*100,9,7,0,0,0,100,0,0,0,0,0,2,16,0,0,0,0,0,9,@ENTRY_CALDWELL,0,15,0,0,0,0,'Paval - On Script - Set faction 151 on Caldwell'),

(@ENTRY_CALDWELL,0,1,0,6,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,@ENTRY_PAVAL,20,0,0,0,0,0,'Caldwell - On Death - Set data to Paval'),
(@ENTRY_CALDWELL,0,2,0,6,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,@ENTRY_OGRON,20,0,0,0,0,0,'Caldwell - On Death - Set data to Ogron'),
(@ENTRY_OGRON,0,7,0,38,0,100,0,1,1,0,0,69,0,0,0,0,0,0,8,0,0,0,-3366.86,-3209.47,33.9713,0,'Ogron - On Data set - Move to pos'),
(@ENTRY_PAVAL,0,6,0,38,0,100,0,1,1,0,0,80,@ENTRY_PAVAL*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Paval - On Data Set - Run second timed action list'),
(@ENTRY_PAVAL*100+1,9,0,0,0,0,100,0,0,0,0,0,15,1273,0,0,0,0,0,17,0,15,0,0,0,0,0,'Paval - On Script - Quest Credit'),
(@ENTRY_PAVAL*100+1,9,1,0,0,0,100,0,2000,2000,0,0,84,5,0,0,0,0,0,9,@ENTRY_OGRON,0,15,0,0,0,0,'Ogron - On Script - Say "Still with us..."'),
(@ENTRY_PAVAL*100+1,9,2,0,0,0,100,0,2000,2000,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Paval - On Script - Say "Must be your lucky day..."'),
(@ENTRY_PAVAL*100+1,9,3,0,0,0,100,0,0,0,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Paval - On Script - Die'),
(@ENTRY_PAVAL*100+1,9,4,0,0,0,100,0,1000,1000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Paval - On Script - Despawn'),
(@ENTRY_PAVAL*100+1,9,5,0,0,0,100,0,1000,1000,0,0,84,6,0,0,0,0,0,9,@ENTRY_OGRON,0,15,0,0,0,0,'Ogron - On Script - Say "Looks dead to me..."'),
(@ENTRY_PAVAL*100+1,9,6,0,0,0,100,0,3500,3500,0,0,84,7,0,0,0,0,0,9,@ENTRY_OGRON,0,15,0,0,0,0,'Ogron - On Script - Say "By the way..."'),
(@ENTRY_PAVAL*100+1,9,7,0,0,0,100,0,0,0,0,0,45,4,4,0,0,0,0,9,@ENTRY_OGRON,0,15,0,0,0,0,'Paval - On Script - Set Data Ogron'),

(@ENTRY_OGRON,0,8,0,0,0,100,1,500,1500,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ogron - In combat say "Me smash.." or "I''ll crush you!"');

-- Texts
DELETE FROM `creature_text` WHERE `entry` IN (@ENTRY_OGRON,@ENTRY_PAVAL,@ENTRY_CALDWELL,@ENTRY_HALAN);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY_OGRON,0,0,'I noticed some fire on that island over there. A human, too. Let''s go check it out, $N.',12,0,0,0,0,0,'Ogron'),
(@ENTRY_OGRON,1,0,'That''s Reethe alright. Let''s go see what he has to say, yeah?',12,0,0,0,0,0,'Ogron'),

(@ENTRY_PAVAL,0,0,'W-what do you want? Just leave me alone...',12,0,0,0,0,0,'Paval'),
(@ENTRY_PAVAL,1,0,'I swear, I didn''t steal anything from you! Here, take some of my supplies, just go away!',12,0,0,0,0,0,'Paval'),
(@ENTRY_OGRON,2,0,'Just tell us what you know about the Shady Rest Inn, and I won''t bash your skull in.',12,0,0,0,0,0,'Ogron'),
(@ENTRY_PAVAL,2,0,'I... Well, I may of taken a little thing or two from the inn... but what would an ogre care about that?',12,0,0,0,0,0,'Paval'),
(@ENTRY_OGRON,3,0,'Look here, if you don''t tell me about the fire--',12,0,0,0,0,0,'Ogron'),
(@ENTRY_PAVAL,3,0,'Not one step closer, ogre!',12,0,0,0,0,0,'Paval'),
(@ENTRY_PAVAL,4,0,'And I don''t know anything about this fire of yours...',12,0,0,0,0,0,'Paval'),
(@ENTRY_PAVAL,5,0,'What was that? Did you hear something?',12,0,0,0,0,0,'Paval'),

(@ENTRY_CALDWELL,0,0,'Paval Reethe! Found you at last. And consorting with ogres now? No fear, even deserters and traitors are afforded some mercy.',12,0,0,0,0,0,'Caldwell'),
(@ENTRY_CALDWELL,1,0,'Private, show Lieutenant Reethe some mercy.',12,0,0,0,0,0,'Caldwell'),
(@ENTRY_HALAN,0,0,'Gladly, sir.',12,0,0,0,0,0,'Hallan'),
(@ENTRY_PAVAL,6,0,'%s staggers back as the arrow lodges itself deeply in his chest.',16,0,0,0,0,0,'Paval'),
(@ENTRY_PAVAL,7,0,'Ugh... Hallan, didn''t think you had it in you...',12,0,0,16,0,0,'Paval'),
(@ENTRY_CALDWELL,2,0,'Now, let''s clean up the rest of the trash, men!',12,0,0,0,0,0,'Caldwell'),
(@ENTRY_OGRON,4,0,'Damn it! You''d better not die on me, human!',12,0,0,0,0,0,'Ogron'),
-- QC
(@ENTRY_OGRON,5,0,'Still with us, Reethe?',12,0,0,0,0,0,'Ogron'),
(@ENTRY_PAVAL,8,0,'Must be your lucky day. Alright, I''ll talk. Just leave me alone. Look, you''re not going to believe me, but it wa... oh, Light, looks like the girl could shoot...',12,0,0,0,0,0,'Paval'),
-- Paval dies & despawns
(@ENTRY_OGRON,6,0,'Looks dead to me. Not much use to us like this. You''d better go back and tell Krog what happened.',12,0,0,0,0,0,'Ogron'),
(@ENTRY_OGRON,7,0,'By the way, thanks for watching my back.',12,0,0,0,0,0,'Ogron'),

(@ENTRY_OGRON,8,0,'Me smash! You die!',12,0,0,0,0,0,'Ogron'),
(@ENTRY_OGRON,8,1,'I''ll crush you!',12,0,0,0,0,0,'Ogron');
-- Grunt Ounda should only have a female model
UPDATE `creature_model_info` SET
 `modelid_other_gender` = 0
WHERE `modelid` = 4260;
-- Update drop chance of Ensorcelled Parchment from 0.2% to 100%
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=100 WHERE `entry`=1570 AND `item`=3706;
-- Change spawntime from 2 secs to 3 minutes
UPDATE `gameobject` SET `spawntimesecs`=180 WHERE `id`=1765;
-- Ai and Script Update/Addition for Taragaman the Hungerer
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=11520;
DELETE FROM `smart_scripts` WHERE `entryorguid`=11520;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=11520;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(11520, 0, 0, 0, 0, 0, 85, 2, 5000, 5000, 15000, 20000, 11, 18072, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Taragaman the Hungerer  - Cast Uppercut'),
(11520, 0, 1, 0, 0, 0, 75, 2, 8000, 8000, 20000, 25000, 11, 11970, 1, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 'Taragaman the Hungerer - Cast Fire Nova');

-- Ai and Script Update/Addition for Jergosh the Invoker
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=11518;
DELETE FROM `smart_scripts` WHERE `entryorguid`=11518;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=11518;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(11518, 0, 1, 0, 0, 0, 75, 2, 12000, 12000, 30000, 30000, 11, 20800, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Jergosh the Invoker - Cast Immolat'),
(11518, 0, 0, 0, 0, 0, 85, 2, 30000, 30000, 120000, 120000, 11, 11980, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Jergosh the Invoker - Cast Curse of Weakness');

-- Ai and Script Update/Addition for Bazzalan
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=11519;
DELETE FROM `smart_scripts` WHERE `entryorguid`=11519;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=11519;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(11519, 0, 1, 0, 0, 0, 75, 2, 3000, 5000, 12000, 15000, 11, 2818, 1, 32, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Bazzalan - Cast Poison'),
(11519, 0, 0, 0, 0, 0, 85, 2, 8000, 8000, 16000, 17000, 11, 14873, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Bazzalan - Cast Sinister Strike');

-- Ai and Script Update/Addition for Oggleflint
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=11517;
DELETE FROM `smart_scripts` WHERE `entryorguid`=11517;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=11517;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(11517, 0, 0, 0, 0, 0, 70, 2, 8000, 8000, 15000, 15000, 11, 40505, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Oggleflint - Cast Cleave');
-- Add Missing Draconic for Dummies Objects
SET @GUID := 4595;
DELETE FROM `gameobject` WHERE `guid` BETWEEN @GUID AND @GUID+2;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES 
(@GUID,180665,0,1,1,-8340.196,413.7499,124.489677,2.82742977,0,0,0.987688,0.156436,180,255,1),
(@GUID+1,180666,0,1,1,1628.83984,133.9376,-60.96726,-0.401424885,0,0,-0.199368,0.979925,180,255,1),
(@GUID+2,180667,469,1,1,-7526.57,-924.776,458.826,0.558504,0,0,0.275637,0.961262,180,255,1);
-- Add missing gossip for Draconic for Dummies objects
DELETE FROM `gossip_menu` WHERE `entry` IN (6668,6669,6670);
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(6668,7937),(6669,7937),(6670,7937);
-- Fix faction for Draconic for Dummies objects
UPDATE `gameobject_template` SET `faction`=35 WHERE `entry` IN (180665,180667);
 -- EAI to SAI Convert Ragefire Trogg
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=11318;
DELETE FROM `smart_scripts` WHERE `entryorguid`=11318;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=11318;
INSERT INTO smart_scripts (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES (11318, 0, 0, 0, 9, 0, 100, 2, 0, 5, 5000, 8000, 11, 11976, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Ragefire Trogg - Cast Strike');

-- EAI to SAI Convert Earthborer
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=11320;
DELETE FROM `smart_scripts` WHERE `entryorguid`=11320;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=11320;
INSERT INTO smart_scripts (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES (11320, 0, 0, 0, 0, 0, 70, 2, 6000, 6000, 10000, 10000, 11, 18070, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Earthborer - Cast Earthborer Acid');

-- EAI to SAI Convert Searing Blade Cultist
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=11322;
DELETE FROM `smart_scripts` WHERE `entryorguid`=11322;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=11322;
INSERT INTO smart_scripts (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES (11322, 0, 0, 0, 0, 0, 85, 2, 12000, 12000, 30000, 30000, 11, 18266, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Searing Blade Cultist - Cast Curse of Agony');

-- EAI to SAI Convert Searing Blade Enforcer
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=11323;
DELETE FROM `smart_scripts` WHERE `entryorguid`=11323;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=11323;
INSERT INTO smart_scripts (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES (11323, 0, 0, 0, 0, 0, 75, 2, 8000, 8000, 10000, 10000, 11, 8242, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Searing Blade Enforcer - Cast Shield Slam');
-- update the book to always drop of ragnaros
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `entry`=11502 AND `item`=21110;
-- Add a couple more Domesticated Felboar Spawns
SET @GUID := 42567;
DELETE FROM `creature` WHERE `guid` IN (@GUID,@GUID+1);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@GUID,21195,530,1,1,0,0,-2678.16016,1477.65625,26.9172077,4.86340427,300,5,0,1,0,1),
(@GUID+1,21195,530,1,1,0,0,-2691.666,1525,21.3857346,0.3155697,300,5,0,1,0,1);
-- Add missing 7th Legion Chain Gun spawns
DELETE FROM `creature` WHERE `guid` IN (42569,42570,42663,42664);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(42569,27714,571,1,1,25331,0,3665.613,-1209.412,102.4201,4.206244,120,0,0,1,0,0),
(42570,27714,571,1,1,25331,0,3660.56,-1207.094,102.4201,4.29351,120,0,0,1,0,0),
(42663,27714,571,1,1,25331,0,3677.009,-1174.462,102.3367,1.169371,120,0,0,1,0,0),
(42664,27714,571,1,1,25331,0,3682.874,-1177.179,102.4757,1.169371,120,0,0,1,0,0);
-- Add Spells for 7th Legion Chain Gun
UPDATE `creature_template` SET `spell1`=49190,`spell2`=49550 WHERE `entry`=27714;
DELETE FROM `spell_script_names` WHERE `spell_id` IN (50341,50344);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(50341, 'spell_gen_touch_the_nightmare'),
(50344, 'spell_gen_dream_funnel');
-- Add Generic Harpoon gun script to prevent movement
UPDATE `creature_template` SET `ScriptName`= 'npc_generic_harpoon_cannon' WHERE `entry` IN (27714,30066,30337);
/* Quest:  Kick, What Kick? - 12589 by Nay */

-- Lucky Wilhelm: 0xF150006D960041CB
-- Drostan:       0xF130006EA80041CA
-- Apple:         0xF130006D950041C8

-- Remove old conditions, now done in cpp
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=51330;

-- Spells conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (51331,51332,51366);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 51331, 0, 0, 31, 0, 3, 28053, 0, 0, 0, '', 'Hit Apple - Apple - Q: Kick, What Kick?'),
(13, 1, 51332, 0, 0, 31, 0, 3, 28054, 0, 0, 0, '', 'Miss Apple - Wilhelm - Q: Kick, What Kick?'),
(13, 1, 51366, 0, 0, 31, 0, 3, 28093, 0, 0, 0, '', 'Miss Apple, Hit Bird - Sholazar Tickbird - Q: Kick, What Kick?');

-- Assign script to spell
DELETE FROM `spell_script_names` WHERE `spell_id`=51330;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(51330, 'spell_q12589_shoot_rjr');

-- Spellclick spell for Wilhelm
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=28054;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`cast_flags`,`user_type`) VALUES
(28054,50556,1,0);

-- Addon data
DELETE FROM `creature_template_addon` WHERE `entry` IN (28053,28328,30737,28346);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(28053,0,0,1,0, NULL), -- Apple
(28328,0,0,257,0, NULL), -- Drostan
(30737,0,0,256,0, NULL), -- Nesingwary Game Warden
(28346,0,0,1,0, NULL); -- Crunchy

-- Put Apple in Wilhelm's head
DELETE FROM `vehicle_template_accessory` WHERE `entry`=28054 AND `accessory_entry`=28053;
INSERT INTO `vehicle_template_accessory` (`entry`,`accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(28054, 28053, -1, 0, 'Lucky Wilhelm - Apple', 6, 10000);

-- Says and yells
DELETE FROM `creature_text` WHERE `entry`=28328 OR (`entry`=28054 AND `groupid` IN (0,1));
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(28328, 0, 0, 'The only thing hurt is your pride, lad. Buck up!', 12, 0, 100, 11, 0, 0, 'Drostan to Lucky Wilhelm'),
(28328, 0, 1, 'Stop whining. You''ve still got your luck.', 12, 0, 100, 11, 0, 0, 'Drostan to Lucky Wilhelm'),
(28328, 0, 2, 'Bah, it''s an improvement.', 12, 0, 100, 0, 0, 0, 'Drostan to Lucky Wilhelm'),
(28328, 0, 3, 'Calm down lad, it''s just a birdshot!', 12, 0, 100, 0, 0, 0, 'Drostan to Lucky Wilhelm'),
(28054, 0, 0, 'Not the ''stache! Now I''m asymmetrical!', 12, 0, 100, 5, 0, 0, 'Lucky Wilhelm'),
(28054, 0, 1, 'Ouch! That''s it, I quit the target business!', 12, 0, 100, 0, 0, 0, 'Lucky Wilhelm'),
(28054, 0, 2, 'My ear! You grazed my ear!', 12, 0, 100, 0, 0, 0, 'Lucky Wilhelm'),
(28054, 1, 0, 'Good shot!', 12, 0, 100, 4, 0, 0, 'Lucky Wilhelm');

/* * Hit: */
/* player casts Shoot RJR on Lucky */
/* apple gets hit by 51331 (Hit Apple) by player */
/* after that apple casts 51371 (Apple Falls to ground) on self */
/* Wilhelm says Good shot! */
/* reward killcredit 28053 */

/* * Miss: */
/* player casts Shoot RJR on Lucky */
/* lucky gets hit by 51332 (Miss Apple) by player */
/* lucky says random text */
/* drostan says random text */

/* * Miss, Hit Bird - guessed */
/* player casts Shoot RJR on Lucky */
/* bird gets hit by 51366 (Miss Apple, Hit Bird and dies) */
/* bird gets hit by 51369 (Tickbird Signal to Fall) */
/* lucky says random text */
/* drostan says random text */
-- Set same flag for diff_entry_1
UPDATE `creature_template` SET `npcflag`=129 WHERE `entry`=30796;
-- Creature addon
DELETE FROM `creature_template_addon` WHERE `entry` IN (26421,26321,26333);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(26421,0,0,1,0, NULL), -- Woodlands Walker
(26321,0,0,1,64, '47044'), -- Lothalor Ancient (Cosmetic - Confused State Visual (Big))
(26333,0,0,1,0, '32566 46967'); -- Corrupted Lothalor Ancient (Purple Banish State, Purple Banish State - Breath)

-- Woodlands Walker already has spellclick spell: 47575 (Strengthen the Ancients: On Interact Dummy to Woodlands Walker)

-- Monster emotes
DELETE FROM `creature_text` WHERE `entry` IN (26421,26321);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(26421, 0, 0, 'Breaking off a piece of its bark, the %s hands it to you before departing.', 16, 0, 100, 0, 0, 0, 'Woodlands Walker'),
(26421, 1, 0, 'The %s is angered by your request and attacks!', 16, 0, 100, 0, 0, 0, 'Woodlands Walker'),
(26321, 0, 0, 'The %s gives you its thanks.', 16, 0, 100, 0, 0, 1525, 'Lothalor Ancient');

-- Assign scripts to spells
DELETE FROM `spell_script_names` WHERE `spell_id` IN (47575,47530);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(47575, 'spell_q12096_q12092_dummy'),
(47530, 'spell_q12096_q12092_bark');

/*
- player spellclicks Woodlands Walker, casts 47575 on the tree Woodlands Walker: two outcomes:

- - tree turns enemy:
* say The %s is angered by your request and attacks!
* change faction to 14
* start attack

- - tree stays friendly:
* cast 47550 (Create Bark of the Walkers)on player
* say Breaking off a piece of its bark, the %s hands it to you before departing.
* despawn


- player uses item on Lothalor Ancient (47530 (Bark of the Walkers)):
* tree says The %s gives you its thanks.
* aura 47044 (Cosmetic - Confused State Visual (Big)) is removed
* despawns after 4 secs
*/
-- Add missing gossip for quest 9738 "Lost in Action"
DELETE FROM `gossip_menu` WHERE `entry` IN (7521,7520,7540,7519,7525);
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(7521,9121),(7520,9119),(7540,9144),(7519,9118),(7525,9125);
-- Add Gossip Options
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (7520,7540);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`) VALUES
(7520,0,0,"Alright, Bite, I'll let you out.",1,1,0,0,0,0,''),
(7540,0,0,"Naturalist, please grant me your boon.",1,1,0,0,0,0,'');
-- Conditions for the gossip options
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (15) AND `SourceGroup` IN (7520,7540);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`comment`) VALUES
(15,7520,0,0,9,9738,'Gossip option 0 requires quest 9738 active'),
(15,7540,0,0,9,9738,'Gossip option 0 requires quest 9738 active');  -- cast 34906 on player
-- Add gossip to creature
UPDATE `creature_template` SET `gossip_menu_id`=7521 WHERE `entry`=17885;
UPDATE `creature_template` SET `gossip_menu_id`=7520 WHERE `entry`=17893;
UPDATE `creature_template` SET `gossip_menu_id`=7519 WHERE `entry`=17890;
UPDATE `creature_template` SET `gossip_menu_id`=7525 WHERE `entry`=17827;
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry` IN (17893,17957);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(17893,0,0, 'Over here!  Yeah, over here... I''m in this cage!!!',14,0,100,0,0,0, 'Naturalist Bite'),
(17893,1,0, 'Uh oh!  It would appear that all of the noise you''ve been making has attracted some unwanted attention!',12,0,100,0,0,0, 'Naturalist Bite'),
(17957,0,0, 'Intrudersss with the prisssoner!  Kill them!!!',14,0,100,0,0,0, 'Coilfang Champion');
-- Earthbinder Rayge SAI
SET @ENTRY  := 17885;
UPDATE `creature` SET `position_x`=296.6974,`position_y`=-362.373,`position_z`=50.15062,`orientation`=5.5676 WHERE `guid`=86372;
UPDATE `creature_template` SET `unit_flags`=512,`AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
UPDATE `creature_template_addon` SET `bytes2`=257,`auras`= '31526' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,64,0,100,6,0,0,0,0,33,@ENTRY,0,0,0,0,0,7,0,0,0,0,0,0,0,'Earthbinder Rayge - On Gossip Hello - Give Kill Credit');
-- Weeder Greenthumb SAI
SET @ENTRY  := 17890;
UPDATE `creature_template` SET `unit_flags`=512,`AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
UPDATE `creature_template_addon` SET `bytes1`=0,`bytes2`=257,`auras`= '29266' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,64,0,100,6,0,0,0,0,33,@ENTRY,0,0,0,0,0,7,0,0,0,0,0,0,0,'Weeder Greenthumb - On Gossip Hello - Give Kill Credit');
-- Claw SAI
SET @ENTRY  := 17827;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,7400,7400,20000,20000,11,39435,0,0,0,0,0,5,0,0,0,0,0,0,0,'Claw - Combat - Cast Feral Charge'),
(@ENTRY,0,1,0,0,0,100,6,2400,2400,10600,21200,11,31429,0,0,0,0,0,1,0,0,0,0,0,0,0,'Claw - Combat - Cast Echoing Roar'),
(@ENTRY,0,2,0,0,0,100,6,5000,5000,30500,30500,11,34971,0,0,0,0,0,1,0,0,0,0,0,0,0,'Claw - Combat - Cast Frenzy'),
(@ENTRY,0,3,0,0,0,100,6,5300,5300,11100,21500,11,34298,0,0,0,0,0,2,0,0,0,0,0,0,0,'Claw - Combat - Cast Maul'),
(@ENTRY,0,4,0,2,1,100,7,0,20,0,0,80,@ENTRY*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Claw - HP@20% - Run Script'),
(@ENTRY,0,5,0,64,0,100,6,0,0,0,0,33,17894,0,0,0,0,0,7,0,0,0,0,0,0,0,'Claw - On Gossip Hello - Give Kill Credit'),
(@ENTRY,0,6,0,6,0,100,6,0,0,0,0,45,0,1,0,0,0,0,19,17826,100,0,0,0,0,0,'Claw - On Death - Set Data on Swamplord Musel''ek'),
(@ENTRY,0,7,0,38,0,100,6,0,1,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Swamplord Musel''ek - On dataset - Set Phase 1'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,28,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Claw - Script - Remove all auras'),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Claw - Script - Set Run on'),
(@ENTRY*100,9,2,0,0,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,289.2553,-129.7001,29.82101,2.495821,'Claw - Script - move to'),
(@ENTRY*100,9,3,0,0,0,100,0,0,0,0,0,2,1660,0,0,0,0,0,1,0,0,0,0,0,0,0,'Claw - Script - Set faction'),
(@ENTRY*100,9,4,0,0,0,100,0,0,0,0,0,18,525072,0,0,0,0,0,1,0,0,0,0,0,0,0,'Claw - Script - Set unitflags'),
(@ENTRY*100,9,5,0,0,0,100,0,0,0,0,0,3,0,2289,0,0,0,0,1,0,0,0,0,0,0,0,'Claw - Script - Set displayid'),
(@ENTRY*100,9,6,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Claw - Script - Set npcflags'),
(@ENTRY*100,9,7,0,0,0,100,0,4000,4000,4000,4000,69,0,0,0,0,0,0,8,0,0,0,290.5323,-125.3524,29.69708,1.824913,'Claw - Script - move to'),
(@ENTRY*100,9,8,0,0,0,100,0,0,0,0,0,3,17894,0,0,0,0,0,1,0,0,0,0,0,0,0,'Claw - Script - Set entry'),
(@ENTRY*100,9,9,0,0,0,100,0,0,0,0,0,18,557824,0,0,0,0,0,1,0,0,0,0,0,0,0,'Claw - Script - Set unitflags'),
(@ENTRY*100,9,10,0,0,0,100,0,0,0,0,0,90,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Claw - Script - Set bytes1'),
(@ENTRY*100,9,11,0,0,0,100,0,500,500,500,500,81,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Claw - Script - Set npcflags');
-- Swamplord Musel'ek SAI
SET @ENTRY  := 17826;
SET @SPELL1 := 18813; -- Knock Away
SET @SPELL2 := 22907; -- Shoot
SET @SPELL3 := 31615; -- Hunter's Mark
SET @SPELL4 := 31946; -- Throw Freezing Trap
SET @SPELL5 := 31623; -- Aimed Shot
SET @SPELL6 := 34974; -- Multi-Shot
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,0,0,100,6,35000,38000,30000,40000,11,@SPELL1,1,0,0,0,0,2,0,0,0,0,0,0,0,'Swamplord Musel''ek - Combat - Cast Knock Away'),
(@ENTRY,0,2,0,0,0,100,6,500,1000,2300,3900,11,@SPELL2,1,0,0,0,0,2,0,0,0,0,0,0,0,'Swamplord Musel''ek - Combat - Cast Knock Away'),
(@ENTRY,0,3,0,0,0,100,6,4000,8000,12000,16000,11,@SPELL3,0,0,0,0,0,6,0,0,0,0,0,0,0,'Swamplord Musel''ek - Combat - Cast Hunter''s Mark'),
(@ENTRY,0,4,0,0,0,100,6,4000,8000,12000,16000,11,@SPELL4,0,0,0,0,0,5,0,0,0,0,0,0,0,'Swamplord Musel''ek - Combat - Cast Throw Freezing Trap'),
(@ENTRY,0,5,6,0,0,100,6,12500,21500,20000,30000,11,@SPELL5,0,0,0,0,0,2,0,0,0,0,0,0,0,'Swamplord Musel''ek - Combat - Cast Aimed Shot'),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Swamplord Musel''ek - Combat - Set ranged weapon'),
(@ENTRY,0,7,8,0,0,100,6,12500,21500,20000,30000,11,@SPELL6,0,0,0,0,0,2,0,0,0,0,0,0,0,'Swamplord Musel''ek - Combat - Cast Multi-Shot'),
(@ENTRY,0,8,0,61,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Swamplord Musel''ek - Combat - Set ranged weapon'),
(@ENTRY,0,9,0,4,0,100,6,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Swamplord Musel''ek - On Aggro - Say 1'),
(@ENTRY,0,10,0,5,0,100,6,5,5000,5000,1,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Swamplord Musel''ek - On Kill - Say 2'),
(@ENTRY,0,11,12,6,0,100,6,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Swamplord Musel''ek - On Death - Say 3'),
(@ENTRY,0,12,0,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,17827,100,0,0,0,0,0,'Swamplord Musel''ek - On Death - Set Data on Claw'),
(@ENTRY,0,13,14,38,0,100,6,0,1,0,0,70,0,0,0,0,0,0,19,17827,100,1,0,0,0,0,'Swamplord Musel''ek - On dataset - Respawn dead claw'),
(@ENTRY,0,14,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Swamplord Musel''ek - Combat - Say 0');
-- NPC talk text insert from sniff
DELETE FROM `creature_ai_texts` WHERE `entry` BETWEEN -468 AND -463;
DELETE FROM `creature_text` WHERE `entry`=17826;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(17826,0,0, 'Beast! Obey me! Kill them at once!',14,0,100,0,0,10383, 'Swamplord Musel''ek bear'),
(17826,1,0, 'We fight to the death!',14,0,100,0,0,10384, 'Swamplord Musel''ek Aggro'),
(17826,1,1, 'I will end this quickly...',14,0,100,0,0,10385, 'Swamplord Musel''ek Aggro'),
(17826,1,2, 'Acalah pek ecta!',14,0,100,0,0,10386, 'Swamplord Musel''ek Aggro'),
(17826,2,0, 'Krypta!',14,0,100,0,0,10387, 'Swamplord Musel''ek Slay'),
(17826,2,1, 'It is finished.',14,0,100,0,0,10388, 'Swamplord Musel''ek Slay'),
(17826,3,0, 'Well... done...',14,0,100,0,0,10389, 'Swamplord Musel''ek Death');
-- Swamplord Musel'ek
SET @NPC := 56551;
SET @PATH := @NPC*10;
UPDATE `creature` SET `position_x`=288.5823,`position_y`=-121.8309,`position_z`=29.70329,`spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES (@NPC,@PATH,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUE
(@PATH,1,288.5823,-121.8309,29.70329,0,0,0,100,0),
(@PATH,2,281.5271,-120.3684,29.75141,0,0,0,100,0),
(@PATH,3,274.0677,-122.0538,29.80962,0,0,0,100,0),
(@PATH,4,281.5271,-120.3684,29.75141,0,0,0,100,0);
-- Ebon Blade Gargoyle
SET @NPC := 124428;
SET @PATH := @NPC*10;
UPDATE `creature` SET `position_x`=8487.13,`position_y`=2648.587,`position_z`=661.3248,`spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES (@NPC,@PATH,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUE
(@PATH,1,8487.13,2648.587,661.3248,0,0,0,100,0),
(@PATH,2,8489.394,2639.188,661.9919,0,0,0,100,0),
(@PATH,3,8498.239,2633.008,661.9919,0,0,0,100,0),
(@PATH,4,8514.016,2626.775,661.9919,0,0,0,100,0),
(@PATH,5,8529.975,2622.438,661.9919,0,0,0,100,0),
(@PATH,6,8556.946,2621.273,661.9919,0,0,0,100,0),
(@PATH,7,8576.765,2620.136,661.9919,0,0,0,100,0),
(@PATH,8,8584.989,2627.947,663.3527,0,0,0,100,0),
(@PATH,9,8590.352,2637.264,664.2969,0,0,0,100,0),
(@PATH,10,8597.313,2651.073,666.0464,0,0,0,100,0),
(@PATH,11,8590.045,2668.078,668.6855,0,0,0,100,0),
(@PATH,12,8577.563,2672.175,668.6855,0,0,0,100,0),
(@PATH,13,8567.869,2653.686,668.6855,0,0,0,100,0),
(@PATH,14,8559.406,2635.763,668.6855,0,0,0,100,0),
(@PATH,15,8550.115,2624.132,664.6028,0,0,0,100,0),
(@PATH,16,8538.325,2625.415,664.6028,0,0,0,100,0),
(@PATH,17,8531.294,2636.344,664.6028,0,0,0,100,0),
(@PATH,18,8536.005,2650.634,664.6028,0,0,0,100,0),
(@PATH,19,8536.659,2661.533,667.5744,0,0,0,100,0),
(@PATH,20,8528.161,2665.466,668.5468,0,0,0,100,0),
(@PATH,21,8521.834,2666.234,668.9914,0,0,0,100,0),
(@PATH,22,8506.145,2657.156,666.1024,0,0,0,100,0);

-- Ebon Blade Gargoyle
SET @NPC := 124429;
SET @PATH := @NPC*10;
UPDATE `creature` SET `position_x`=8553.722,`position_y`=2732.757,`position_z`=672.1373,`spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES (@NPC,@PATH,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUE
(@PATH,1,8553.722,2732.757,672.1373,0,0,0,100,0),
(@PATH,2,8545.085,2736.81,677.1306,0,0,0,100,0),
(@PATH,3,8538.377,2724.997,676.7698,0,0,0,100,0),
(@PATH,4,8527.725,2701.114,677.464,0,0,0,100,0),
(@PATH,5,8515.729,2672.526,676.4364,0,0,0,100,0),
(@PATH,6,8501.882,2638.781,674.6306,0,0,0,100,0),
(@PATH,7,8492.601,2619.312,672.9641,0,0,0,100,0),
(@PATH,8,8501.216,2604.361,672.7973,0,0,0,100,0),
(@PATH,9,8509.95,2597.643,672.464,0,0,0,100,0),
(@PATH,10,8516.437,2603.336,670.7147,0,0,0,100,0),
(@PATH,11,8526.045,2624.93,675.242,0,0,0,100,0),
(@PATH,12,8538.438,2654.096,677.4644,0,0,0,100,0),
(@PATH,13,8552.567,2688.411,676.0737,0,0,0,100,0),
(@PATH,14,8561.252,2709.44,676.1867,0,0,0,100,0),
(@PATH,15,8564.74,2718.366,676.9643,0,0,0,100,0),
(@PATH,16,8586.875,2713.758,677.4359,0,0,0,100,0),
(@PATH,17,8588.923,2702.79,676.2701,0,0,0,100,0),
(@PATH,18,8580.09,2682.738,673.3813,0,0,0,100,0),
(@PATH,19,8572.153,2664.409,674.4087,0,0,0,100,0),
(@PATH,20,8559.122,2635.23,674.5473,0,0,0,100,0),
(@PATH,21,8547.672,2610.971,677.3528,0,0,0,100,0),
(@PATH,22,8547.112,2593.927,677.77,0,0,0,100,0),
(@PATH,23,8556.546,2591.858,678.7695,0,0,0,100,0),
(@PATH,24,8566.203,2601.376,677.2705,0,0,0,100,0),
(@PATH,25,8576.512,2615.707,675.7764,0,0,0,100,0),
(@PATH,26,8585.419,2632.535,673.7208,0,0,0,100,0),
(@PATH,27,8596.079,2656.51,673.0544,0,0,0,100,0),
(@PATH,28,8594.222,2669.849,673.4442,0,0,0,100,0),
(@PATH,29,8595.935,2690.9,673.4711,0,0,0,100,0),
(@PATH,30,8592.354,2705.919,675.5258,0,0,0,100,0),
(@PATH,31,8571.288,2721.3,668.0258,0,0,0,100,0);

UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=32472;

-- Vargul Plaguetalon
SET @NPC := 97634;
SET @PATH := @NPC*10;
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=29453;
UPDATE `creature` SET `position_x`=5736.421,`position_y`=-1453.626,`position_z`=267.5013,`spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`,`bytes2`) VALUES (@NPC,@PATH,50331648,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUE
(@PATH,1,5736.421,-1453.626,267.5013,0,0,0,100,0),
(@PATH,2,5700.896,-1467.002,263.9736,0,0,0,100,0),
(@PATH,3,5665.086,-1462.814,266.2513,0,0,0,100,0),
(@PATH,4,5623.596,-1446.303,258.3903,0,0,0,100,0),
(@PATH,5,5612.131,-1390.983,269.9736,0,0,0,100,0),
(@PATH,6,5630.01,-1325.786,252.9459,0,0,0,100,0),
(@PATH,7,5684.276,-1301.843,263.9736,0,0,0,100,0),
(@PATH,8,5717.019,-1325.604,263.9736,0,0,0,100,0),
(@PATH,9,5730.931,-1363.826,254.0014,0,0,0,100,0),
(@PATH,10,5737.854,-1429.533,273.2791,0,0,0,100,0);

-- Scourgebeak Fleshripper
SET @NPC := 121011;
SET @PATH := @NPC*10;
UPDATE `creature` SET `position_x`=6805.096,`position_y`=3548.115,`position_z`=785.0337,`spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`,`bytes2`) VALUES (@NPC,@PATH,50331648,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUE
(@PATH,1,6805.096,3548.115,785.0337,0,0,0,100,0),
(@PATH,2,6797.807,3599.297,776.1726,0,0,0,100,0),
(@PATH,3,6840.798,3607.1,769.2557,0,0,0,100,0),
(@PATH,4,6880.369,3577.403,779.5615,0,0,0,100,0);

-- Scourgebeak Fleshripper
SET @NPC := 121023;
SET @PATH := @NPC*10;
UPDATE `creature` SET `position_x`=6490.46,`position_y`=3498.933,`position_z`=621.7417,`spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`,`bytes2`) VALUES (@NPC,@PATH,50331648,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUE
(@PATH,1,6490.46,3498.933,621.7417,0,0,0,100,0),
(@PATH,2,6645.542,3512.415,678.8528,0,0,0,100,0),
(@PATH,3,6650.367,3555.357,680.6584,0,0,0,100,0),
(@PATH,4,6602.724,3563.045,661.1863,0,0,0,100,0),
(@PATH,5,6549.287,3554.462,642.825,0,0,0,100,0);

-- Scourgebeak Fleshripper
SET @NPC := 121019;
SET @PATH := @NPC*10;
UPDATE `creature` SET `position_x`=6653.509,`position_y`=3526.14,`position_z`=693.2337,`spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`,`bytes2`) VALUES (@NPC,@PATH,50331648,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUE
(@PATH,1,6653.509,3526.14,693.2337,0,0,0,100,0),
(@PATH,2,6696.053,3579.272,700.4001,0,0,0,100,0),
(@PATH,3,6744.93,3562.146,704.2611,0,0,0,100,0),
(@PATH,4,6738.125,3521.812,692.5392,0,0,0,100,0);

-- Scourgebeak Fleshripper
SET @NPC := 121017;
SET @PATH := @NPC*10;
UPDATE `creature` SET `position_x`=6653.104,`position_y`=3415.26,`position_z`=672.1595,`spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`,`bytes2`) VALUES (@NPC,@PATH,50331648,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUE
(@PATH,1,6653.104,3415.26,672.1595,0,0,0,100,0),
(@PATH,2,6717.518,3468.886,684.6567,0,0,0,100,0),
(@PATH,3,6771.674,3492.333,692.0456,0,0,0,100,0),
(@PATH,4,6728.592,3518.536,683.6566,0,0,0,100,0),
(@PATH,5,6627.954,3487.869,642.6566,0,0,0,100,0),
(@PATH,6,6571.027,3439.741,634.3512,0,0,0,100,0);

-- Scourgebeak Fleshripper
SET @NPC := 121014;
SET @PATH := @NPC*10;
UPDATE `creature` SET `position_x`=6641.402,`position_y`=3330.479,`position_z`=724.3008,`spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`,`bytes2`) VALUES (@NPC,@PATH,50331648,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUE
(@PATH,1,6641.402,3330.479,724.3008,0,0,0,100,0),
(@PATH,2,6637.165,3426.095,701.4395,0,0,0,100,0),
(@PATH,3,6701.476,3449.434,708.6896,0,0,0,100,0),
(@PATH,4,6746.966,3410.158,735.9395,0,0,0,100,0),
(@PATH,5,6697.637,3352.607,725.0784,0,0,0,100,0);

-- Scourgebeak Fleshripper
SET @NPC := 121025;
SET @PATH := @NPC*10;
UPDATE `creature` SET `position_x`=6590.307,`position_y`=3325.47,`position_z`=699.1288,`spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`,`bytes2`) VALUES (@NPC,@PATH,50331648,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUE
(@PATH,1,6590.307,3325.47,699.1288,0,0,0,100,0),
(@PATH,2,6543.557,3237.147,706.6288,0,0,0,100,0),
(@PATH,3,6518.691,3250.313,687.6565,0,0,0,100,0),
(@PATH,4,6512.266,3334.911,685.3231,0,0,0,100,0);

-- Scourgebeak Fleshripper
SET @NPC := 121007;
SET @PATH := @NPC*10;
UPDATE `creature` SET `position_x`=6459.715,`position_y`=3049.952,`position_z`=701.608,`spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`,`bytes2`) VALUES (@NPC,@PATH,50331648,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUE
(@PATH,1,6459.715,3049.952,701.608,0,0,0,100,0),
(@PATH,2,6485.836,3103.517,681.247,0,0,0,100,0),
(@PATH,3,6445.593,3154.588,677.886,0,0,0,100,0),
(@PATH,4,6392.533,3078.925,694.2471,0,0,0,100,0);
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry`=39368;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(39368,0,0, 'All right, you twisted mess of broken gears, let''s get to work!',12,0,100,1,0,0, 'Drill Sergeant Steamcrank'),
(39368,1,0, 'I am going to teach you all what it takes to be a proper soldier!',12,0,100,5,0,0, 'Drill Sergeant Steamcrank'),
(39368,2,0, 'The first thing you need to learn is proper discipline.',12,0,100,1,0,0, 'Drill Sergeant Steamcrank'),
(39368,3,0, 'Show me that discipline with a proper salute when I say so!',12,0,100,5,0,0, 'Drill Sergeant Steamcrank'),
(39368,4,0, 'Okay, recruits, salute!',12,0,100,66,0,0, 'Drill Sergeant Steamcrank'),
(39368,5,0, 'Nice job!',12,0,100,273,0,0, 'Drill Sergeant Steamcrank'),
(39368,6,0, 'When you go into combat, it is important that you know how to intimidate the enemy with a deafening battle roar!',12,0,100,396,0,0, 'Drill Sergeant Steamcrank'),
(39368,7,0, 'When I give the signal,let loose your greatest roar!',12,0,100,1,0,0, 'Drill Sergeant Steamcrank'),
(39368,8,0, 'Let me hear that battle roar!',12,0,100,5,0,0, 'Drill Sergeant Steamcrank'),
(39368,9,0, 'Wow, nice and scary!',12,0,100,0,0,0, 'Drill Sergeant Steamcrank'),
(39368,10,0, 'Remember though, a key factor in winning any battle is positive reinforcement.',12,0,100,5,0,0, 'Drill Sergeant Steamcrank'),
(39368,11,0, 'Reward your fellow soldiers in battle with a resounding cheer.  Now, cheer at me when I tell you to!',12,0,100,1,0,0, 'Drill Sergeant Steamcrank'),
(39368,12,0, 'Everyone, cheer!',12,0,100,0,0,0, 'Drill Sergeant Steamcrank'),
(39368,13,0, 'Fantastic!',12,0,100,273,0,0, 'Drill Sergeant Steamcrank'),
(39368,14,0, 'However, the most important part of battle is how you celebrate a good hard earned victory!',12,0,100,396,0,0, 'Drill Sergeant Steamcrank'),
(39368,15,0, 'Show me your best victory dance when I give the signal!',12,0,100,5,0,0, 'Drill Sergeant Steamcrank'),
(39368,16,0, 'Now, dance!',12,0,100,0,0,0, 'Drill Sergeant Steamcrank'),
(39368,17,0, 'Superb!',12,0,100,273,0,0, 'Drill Sergeant Steamcrank'),
(39368,18,0, 'You might be the best set of recruits I''ve ever seen!  Let''s go through all of that again!',12,0,100,396,0,0, 'Drill Sergeant Steamcrank');
SET @RefDLK := 26043; 
SET @HFP := 6000;
SET @HFP1 := @HFP+1;
SET @HFP2 := @HFP+2;
SET @Scrolls := @HFP+3; 
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELETE FROM `reference_loot_template` WHERE `entry` IN (@RefDLK,@HFP,@HFP1,@HFP2,@Scrolls);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Generic Lowlevel Ref1
(@HFP,1,20,1,0,-4000,1), -- Grey level 61
(@HFP,2,5,1,0,-4001,1), -- Grey level 64
(@HFP,3,2,1,0,-4100,1), -- Green level 57
(@HFP,4,2,1,0,-4101,1), -- Green level 58
(@HFP,5,2,1,0,-4102,1), -- Green level 59
(@HFP,6,2,1,0,-4103,1), -- Green level 60
(@HFP,7,2,1,0,-4104,1), -- Green level 61
(@HFP,8,2,1,0,-4105,1), -- Green level 62
(@HFP,9,0.5,1,0,-4200,1), -- Blue level 60
(@HFP,10,0.5,1,0,-4201,1), -- Blue level 61
(@HFP,11,0.5,1,0,-4202,1), -- Blue level 62
(@HFP,12,0.5,1,0,-4203,1), -- Blue level 63
(@HFP,13,0.5,1,0,-4204,1), -- Blue level 64
(@HFP,4500,0.1,1,0,1,1), -- Traveler's Backpack
(@HFP,3914,0.05,1,0,1,1), -- Journeyman's Backpack
-- Generic Lowlevel Ref2
(@HFP1,1,20,1,0,-4000,1), -- Grey level 61
(@HFP1,2,5,1,0,-4001,1), -- Grey level 64
(@HFP1,3,2,1,0,-4103,1), -- Green level 60
(@HFP1,4,2,1,0,-4104,1), -- Green level 61
(@HFP1,5,2,1,0,-4105,1), -- Green level 62
(@HFP1,6,0.5,1,0,-4200,1), -- Blue level 60
(@HFP1,7,0.5,1,0,-4201,1), -- Blue level 61
(@HFP1,8,0.5,1,0,-4202,1), -- Blue level 62
(@HFP1,9,0.5,1,0,-4203,1), -- Blue level 63
(@HFP1,10,0.5,1,0,-4204,1), -- Blue level 64
-- High level Ref
(@HFP2,1,30,1,1,-4002,1), -- Grey level 64 items (ilvl 69)
(@HFP2,2,30,1,1,-4002,1), -- Grey level 67 items (ilvl 72)
(@HFP2,3,2,1,2,-4110,1), -- Green level 67 items (ilvl 111)
(@HFP2,4,2,1,2,-4111,1), -- Green level 68 items (ilvl 114)
(@HFP2,5,2,1,2,-4112,1), -- Green level 69 items (ilvl 117)
(@HFP2,6,0.5,1,3,-4208,1), -- Blue level 68 items (ilvl 115)
(@HFP2,7,0.5,1,3,-4209,1), -- Blue level 69 items (ilvl 115)
(@HFP2,8,0.5,1,3,-4210,1), -- Blue level 70 items (ilvl 115)
-- TBC Scrolls
(@Scrolls,33459,0,1,1,1,1), -- Scroll of Protection VI
(@Scrolls,33457,0,1,1,1,1), -- Scroll of Agility VI
(@Scrolls,33458,0,1,1,1,1), -- Scroll of Intellect VI
(@Scrolls,33460,0,1,1,1,1), -- Scroll of Spirit VI
(@Scrolls,33461,0,1,1,1,1), -- Scroll of Stamina VI
(@Scrolls,33462,0,1,1,1,1), -- Scroll of Strength VI
-- Doom Lord Kazzak
(@RefDLK,30732,0,1,1,1,1), -- Exodar Life-Staff
(@RefDLK,30733,0,1,1,1,1), -- Hope Ender
(@RefDLK,30734,0,1,1,1,1), -- Leggings of the Seventh Circle
(@RefDLK,30735,0,1,1,1,1), -- Ancient Spellcloak of the Highborne
(@RefDLK,30736,0,1,1,1,1), -- Ring of Flowing Light
(@RefDLK,30737,0,1,1,1,1), -- Gold-Leaf Wildboots
(@RefDLK,30738,0,1,1,1,1), -- Ring of Reciprocity
(@RefDLK,30739,0,1,1,1,1), -- Scaled Greaves of the Marksman
(@RefDLK,30740,0,1,1,1,1), -- Ripfiend Shoulderplates
(@RefDLK,30741,0,1,1,1,1); -- Topaz-Studded Battlegrips
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELETE FROM `creature_loot_template` WHERE `entry` IN (18728,187281,19191,16977,19354,17084,17057,16873,16871,19422,16907,19424,19423,16903,16901,19701,16876,16925,18952,16972,16973,17014,16844,19299,16847,16863,18981,16959,19434,16938,16937,19312,22461,19190,18733,24918,18977,17034,19459,19136,19264,16954,18678,18827,16947,16845,19457,16967,16966,22374,18978,16880,17058,22323,19261,17035,17053,16978,16846,16912,16911,19408,17039,16857,18677,19192,16946,16950,16934,19189,19188,16932,16933,20798,19458,16974,19415,16878,16870,19295,16867,19414,19413,19410,19411,16960,16879,16929,16928,16927,19282,19335,19443,16951,19349,19350,16968,26222,26223,16975,20145,16904,16906,16905,19527,16939,18679,19263,19298,16964,19442,24919,18975); 
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Doom Lord Kazzak, NPC 18728
-- ---------------------------------------------------
(18728,1,100,1,0,-@RefDLK,2), -- Two from Doom Loor Kazzak Reference
(18728,2,5,1,0,-4113,1), -- Level 70 TBC Green Reference
-- ---------------------------------------------------
-- Arazzius the Cruel, NPC 19191
-- ---------------------------------------------------
(19191,21877,50,1,0,1,3), -- Netherweave Cloth
(19191,27854,5,1,0,1,1), -- Smoked Talbuk Venison
(19191,28399,5,1,0,1,1), -- Filtered Draenic Water
(19191,13446,1.5,1,0,1,1), -- Major Healing Potion
(19191,13444,1.5,1,0,1,1), -- Major Mana Potion
(19191,1,15,1,0,-4000,1), -- Grey itemlevel 66 (level 61 items)
(19191,2,5,1,0,-4001,1), -- Grey itemlevel 69 (lvl 64 items)
(19191,3,7.5,1,0,-4103,1), -- Green itemlevel 90
(19191,4,5,1,0,-4104,1), -- Green itemlevel 93
(19191,5,2.5,1,0,-4105,1), -- Green itemlevel 96
(19191,6,0.5,1,0,-4201,1), -- Blues level 61
(19191,7,0.5,1,0,-4202,1), -- Blues level 62
(19191,8,0.5,1,0,-4203,1), -- Blues level 63
(19191,9,0.5,1,0,-4204,1), -- Blues level 64
-- ---------------------------------------------------
-- Arch Mage Xintor, NPC 16977
-- ---------------------------------------------------
(16977,21877,55,1,0,1,1), -- Netherweave Cloth
(16977,14047,15,1,0,1,3), -- Runecloth
(16977,27859,10,1,0,1,1), -- Zanger Caps 
(16977,28399,5,1,0,1,1), -- Filtered Draenic Water
(16977,13446,2,1,0,1,1), -- Major Healing Potion
(16977,1,90,1,0,-6001,1), -- Generic HellfirePeninsula Loot1
-- ---------------------------------------------------
-- Arzeth the Merciless, NPC 19354
-- ---------------------------------------------------
(19354,21877,70,1,0,1,1), -- Netherweave Cloth
(19354,27854,7,1,0,1,1), -- Smoked Talbuk Venison
(19354,28399,3,1,0,1,1), -- Filtered Draenic Water
(19354,13446,3,1,0,1,1), -- Major Healing Potion
(19354,13444,1,1,0,1,1), -- Major Healing Potion
(19354,5760,1,1,0,1,1), -- Eternium Lockbox
(19354,1,90,1,0,-6001,1), -- Generic HellfirePeninsula Loot1
-- ---------------------------------------------------
-- Avruu, NPC 17084
-- ---------------------------------------------------
(17084,23580,80,1,0,1,1), -- Avruu's Orb
(17084,21877,45,1,0,1,3), -- Netherweave Cloth
(17084,17056,30,1,0,1,1), -- Light Feather
(17084,23483,-10,1,0,1,1), -- QItem: Haal'eshi Scroll
(17084,27854,5,1,0,1,1), -- Smoked Talbuk Venison
(17084,28399,3,1,0,1,1), -- Filtered Draenic Water
(17084,13446,3,1,0,1,1), -- Major Healing Potion
(17084,13444,1,1,0,1,1), -- Major Healing Potion
(17084,1,90,1,0,-6001,1), -- Generic HellfirePeninsula Loot1
-- ---------------------------------------------------
-- Blacktalon teh Savage, NPC 17057
-- ---------------------------------------------------
(17057,23687,-100,1,0,1,1), -- QItem: Blacktalon's Claws
(17057,24516,75,1,0,1,1), -- Damaged Rock Flayer Talon
(17057,21877,40,1,0,1,1), -- Netherweave Cloth
(17057,24517,20,1,0,1,1), -- Blood Soaked Tail
(17057,27854,3,1,0,1,1), -- Smoked Talbuk Venison
(17057,28399,2,1,0,1,1), -- Filtered Draenic Water
(17057,13446,1.5,1,0,1,1), -- Major Healing Potion
(17057,13444,0.75,1,0,1,1), -- Major Healing Potion
(17057,1,90,1,0,-6001,1), -- Generic HellfirePeninsula Loot1
-- ---------------------------------------------------
-- Bleeding Hollow Dark Shaman, NPC 16873
-- ---------------------------------------------------
(16873,30157,-25,1,0,1,1), -- QItem: Cursed Talisman
(16873,30425,-17,1,0,1,1), -- QItem: Bleeding Hollow Blood
(16873,28399,3,1,0,1,1), -- Filtered Draenic Water
(16873,13446,2,1,0,1,1), -- Major Healing Potion
(16873,5760,0.1,1,0,1,1), -- Eternium Lockbox
(16873,1,2,1,0,-6003,1), -- Scroll of * Reference
(16873,2,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Bleeding Hollow Grunt, NPC 16871
-- ---------------------------------------------------
(16871,30157,-25,1,0,1,1), -- QItem: Cursed Talisman
(16871,30425,-17,1,0,1,1), -- QItem: Bleeding Hollow Blood
(16871,28399,3,1,0,1,1), -- Filtered Draenic Water
(16871,13446,2,1,0,1,1), -- Major Healing Potion
(16871,5760,0.1,1,0,1,1), -- Eternium Lockbox
(16871,1,2,1,0,-6003,1), -- Scroll of * Reference
(16871,2,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Bleeding Hollow Necrolyte, NPC 19422
-- ---------------------------------------------------
(19422,30157,-25,1,0,1,1), -- QItem: Cursed Talisman
(19422,30425,-17,1,0,1,1), -- QItem: Bleeding Hollow Blood
(19422,28399,3,1,0,1,1), -- Filtered Draenic Water
(19422,13446,2,1,0,1,1), -- Major Healing Potion
(19422,5760,0.1,1,0,1,1), -- Eternium Lockbox
(19422,1,2,1,0,-6003,1), -- Scroll of * Reference
(19422,2,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Bleeding Hollow Peon, NPC 16907
-- ---------------------------------------------------
(16907,30157,-25,1,0,1,1), -- QItem: Cursed Talisman
(16907,30425,-17,1,0,1,1), -- QItem: Bleeding Hollow Blood
(16907,28399,3,1,0,1,1), -- Filtered Draenic Water
(16907,13446,2,1,0,1,1), -- Major Healing Potion
(16907,5760,0.1,1,0,1,1), -- Eternium Lockbox
(16907,1,2,1,0,-6003,1), -- Scroll of * Reference
(16907,2,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Bleeding Hollow Tormentor, NPC 19424
-- ---------------------------------------------------
(19424,30157,-25,1,0,1,1), -- QItem: Cursed Talisman
(19424,30425,-17,1,0,1,1), -- QItem: Bleeding Hollow Blood
(19424,28399,3,1,0,1,1), -- Filtered Draenic Water
(19424,13446,2,1,0,1,1), -- Major Healing Potion
(19424,5760,0.1,1,0,1,1), -- Eternium Lockbox
(19424,1,2,1,0,-6003,1), -- Scroll of * Reference
(19424,2,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Bleeding Hollow Worg, NPC 19423
-- ---------------------------------------------------
(19423,3299,70,1,0,1,1), -- Fractured Canine
(19423,33547,25,1,0,1,1), -- Hardened Claw
(19423,4583,1,1,0,1,1), -- Thick Furry Mane
(19423,4584,1,1,0,1,1), -- Large Trophy Paw
(19423,5759,0.2,1,0,1,1), -- Thorium Lockbox
(19423,1,80,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Blistering Oozeling, NPC 16903
-- ---------------------------------------------------
(16903,25444,100,1,0,1,1), -- Corrosive Ichor
(16903,23339,-25,1,0,1,1), -- QItem: Arelion's Journal
(16903,1,80,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Blistering Rot, NPC 16901
-- ---------------------------------------------------
(16901,25444,80,1,1,1,1), -- Corrosive Ichor
(16901,25446,20,1,1,1,1), -- Brittle Skull
(16901,5760,0.2,1,0,1,1), -- Eternium Lockbox
(16901,1,80,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Bonechewer Evoker, NPC 19701
-- ---------------------------------------------------
(19701,21877,55,1,0,1,1), -- Netherweave Cloth
(19701,30327,-30,1,0,1,1), -- QItem: Bonechewer Blood
(19701,14047,20,1,0,1,3), -- Runecloth
(19701,27854,7,1,0,1,1), -- Smoked Talbuk Venison
(19701,28399,3,1,0,1,1), -- Filtered Draenic Water
(19701,13446,3,1,0,1,1), -- Major Healing Potion
(19701,13444,1,1,0,1,1), -- Major Healing Potion
(19701,5759,0.2,1,0,1,1), -- Thorium Lockbox
(19701,1,2,1,0,-6003,1), -- Scroll of * Reference
(19701,2,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Bonechewer Mutant, NPC 16876
-- ---------------------------------------------------
(16876,21877,55,1,0,1,1), -- Netherweave Cloth
(16876,30327,-30,1,0,1,1), -- QItem: Bonechewer Blood
(16876,14047,20,1,0,1,3), -- Runecloth
(16876,27854,7,1,0,1,1), -- Smoked Talbuk Venison
(16876,28399,3,1,0,1,1), -- Filtered Draenic Water
(16876,13446,3,1,0,1,1), -- Major Healing Potion
(16876,13444,1,1,0,1,1), -- Major Healing Potion
(16876,5759,0.2,1,0,1,1), -- Thorium Lockbox
(16876,1,2,1,0,-6003,1), -- Scroll of * Reference
(16876,2,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Bonechewer Raider, NPC 16925
-- ---------------------------------------------------
(16925,21877,55,1,0,1,1), -- Netherweave Cloth
(16925,30327,-30,1,0,1,1), -- QItem: Bonechewer Blood
(16925,14047,20,1,0,1,3), -- Runecloth
(16925,27859,7,1,0,1,1), -- Zanger Caps
(16925,28399,3,1,0,1,1), -- Filtered Draenic Water
(16925,13446,3,1,0,1,1), -- Major Healing Potion
(16925,13444,1,1,0,1,1), -- Major Healing Potion
(16925,5759,0.2,1,0,1,1), -- Thorium Lockbox
(16925,1,2,1,0,-6003,1), -- Scroll of * Reference
(16925,2,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Bonechewer Scavenger, NPC 18952
-- ---------------------------------------------------
(18952,21877,55,1,0,1,1), -- Netherweave Cloth
(18952,30327,-30,1,0,1,1), -- QItem: Bonechewer Blood
(18952,14047,20,1,0,1,3), -- Runecloth
(18952,27854,7,1,0,1,1), -- Smoked Talbuk Venison
(18952,28399,3,1,0,1,1), -- Filtered Draenic Water
(18952,13446,3,1,0,1,1), -- Major Healing Potion
(18952,13444,1,1,0,1,1), -- Major Healing Potion
(18952,5759,0.2,1,0,1,1), -- Thorium Lockbox
(18952,1,2,1,0,-6003,1), -- Scroll of * Reference
(18952,2,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Bonestripper Buzzard, NPC 16972
-- ---------------------------------------------------
(16972,25425,80,1,0,1,1), -- Molted Feather
(16972,27671,50,1,0,1,1), -- Buzzard Meat
(16972,23239,-10,1,0,1,1), -- Plump Buzzard Wing
(16972,17056,30,1,0,1,1), -- Light Feather
(16972,25427,19,1,0,1,1), -- Beaten Talon
(16972,5759,0.2,1,0,1,1), -- Thorium Lockbox
(16972,1,80,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Bonestripper Vulture, NPC 16973
-- ---------------------------------------------------
(16973,25425,80,1,0,1,1), -- Molted Feather
(16973,27671,50,1,0,1,1), -- Buzzard Meat
(16973,23387,-40,1,0,1,1), -- Bonestripper Tail Feather
(16973,25427,19,1,0,1,1), -- Beaten Talon
(16973,5760,0.2,1,0,1,1), -- Eternium Lockbox
(16973,1,80,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Collapsing Voidwalker, NPC 17014
-- ---------------------------------------------------
(17014,29161,-100,1,0,1,3), -- Void Ridge Soul Shard
(17014,22577,20,1,0,1,2), -- Mote of Shadow
(17014,1,50,1,1,-6000,1), -- Generic HellfirePeninsula Loot
(17014,2,50,1,1,-6001,1), -- Generic HellfirePeninsula Loot1
-- ---------------------------------------------------
-- Crust Burster, NPC 16844
-- ---------------------------------------------------
(16844,25434,80,1,0,1,1), -- Fractured Carapace
(16844,25436,20,1,0,1,1), -- Twitching Leg
(16844,1,80,1,1,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Deathwhisperer, NPC 19299
-- ---------------------------------------------------
(19299,21877,10,1,0,2,3), -- Netherweave Cloth
(19299,27854,2,1,0,1,1), -- Smoked Talbuk Venison
(19299,28399,2,1,0,1,1), -- Filtered Draenic Water
(19299,13444,1,1,0,1,1), -- Major Mana Potion
(19299,1,90,1,1,-6000,1), -- Generic HellfirePeninsula Loot
(19299,31902,0.05,1,0,1,1), -- Eight of Furies
(19299,31911,0.05,1,0,1,1), -- Eight of Lunacy
-- ---------------------------------------------------
-- Debilitated Mag'har Grunt, NPC 16847
-- ---------------------------------------------------
(16847,23589,-50,1,0,1,1), -- QItem: Mag'har Ancestral Beads
(16847,21877,50,1,0,1,1), -- Netherweave Cloth
(16847,14047,15,1,0,1,3), -- Runecloth
(16847,27854,6,1,0,1,1), -- Smoked Talbuk Venison
(16847,28399,3,1,0,1,1), -- Filtered Draenic Water
(16847,13446,2,1,0,1,1), -- Major Healing Potion
(16847,13444,1,1,0,1,1), -- Major Healing Potion
(16847,5759,0.15,1,0,1,1), -- Thorium Lockbox
(16847,1,2,1,0,-6003,1), -- Scroll of * Reference
(16847,2,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Deranged Helboar, NPC 16863
-- ---------------------------------------------------
(16863,23270,-40,1,0,1,1), -- QItem: Tainted Helboar Meat
(16863,3403,40,1,1,1,1), -- Ivory Boar Tusk
(16863,2295,40,1,1,1,1), -- Large Boar Tusk
(16863,44754,15,1,1,1,1), -- Severed Boar Tusk
(16863,25440,1.5,1,1,1,1), -- Cracked Boar Tusk
(16863,25442,0.5,1,0,1,1), -- Mangled Snout
(16863,1,2,1,0,-6003,1), -- Scroll of * Reference
(16863,2,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Doomwhisperer, NPC 18981
-- ---------------------------------------------------
(18981,28513,-50,1,0,1,1), -- QItem: Demonic Rune Stone
(18981,21877,50,1,0,1,1), -- Netherweave Cloth
(18981,14047,15,1,0,1,3), -- Runecloth
(18981,27854,6,1,0,1,1), -- Smoked Talbuk Venison
(18981,28399,3,1,0,1,1), -- Filtered Draenic Water
(18981,13446,2,1,0,1,1), -- Major Healing Potion
(18981,13444,1,1,0,1,1), -- Major Healing Potion
(18981,5759,0.15,1,0,1,1), -- Thorium Lockbox
(18981,1,2,1,0,-6003,1), -- Scroll of * Reference
(18981,2,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Dread Tactician, NPC 16959
-- ---------------------------------------------------
(16959,21877,13,1,0,1,1), -- Netherweave Cloth
(16959,14047,15,1,0,1,3), -- Runecloth
(16959,27854,2,1,0,1,1), -- Smoked Talbuk Venison
(16959,27860,3,1,0,1,1), -- Purified Draenic Water
(16959,22829,0.5,1,0,1,1), -- Super Healing Potion
(16959,22832,0.25,1,0,1,1), -- Super Mana Potion
(16959,1,80,1,0,-6002,1), -- Generic HellfirePeninsula Loot2
-- ---------------------------------------------------
-- Dreadcaller, NPC 19434
-- ---------------------------------------------------
(19434,21877,60,1,0,1,1), -- Netherweave Cloth
(19434,14047,15,1,0,1,3), -- Runecloth
(19434,27854,6,1,0,1,1), -- Smoked Talbuk Venison
(19434,28399,3,1,0,1,1), -- Filtered Draenic Water
(19434,13446,2,1,0,1,1), -- Major Healing Potion
(19434,13444,1,1,0,1,1), -- Major Healing Potion
(19434,5759,0.2,1,0,1,1), -- Thorium Lockbox
(19434,1,2,1,0,-6003,1), -- Scroll of * Reference
(19434,2,85,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Dreghood Brute, NPC 16938
-- ---------------------------------------------------
(16938,21877,70,1,0,1,1), -- Netherweave Cloth
(16938,27854,11,1,0,1,1), -- Mag'har Grainbread
(16938,28399,3,1,0,1,1), -- Filtered Draenic Water
(16938,13446,2,1,0,1,1), -- Major Healing Potion
(16938,13444,1,1,0,1,1), -- Major Healing Potion
(16938,1,2,1,0,-6003,1), -- Scroll of * Reference
-- ---------------------------------------------------
-- Dreghood Geomancer, NPC 16937
-- ---------------------------------------------------
(16937,21877,70,1,0,1,1), -- Netherweave Cloth
(16937,27854,11,1,0,1,1), -- Mag'har Grainbread
(16937,28399,3,1,0,1,1), -- Filtered Draenic Water
(16937,13446,2,1,0,1,1), -- Major Healing Potion
(16937,13444,1,1,0,1,1), -- Major Healing Potion
-- ---------------------------------------------------
-- Drillmaster Zurok, NPC 19312
-- ---------------------------------------------------
(19312,21877,60,1,0,1,1), -- Netherweave Cloth
(19312,27854,6,1,0,1,1), -- Smoked Talbuk Venison
(19312,28399,3,1,0,1,1), -- Filtered Draenic Water
(19312,13446,2,1,0,1,1), -- Major Healing Potion
(19312,13444,1,1,0,1,1), -- Major Healing Potion
(19312,5760,0.2,1,0,1,1), -- Eternium Lockbox
(19312,1,100,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Fel Canon MKI, NPC 22461
-- ---------------------------------------------------
(22461,31944,80,1,1,1,1), -- Demonic Capacitor
(22461,31945,20,1,1,1,1), -- Shadow Circuit
-- ---------------------------------------------------
-- Fel Handler, NPC 19190
-- ---------------------------------------------------
(19190,28513,-50,1,0,1,1), -- QItem: Demonic Rune Stone
(19190,27854,10,1,0,1,1), -- Smoked Talbuk Venison
(19190,28399,5,1,0,1,1), -- Filtered Draenic Water
(19190,13446,3,1,0,1,1), -- Major Healing Potion
(19190,13444,1.5,1,0,1,1), -- Major Mana Potion
(19190,5759,0.2,1,0,1,1), -- Thorium Lockbox
(19190,1,2,1,0,-6003,1), -- Scroll of * Reference
(19190,2,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Fel Reaver, NPC 18733
-- ---------------------------------------------------
(18733,1,100,1,0,-6002,1), -- Generic HellfirePeninsula Loot2
-- ---------------------------------------------------
-- Felblood Initiate, NPC 24918
-- ---------------------------------------------------
(24918,21877,75,1,0,1,3), -- Netherweave Cloth
(24918,27857,8,1,0,1,1), -- Garadar Sharp
(24918,27860,5,1,0,1,1), -- Filtered Draenic Water
(24918,22829,3,1,0,1,1), -- Super Healing Potion
(24918,22832,1.5,1,0,1,1), -- Super Healing Potion
(24918,31952,0.2,1,0,1,1), -- Khorium Lockbox
(24918,31888,0.01,1,0,1,1), -- Three of Blessings
(24918,31908,0.01,1,0,1,1), -- Three of Furies
(24918,1,80,1,0,-6002,1), -- Generic HellfirePeninsula Loot2
-- ---------------------------------------------------
-- Felguard Destroyer, NPC 18977
-- ---------------------------------------------------
(18977,21877,40,1,0,1,3), -- Netherweave Cloth
(18977,27854,5,1,0,1,1), -- Smoked Talbuk Venison
(18977,28399,4,1,0,1,1), -- Filtered Draenic Water
(18977,13446,2,1,0,1,1), -- Major Healing Potion
(18977,13444,1,1,0,1,1), -- Major Mana Potion
(18977,5759,0.3,1,0,1,1), -- Thorium Lockbox
(18977,1,80,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Female Kaliri Hatchling, NPC 17034
-- ---------------------------------------------------
(17034,23588,-40,1,0,1,1), -- QItem: Kaliri Feather
(17034,25425,81,1,1,1,1), -- Molted Feather
(17034,25427,19,1,1,1,1), -- Beaten Talon
(17034,5760,0.2,1,0,1,1), -- Eternium Lockbox
(17034,1,80,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Feng, NPC 19459
-- ---------------------------------------------------
(19459,3299,70,1,0,1,1), -- Fractured Canine
(19459,33547,30,1,0,1,1), -- Hardened Claw
(19459,5759,0.3,1,0,1,1), -- Thorium Lockbox
(19459,4583,0.3,1,0,1,1), -- Thick Furry Mane
(19459,4584,0.2,1,0,1,1), -- Large Trophy Paw
(19459,1,70,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Flamewalker Imp, NPC 19136
-- ---------------------------------------------------
(19136,21877,92,1,0,1,1), -- Netherweave Cloth
(19136,22785,0.05,1,0,1,3), -- Felweed
-- ---------------------------------------------------
-- Force-Commander Gorax, NPC 19264
-- ---------------------------------------------------
(19264,21877,80,1,0,1,3), -- Netherweave Cloth
(19264,27854,10,1,0,1,1), -- Smoked Talbuk Venison
(19264,28399,5,1,0,1,1), -- Filtered Draenic Water
(19264,13446,3,1,0,1,1), -- Major Healing Potion
(19264,13444,1.5,1,0,1,1), -- Major Mana Potion
(19264,5760,0.3,1,0,1,1), -- Eternium Lockbox
(19264,1,100,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Forge-Camp Legionnaire, NPC 16954
-- ---------------------------------------------------
(16954,21877,80,1,0,1,3), -- Netherweave Cloth
(16954,27854,8,1,0,1,1), -- Smoked Talbuk Venison
(16954,28399,4,1,0,1,1), -- Filtered Draenic Water
(16954,13446,2,1,0,1,1), -- Major Healing Potion
(16954,13444,1,1,0,1,1), -- Major Mana Potion
(16954,5759,0.3,1,0,1,1), -- Thorium Lockbox
(16954,1,100,1,0,-6000,1), -- Generic HellfirePeninsula Loot
(16954,2,2,1,0,-6003,1), -- Scroll of * Reference
-- ---------------------------------------------------
-- Fulgorge, NPC 18678
-- ---------------------------------------------------
(18678,31176,0,1,1,1,1), -- Rockwurm Plate Handguards
(18678,31177,0,1,1,1,1), -- Rockwurm Scale Gauntlets
(18678,31179,0,1,1,1,1), -- Rockwurm Hide Gloves
(18678,31181,0,1,1,1,1), -- Rockwurm Hide Handwraps
(18678,25434,1,1,0,1,3), -- Fractured Carapace
(18678,25436,0.2,1,0,2,4), -- Twitching Leg
-- ---------------------------------------------------
-- Gan'arg Sapper, NPC 18827
-- ---------------------------------------------------
(18827,21877,83,1,0,1,3), -- Netherweave Cloth
(18827,27854,8,1,0,1,1), -- Smoked Talbuk Venison
(18827,28399,4,1,0,1,1), -- Filtered Draenic Water
(18827,13446,3,1,0,1,1), -- Major Healing Potion
(18827,13444,1.5,1,0,1,1), -- Major Mana Potion
(18827,5759,0.2,1,0,1,1), -- Thorium Lockbox
(18827,1,100,1,0,-6000,1), -- Generic HellfirePeninsula Loot
(18827,2,3,1,0,-6003,1), -- Scroll of * Reference
-- ---------------------------------------------------
-- Gan'arg Servant, NPC 16947
-- ---------------------------------------------------
(16947,21877,83,1,0,1,3), -- Netherweave Cloth
(16947,27854,8,1,0,1,1), -- Smoked Talbuk Venison
(16947,28399,4,1,0,1,1), -- Filtered Draenic Water
(16947,13446,3,1,0,1,1), -- Major Healing Potion
(16947,13444,1.5,1,0,1,1), -- Major Mana Potion
(16947,5759,0.1,1,0,1,1), -- Thorium Lockbox
(16947,1,95,1,0,-6000,1), -- Generic HellfirePeninsula Loot
(16947,2,3,1,0,-6003,1), -- Scroll of * Reference
-- ---------------------------------------------------
-- Gorkan Bloodfist, NPC 16845
-- ---------------------------------------------------
(16845,21877,3,1,0,2,3), -- Netherweave Cloth
(16845,27854,1,1,0,1,1), -- Smoked Talbuk Venison
(16845,22829,0.5,1,0,1,1), -- Super Healing Potion
(16845,1,2,1,0,-4110,1), -- Level 67 Green Items (ilvl 111)
-- ---------------------------------------------------
-- Grillok "Darkeye", NPC 19457
-- ---------------------------------------------------
(19457,31529,-100,1,0,1,1), -- QItem: Grillok's Eyepatch
(19457,21877,45,1,0,1,3), -- Netherweave Cloth
(19457,30157,-5,1,0,1,1), -- QItem: Cursed Talisman
(19457,30425,-10,1,0,1,1), -- QItem: Bleeding Hollow Blood
(19457,27854,4,1,0,1,1), -- Smoked Talbuk Venison
(19457,28399,2,1,0,1,1), -- Filtered Draenic Water
(19457,13446,2,1,0,1,1), -- Major Healing Potion
(19457,13444,1,1,0,1,1), -- Major Mana Potion
(19457,5760,0.1,1,0,1,1), -- Eternium Lockbox
(19457,1,100,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Haal'eshi Talonguard, NPC 16967
-- ---------------------------------------------------
(16967,21877,60,1,0,1,3), -- Netherweave Cloth
(16967,17056,42,1,0,1,1), -- Light Feather
(16967,23483,-15,1,0,1,1), -- QItem: Haal'eshi Scroll
(16967,27854,6,1,0,1,1), -- Smoked Talbuk Venison
(16967,28399,3,1,0,1,1), -- Filtered Draenic Water
(16967,13446,2,1,0,1,1), -- Major Healing Potion
(16967,13444,1,1,0,1,1), -- Major Mana Potion
(16967,5760,0.1,1,0,1,1), -- Eternium Lockbox
(16967,1,85,1,0,-6000,1), -- Generic HellfirePeninsula Loot
(16967,2,3,1,0,-6003,1), -- Scroll of * Reference
-- ---------------------------------------------------
-- Haal'eshi Windwalker, NPC 16966
-- ---------------------------------------------------
(16966,21877,60,1,0,1,3), -- Netherweave Cloth
(16966,17056,42,1,0,1,1), -- Light Feather
(16966,23483,-15,1,0,1,1), -- QItem: Haal'eshi Scroll
(16966,27854,6,1,0,1,1), -- Smoked Talbuk Venison
(16966,28399,3,1,0,1,1), -- Filtered Draenic Water
(16966,13446,2,1,0,1,1), -- Major Healing Potion
(16966,13444,1,1,0,1,1), -- Major Mana Potion
(16966,5760,0.1,1,0,1,1), -- Eternium Lockbox
(16966,1,85,1,0,-6000,1), -- Generic HellfirePeninsula Loot
(16966,2,3,1,0,-6003,1), -- Scroll of * Reference
-- ---------------------------------------------------
-- Hand of Kargath, NPC 22374
-- ---------------------------------------------------
(22374,31706,-100,1,0,1,1), -- QItem: The Head of the Hand of Kargath
(22374,21877,40,1,0,1,3), -- Netherweave Cloth
(22374,27854,4,1,0,1,1), -- Smoked Talbuk Venison
(22374,28399,2,1,0,1,1), -- Filtered Draenic Water
(22374,13446,1,1,0,1,1), -- Major Healing Potion
(22374,13444,0.5,1,0,1,1), -- Major Mana Potion
(22374,5760,0.1,1,0,1,1), -- Eternium Lockbox
(22374,1,80,1,0,-6001,1), -- Generic HellfirePeninsula Loot1
-- ---------------------------------------------------
-- Heckling Fel Sprite, NPC 18978
-- ---------------------------------------------------
(18978,21877,95,1,0,1,1), -- Netherweave Cloth
-- ---------------------------------------------------
-- Hulking Helboar, NPC 16880
-- ---------------------------------------------------
(16880,23336,-30,1,0,1,1), -- QItem: Helboar Blood Sample
(16880,23270,-5,1,0,1,1), -- QItem: Tainted Hellboar Meat
(16880,3403,82,1,1,1,1), -- Ivory Boar Tusk
(16880,25440,1.5,1,1,1,1), -- Cracked Boar Tusk
(16880,25442,0.3,1,2,1,1), -- Mangled Snout
(16880,1,80,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Illidari Taskmaster, NPC 17058
-- ---------------------------------------------------
(17058,29113,-50,1,0,1,1), -- QItem: Demonic Essence
(17058,21877,60,1,0,1,3), -- Netherweave Cloth
(17058,27854,6,1,0,1,1), -- Smoked Talbuk Venison
(17058,28399,3,1,0,1,1), -- Filtered Draenic Water
(17058,13446,2,1,0,1,1), -- Major Healing Potion
(17058,13444,1,1,0,1,1), -- Major Mana Potion
(17058,5760,0.2,1,0,1,1), -- Eternium Lockbox
(17058,1,90,1,0,-6001,1), -- Generic HellfirePeninsula Loot1
(17058,2,2,1,0,-6003,1), -- Scroll of * Reference
-- ---------------------------------------------------
-- Incandescent Fel Spark, NPC 22323
-- ---------------------------------------------------
(22323,24508,80,1,1,1,1), -- Elemental Fragment
(22323,24511,20,1,1,1,1), -- Primordial Essence
(22323,22574,35,1,0,1,2), -- Mote of Fire
(22323,1,90,1,0,-6002,1), -- Generic HellfirePeninsula Loot2
-- ---------------------------------------------------
-- Infernal Warbringer, NPC 19261
-- ---------------------------------------------------
(19261,1,70,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Kaliri Matriarch, NPC 17035
-- ---------------------------------------------------
(17035,23588,-27,1,0,1,1), -- QItem: Kaliri Feather
(17035,25425,81,1,1,1,1), -- Molted Feather
(17035,25427,19,1,1,1,1), -- Beaten Talon
(17035,5760,0.07,1,0,1,1), -- Eternium Lockbox
(17035,1,80,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Kaliri Swooper, NPC 17053
-- ---------------------------------------------------
(17053,23588,-25,1,0,1,1), -- QItem: Kaliri Feather
(17053,25425,81,1,1,1,1), -- Molted Feather
(17053,25427,19,1,1,1,1), -- Beaten Talon
(17053,5760,0.05,1,0,1,1), -- Eternium Lockbox
(17053,1,80,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Lieutenant Commander Thalvos, NPC 16978
-- ---------------------------------------------------
(16978,28562,-100,1,0,1,1), -- QItem: Unyielding Battle Horn
(16978,21877,55,1,0,1,1), -- Netherweave Cloth
(16978,27859,5,1,0,1,1), -- Zanger Caps 
(16978,28399,2.5,1,0,1,1), -- Filtered Draenic Water
(16978,13446,2,1,0,1,1), -- Major Healing Potion
(16978,13444,2,1,0,1,1), -- Major Mana Potion
(16978,1,100,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Mag'har Grunt, NPC 16846
-- ---------------------------------------------------
(16846,23589,-50,1,0,1,1), -- QItem: Mag'har Ancestral Beads
(16846,21877,60,1,0,1,1), -- Netherweave Cloth
(16846,27854,6,1,0,1,1), -- Smoked Talbuk Venison
(16846,28399,3,1,0,1,1), -- Filtered Draenic Water
(16846,13446,2,1,0,1,1), -- Major Healing Potion
(16846,13444,1,1,0,1,1), -- Major Healing Potion
(16846,5759,0.15,1,0,1,1), -- Eternium Lockbox
(16846,1,2,1,0,-6003,1), -- Scroll of * Reference
(16846,2,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Mag'har Hunter, NPC 16912
-- ---------------------------------------------------
(16912,21877,60,1,0,1,1), -- Netherweave Cloth
(16912,27854,6,1,0,1,1), -- Smoked Talbuk Venison
(16912,28399,3,1,0,1,1), -- Filtered Draenic Water
(16912,13446,2,1,0,1,1), -- Major Healing Potion
(16912,13444,1,1,0,1,1), -- Major Healing Potion
(16912,5759,0.15,1,0,1,1), -- Eternium Lockbox
(16912,1,2,1,0,-6003,1), -- Scroll of * Reference
(16912,2,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Mag'har Watcher, NPC 16911
-- ---------------------------------------------------
(16911,21877,60,1,0,1,1), -- Netherweave Cloth
(16911,27854,6,1,0,1,1), -- Smoked Talbuk Venison
(16911,28399,3,1,0,1,1), -- Filtered Draenic Water
(16911,13446,2,1,0,1,1), -- Major Healing Potion
(16911,13444,1,1,0,1,1), -- Major Healing Potion
(16911,5759,0.15,1,0,1,1), -- Eternium Lockbox
(16911,1,2,1,0,-6003,1), -- Scroll of * Reference
(16911,2,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Maiden of Pain, NPC 19408
-- ---------------------------------------------------
(19408,14047,15,1,0,1,3), -- Runecloth
(19408,27854,9,1,0,1,1), -- Smoked Talbuk Venison
(19408,28399,4,1,0,1,1), -- Filtered Draenic Water
(19408,13446,3,1,0,1,1), -- Major Healing Potion
(19408,13444,1.5,1,0,1,1), -- Major Healing Potion
(19408,5760,0.15,1,0,1,1), -- Eternium Lockbox
(19408,1,2,1,0,-6003,1), -- Scroll of * Reference
(19408,2,85,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Male Kaliri Hatchling, NPC 17039
-- ---------------------------------------------------
(17039,23588,-25,1,0,1,1), -- QItem: Kaliri Feather
(17039,25425,81,1,1,1,1), -- Molted Feather
(17039,25427,19,1,1,1,1), -- Beaten Talon
(17039,5760,0.2,1,0,1,1), -- Eternium Lockbox
(17039,1,80,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Marauding Crust Burster, NPC 16857
-- ---------------------------------------------------
(16857,23338,7,1,0,1,1), -- Eroded Leather Case
(16857,25434,80,1,0,1,1), -- Fractured Carapace
(16857,25436,20,1,0,1,1), -- Twitching Leg
(16857,5759,0.1,1,0,1,1), -- Thorium Lockbox
(16857,1,80,1,1,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Mekthorg the Wild, NPC 18677
-- ---------------------------------------------------
(18677,31168,0,1,1,1,1), -- Demon-Forged Chestguard
(18677,31170,0,1,1,1,1), -- Demon-Forged Hauberk
(18677,31172,0,1,1,1,1), -- Demon-Cured Tunic
(18677,31174,0,1,1,1,1), -- Demonweave Raiment
(18677,21877,40,1,0,1,3), -- Netherweave Cloth
(18677,27854,4,1,0,1,1), -- Smoked Talbuk Venison
(18677,28399,2,1,0,1,3), -- Netherweave Cloth
-- ---------------------------------------------------
-- Mistress of Doom, NPC 19192
-- ---------------------------------------------------
(19192,21877,80,1,0,1,3), -- Netherweave Cloth
(19192,27854,8,1,0,1,1), -- Smoked Talbuk Venison
(19192,28399,5,1,0,1,1), -- Filtered Draenic Water
(19192,13446,3,1,0,1,1), -- Major Healing Potion
(19192,13444,1.5,1,0,1,1), -- Major Healing Potion
(19192,5759,0.15,1,0,1,1), -- Eternium Lockbox
(19192,1,90,1,0,-6001,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Mo'arg Forgefiend, NPC 16946
-- ---------------------------------------------------
(16946,21877,80,1,0,1,3), -- Netherweave Cloth
(16946,27854,9,1,0,1,1), -- Smoked Talbuk Venison
(16946,28399,4,1,0,1,1), -- Filtered Draenic Water
(16946,13446,3,1,0,1,1), -- Major Healing Potion
(16946,13444,1.5,1,0,1,1), -- Major Healing Potion
(16946,5760,0.15,1,0,1,1), -- Eternium Lockbox
(16946,1,2,1,0,-6003,1), -- Scroll of * Reference
(16946,2,85,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Netherhound, NPC 16950
-- ---------------------------------------------------
(16950,28513,-60,1,0,1,1), -- QItem: Demonic Rune Stone
(16950,3299,43,1,0,1,1), -- Fractured Canine
(16950,33547,17,1,0,1,1), -- Hardened Claw
(16950,4583,0.5,1,0,1,1), -- Thick Furry Mane
(16950,4584,0.2,1,0,1,1), -- Large Trophy Paw
(16950,5759,0.05,1,0,1,1), -- Thorium Lockbox
(16950,1,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Quillfang Ravager, NPC 16934
-- ---------------------------------------------------
(16934,27674,50,1,0,1,1), -- Ravager Flesh
(16934,23965,81,1,1,1,1), -- Chipped Ravager Claw
(16934,23979,19,1,1,1,1), -- Chipped Ravager Carapace
(16934,1,85,1,0,-6001,1), -- Generic HellfirePeninsula Loot1
-- ---------------------------------------------------
-- Quillfang Skitterer, NPC 19189
-- ---------------------------------------------------
(19189,27674,50,1,0,1,1), -- Ravager Flesh
(19189,23217,-4,1,0,1,1), -- QItem: Ravager Egg
(19189,23965,81,1,1,1,1), -- Chipped Ravager Claw
(19189,23979,19,1,1,1,1), -- Chipped Ravager Carapace
(19189,1,85,1,0,-6001,1), -- Generic HellfirePeninsula Loot1
-- ---------------------------------------------------
-- Raging Colossus, NPC 19188
-- ---------------------------------------------------
(19188,29579,80,1,0,2,4), -- Crystalized Stone Chips
(19188,29476,19,1,0,1,1), -- Crimson Crystal Shard
(19188,29578,19,1,0,2,4), -- Crystalized Stone
(19188,1,90,1,0,-6001,1), -- Generic HellfirePeninsula Loot1
-- ---------------------------------------------------
-- Razorfang Hatchling, NPC 16932
-- ---------------------------------------------------
(16932,23217,-1,1,0,1,1), -- QItem: Ravager Egg
(16932,27674,50,1,0,1,1), -- Ravager Flesh
(16932,23976,0,1,1,1,1), -- Gnarled Ravager Carapace
(16932,23977,0,1,1,1,1), -- Gnarled Ravager Fang
(16932,23978,0,1,1,1,1), -- Gnarled Ravager Claw
(16932,1,85,1,0,-6001,1), -- Generic HellfirePeninsula Loot1
-- ---------------------------------------------------
-- Razorfang Ravager, NPC 16933
-- ---------------------------------------------------
(16933,23965,81,1,1,1,1), -- Chipped Ravager Claw
(16933,23979,19,1,1,1,1), -- Chipped Ravager Carapace
(16933,27674,50,1,0,1,1), -- Ravager Flesh
(16933,23217,-20,1,0,1,1), -- QItem: Ravager Egg
(16933,1,85,1,0,-6001,1), -- Generic HellfirePeninsula Loot1
-- ---------------------------------------------------
-- Razorsaw, NPC 20798
-- ---------------------------------------------------
(20798,29590,55,1,0,1,1), -- Burning Legion Missive
(20798,29586,-100,1,0,1,1), -- QItem: Head of Forgefiend Razorsaw
(20798,21877,50,1,0,1,3), -- Netherweave Cloth
(20798,27854,5,1,0,1,1), -- Smoked Talbuk Venison
(20798,28399,2.5,1,0,1,1), -- Filtered Draenic Water
(20798,13446,1.5,1,0,1,1), -- Major Healing Potion
(20798,13444,0.75,1,0,1,1), -- Major Mana Potion
(20798,5760,0.15,1,0,1,1), -- Eternium Lockbox
(20798,1,100,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Ripp, NPC 19458
-- ---------------------------------------------------
(19458,3299,70,1,0,1,1), -- Fractured Canine
(19458,33547,25,1,0,1,1), -- Hardened Claw
(19458,4583,1,1,0,1,1), -- Thick Furry Mane
(19458,4584,1,1,0,1,1), -- Large Trophy Paw
(19458,5759,0.2,1,0,1,1), -- Thorium Lockbox
(19458,1,80,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Rogue Voidwalker, NPC 16974
-- ---------------------------------------------------
(16974,23218,-85,1,0,1,1), -- Condensed Voidwalker Essence
(16974,22577,20,1,0,1,1), -- Mote of Shadow
(16974,1,90,1,0,-6000,1), -- Generic HellfirePeninsule Loot
-- ---------------------------------------------------
-- Shattered Hand Acolyte, NPC 19415
-- ---------------------------------------------------
(19415,21877,70,1,0,1,3), -- Netherweave Cloth
(19415,27854,9,1,0,1,1), -- Smoked Talbuk Venison
(19415,28399,4,1,0,1,1), -- Filtered Draenic Water
(19415,13446,2,1,0,1,1), -- Major Healing Potion
(19415,13444,1,1,0,1,1), -- Major Healing Potion
(19415,5760,0.2,1,0,1,1), -- Eternium Lockbox
(19415,1,2,1,0,-6003,1), -- Scroll of * Reference
(19415,2,85,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Shattered Hand Berserker, NPC 16878
-- ---------------------------------------------------
(16878,21877,82,1,0,1,3), -- Netherweave Cloth
(16878,27854,8,1,0,1,1), -- Smoked Talbuk Venison
(16878,28399,4,1,0,1,1), -- Filtered Draenic Water
(16878,13446,3,1,0,1,1), -- Major Healing Potion
(16878,13444,1.5,1,0,1,1), -- Major Healing Potion
(16878,5760,0.2,1,0,1,1), -- Eternium Lockbox
(16878,1,2,1,0,-6003,1), -- Scroll of * Reference
(16878,2,85,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Shattered Hand Captain, NPC 16870
-- ---------------------------------------------------
(16870,21877,80,1,0,1,3), -- Netherweave Cloth
(16870,27854,8,1,0,1,1), -- Smoked Talbuk Venison
(16870,28399,4,1,0,1,1), -- Filtered Draenic Water
(16870,13446,2,1,0,1,1), -- Major Healing Potion
(16870,13444,1,1,0,1,1), -- Major Healing Potion
(16870,5760,0.2,1,0,1,1), -- Eternium Lockbox
(16870,1,2,1,0,-6003,1), -- Scroll of * Reference
(16870,2,85,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Shattered Hand Grenadier, NPC 19295
-- ---------------------------------------------------
(19295,21877,85,1,0,1,3), -- Netherweave Cloth
(19295,27854,9,1,0,1,1), -- Smoked Talbuk Venison
(19295,28399,4,1,0,1,1), -- Filtered Draenic Water
(19295,13446,2,1,0,1,1), -- Major Healing Potion
(19295,13444,1,1,0,1,1), -- Major Healing Potion
(19295,1,75,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Shattered Hand Grunt, NPC 16867
-- ---------------------------------------------------
(16867,21877,80,1,0,1,3), -- Netherweave Cloth
(16867,27854,8,1,0,1,1), -- Smoked Talbuk Venison
(16867,28399,4,1,0,1,1), -- Filtered Draenic Water
(16867,13446,2,1,0,1,1), -- Major Healing Potion
(16867,13444,1,1,0,1,1), -- Major Healing Potion
(16867,5760,0.18,1,0,1,1), -- Eternium Lockbox
(16867,1,2,1,0,-6003,1), -- Scroll of * Reference
(16867,2,85,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Shattered Hand Guard, NPC 19414
-- ---------------------------------------------------
(19414,21877,80,1,0,1,3), -- Netherweave Cloth
(19414,27854,8,1,0,1,1), -- Smoked Talbuk Venison
(19414,28399,4,1,0,1,1), -- Filtered Draenic Water
(19414,13446,3,1,0,1,1), -- Major Healing Potion
(19414,13444,1.5,1,0,1,1), -- Major Healing Potion
(19414,5760,0.18,1,0,1,1), -- Eternium Lockbox
(19414,1,2,1,0,-6003,1), -- Scroll of * Reference
(19414,2,85,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Shattered Hand Mage, NPC 19413
-- ---------------------------------------------------
(19413,21877,60,1,0,1,3), -- Netherweave Cloth
(19413,27854,6,1,0,1,1), -- Smoked Talbuk Venison
(19413,28399,3,1,0,1,1), -- Filtered Draenic Water
(19413,13446,2,1,0,1,1), -- Major Healing Potion
(19413,13444,1,1,0,1,1), -- Major Healing Potion
(19413,1,2,1,0,-6003,1), -- Scroll of * Reference
(19413,2,85,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Shattered Hand Neophyte, NPC 19410
-- ---------------------------------------------------
(19410,21877,80,1,0,1,3), -- Netherweave Cloth
(19410,27854,8,1,0,1,1), -- Smoked Talbuk Venison
(19410,28399,4,1,0,1,1), -- Filtered Draenic Water
(19410,13446,2,1,0,1,1), -- Major Healing Potion
(19410,13444,1,1,0,1,1), -- Major Healing Potion
(19410,5760,0.18,1,0,1,1), -- Eternium Lockbox
(19410,1,85,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Shattered Hand Warlock, NPC 19411
-- ---------------------------------------------------
(19411,21877,80,1,0,1,3), -- Netherweave Cloth
(19411,27854,9,1,0,1,1), -- Smoked Talbuk Venison
(19411,28399,4,1,0,1,1), -- Filtered Draenic Water
(19411,13446,2,1,0,1,1), -- Major Healing Potion
(19411,13444,1,1,0,1,1), -- Major Healing Potion
(19411,5760,0.18,1,0,1,1), -- Eternium Lockbox
(19411,1,85,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Sister of Grief, NPC 16960
-- ---------------------------------------------------
(16960,21877,80,1,0,1,3), -- Netherweave Cloth
(16960,27854,8,1,0,1,1), -- Smoked Talbuk Venison
(16960,28399,4,1,0,1,1), -- Filtered Draenic Water
(16960,13446,2,1,0,1,1), -- Major Healing Potion
(16960,13444,1,1,0,1,1), -- Major Healing Potion
(16960,1,85,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Starving Helboar, NPC 16879
-- ---------------------------------------------------
(16879,23270,-5,1,0,1,1), -- QItem: Tainted Helboar Meat
(16879,2295,74,1,1,1,1), -- Large Boar Tusk
(16879,44754,24,1,1,1,1), -- Severed Boar Tusk
(16879,25440,2,1,1,1,1), -- Cracked Boar Tusk
(16879,25442,0.5,1,0,1,1), -- Mangled Snout
(16879,2,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Stonescythe Alpha, NPC 16929
-- ---------------------------------------------------
(16929,24516,81,1,1,1,1), -- Damaged Rock Flayer Talon
(16929,24517,19,1,1,1,1), -- Blood Soaked Tail
(16929,27854,4,1,0,1,1), -- Smoked Talbuk Venison
(16929,28399,2,1,0,1,1), -- Filtered Draenic Water
(16929,13446,1.2,1,0,1,1), -- Major Healing Potion
(16929,13444,0.6,1,0,1,1), -- Major Healing Potion
(16929,1,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot
(16929,2,2,1,0,-6003,1), -- Scroll of * Reference
-- ---------------------------------------------------
-- Stonescythe Ambusher, NPC 16928
-- ---------------------------------------------------
(16928,24516,81,1,1,1,1), -- Damaged Rock Flayer Talon
(16928,24517,19,1,1,1,1), -- Blood Soaked Tail
(16928,1,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Stonescythe Whelp, NPC 16927
-- ---------------------------------------------------
(16927,24516,81,1,1,1,1), -- Damaged Rock Flayer Talon
(16927,24517,19,1,1,1,1), -- Blood Soaked Tail
(16927,27854,4,1,0,1,1), -- Smoked Talbuk Venison
(16927,28399,2,1,0,1,1), -- Filtered Draenic Water
(16927,13446,1.2,1,0,1,1), -- Major Healing Potion
(16927,13444,0.6,1,0,1,1), -- Major Healing Potion
(16927,1,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot
(16927,2,2,1,0,-6003,1), -- Scroll of * Reference
-- ---------------------------------------------------
-- Subjugator Shi'aziv, NPC 19282
-- ---------------------------------------------------
(19282,28513,-25,1,0,1,1), -- QItem: Demonic Rune Stone
(19282,27854,3,1,0,1,1), -- Smoked Talbuk Venison
(19282,28399,1.5,1,0,1,1), -- Filtered Draenic Water
(19282,13446,1,1,0,1,1), -- Major Healing Potion
(19282,13444,0.5,1,0,1,1), -- Major Healing Potion
(19282,2,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Subjugator Yalqiz, NPC 19335
-- ---------------------------------------------------
(19335,27854,1.2,1,0,1,1), -- Smoked Talbuk Venison
(19335,28399,0.6,1,0,1,1), -- Filtered Draenic Water
(19335,1,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Tagar Spinebreaker, NPC 19443
-- ---------------------------------------------------
(19443,21877,33,1,0,1,3), -- Netherweave Cloth
(19443,27854,4,1,0,1,1), -- Smoked Talbuk Venison
(19443,28399,2,1,0,1,1), -- Filtered Draenic Water
(19443,13446,1,1,0,1,1), -- Major Healing Potion
(19443,13444,0.5,1,0,1,1), -- Major Healing Potion
(19443,1,70,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Terrorfiend, NPC 16951
-- ---------------------------------------------------
(16951,21877,70,1,0,1,3), -- Netherweave Cloth
(16951,23269,-25,1,0,1,1), -- Felblood Sample
(16951,27854,7,1,0,1,1), -- Smoked Talbuk Venison
(16951,28399,3.5,1,0,1,1), -- Filtered Draenic Water
(16951,13446,2,1,0,1,1), -- Major Healing Potion
(16951,13444,1,1,0,1,1), -- Major Healing Potion
(16951,1,90,1,0,-6001,1), -- Generic HellfirePeninsula Loot
(16951,2,2,1,0,-6003,1), -- Scroll of * Reference
-- ---------------------------------------------------
-- Thornfang Ravager, NPC 19349
-- ---------------------------------------------------
(19349,27674,50,1,0,1,1), -- Ravager Flesh
(19349,23965,81,1,1,1,1), -- Chipped Ravager Claw
(19349,23979,19,1,1,1,1), -- Chipped Ravager Carapace
(19349,5760,0.1,1,0,1,1), -- Eternium Lockbox
(19349,1,85,1,0,-6001,1), -- Generic HellfirePeninsula Loot1
-- ---------------------------------------------------
-- Thornfang Venomspitter, NPC 19350
-- ---------------------------------------------------
(19350,23965,81,1,1,1,1), -- Chipped Ravager Claw
(19350,23979,19,1,1,1,1), -- Chipped Ravager Carapace
(19350,1,85,1,0,-6001,1), -- Generic HellfirePeninsula Loot1
-- ---------------------------------------------------
-- Tunneler, NPC 16968
-- ---------------------------------------------------
(16968,23338,5,1,0,1,1), -- Eroded Leather Case
(16968,25434,81,1,1,1,1), -- Fractured Carapace
(16968,25436,19,1,1,1,1), -- Twitching Leg
(16968,5760,0.1,1,0,1,1), -- Eternium Lockbox
(16968,1,80,1,1,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Twilight Cryomancer, NPC 26222
-- ---------------------------------------------------
(26222,14047,85,1,0,1,2), -- Runecloth
(26222,8952,9,1,0,1,2), -- Roasted Quail
(26222,8766,4.5,1,0,1,2), -- Morning Glory Dew
(26222,13446,6,1,0,1,2), -- Major Healing Potion
(26222,13444,3,1,0,1,2), -- Major Mana Potion
(26222,1,10,1,0,-1052,1), -- Level 52 Grey reference
(26222,2,10,1,0,-1053,1), -- Level 53 Grey reference
-- ---------------------------------------------------
-- Twilight Frostblade, NPC 26223
-- ---------------------------------------------------
(26223,14047,85,1,0,1,2), -- Runecloth
(26223,8952,9,1,0,1,2), -- Roasted Quail
(26223,8766,4.5,1,0,1,2), -- Morning Glory Dew
(26223,13446,6,1,0,1,2), -- Major Healing Potion
(26223,13444,3,1,0,1,2), -- Major Mana Potion
(26223,1,10,1,0,-1052,1), -- Level 52 Grey reference
(26223,2,10,1,0,-1053,1), -- Level 53 Grey reference
-- ---------------------------------------------------
-- Uncontrolled Voidwalker, NPC 16975
-- ---------------------------------------------------
(16975,23218,-80,1,0,1,1), -- Condensed Voidwalker Essence
(16975,22577,20,1,0,1,1), -- Mote of Shadow
(16975,1,90,1,0,-6000,1), -- Generic HellfirePeninsule Loot
-- ---------------------------------------------------
-- Unstable Voidwalker, NPC 20145
-- ---------------------------------------------------
(20145,29051,-100,1,0,1,1), -- QItem: Warp Nether
-- ---------------------------------------------------
-- Unyielding Footman, NPC 16904
-- ---------------------------------------------------
(16904,21877,60,1,0,1,1), -- Netherweave Cloth
(16904,14047,20,1,0,1,3), -- Runecloth
(16904,27859,8,1,0,1,1), -- Zanger Caps 
(16904,28399,4,1,0,1,1), -- Filtered Draenic Water
(16904,13446,2,1,0,1,1), -- Major Healing Potion
(16904,13444,1,1,0,1,1), -- Major Mana Potion
(16904,1,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Unyielding Knight, NPC 16906
-- ---------------------------------------------------
(16906,28552,15,1,0,1,1), -- A Mysterious Tome
(16906,21877,60,1,0,1,1), -- Netherweave Cloth
(16906,14047,20,1,0,1,3), -- Runecloth
(16906,27859,8,1,0,1,1), -- Zanger Caps 
(16906,28399,4,1,0,1,1), -- Filtered Draenic Water
(16906,13446,2,1,0,1,1), -- Major Healing Potion
(16906,13444,1,1,0,1,1), -- Major Mana Potion
(16906,1,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot
(16906,2,2,1,0,-6003,1), -- Scroll of * Reference
-- ---------------------------------------------------
-- Unyielding Sorcerer, NPC 16905
-- ---------------------------------------------------
(16905,21877,60,1,0,1,1), -- Netherweave Cloth
(16905,14047,20,1,0,1,3), -- Runecloth
(16905,27859,8,1,0,1,1), -- Zanger Caps 
(16905,28399,4,1,0,1,1), -- Filtered Draenic Water
(16905,13446,2,1,0,1,1), -- Major Healing Potion
(16905,13444,1,1,0,1,1), -- Major Mana Potion
(16905,1,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot
(16905,2,2,1,0,-6003,1), -- Scroll of * Reference
-- ---------------------------------------------------
-- Vacillating Voidcaller, NPC 19527
-- ---------------------------------------------------
(19527,29161,-100,1,0,1,3), -- Void Ridge Soul Shard
(19527,22577,20,1,0,1,2), -- Mote of Shadow
(19527,1,50,1,1,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Void Baron Galaxis, NPC 16939
-- ---------------------------------------------------
(16939,29162,-100,1,0,1,1), -- Galaxis Soul Shard
-- ---------------------------------------------------
-- Vorakem Doomspeaker, NPC 18679
-- ---------------------------------------------------
(18679,31182,0,1,1,1,1), -- Legion Helm
(18679,31183,0,1,1,1,1), -- Legion Coif
(18679,31184,0,1,1,1,1), -- Legion Headguard
(18679,31185,0,1,1,1,1), -- Legion Crown
(18679,21877,40,1,0,1,3), -- Netherweave Cloth
(18679,27854,4,1,0,1,1), -- Smoked Talbuk Venison
(18679,28399,2.5,1,0,1,1), -- Filtered Draenic Water
(18679,13446,1,1,0,1,1), -- Major Healing Potion
(18679,13444,0.5,1,0,1,1), -- Major Healing Potion
-- ---------------------------------------------------
-- Warboss Nekrogg, NPC 19263
-- ---------------------------------------------------
(19263,21877,90,1,0,1,1), -- Netherweave Cloth
(19263,1,80,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Warbringer Arix'Amal, NPC 19298
-- ---------------------------------------------------
(19298,29795,-85,1,0,1,1), -- QItem: Burning Legion Gate Key
(19298,29588,50,1,0,1,1), -- Burning Legion Gate Key
(19298,21877,46,1,0,1,3), -- Netherweave Cloth
(19298,27854,5,1,0,1,1), -- Smoked Talbuk Venison
(19298,28399,2.5,1,0,1,1), -- Filtered Draenic Water
(19298,13446,1.4,1,0,1,1), -- Major Healing Potion
(19298,13444,0.7,1,0,1,1), -- Major Healing Potion
(19298,1,80,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Warlord Morkh, NPC 16964
-- ---------------------------------------------------
(16964,30158,-100,1,0,1,1), -- QItem: Morkh's Shattered Armor
(16964,21877,35,1,0,1,1), -- Netherweave Cloth
(16964,14047,10,1,0,1,3), -- Runecloth
(16964,27854,4,1,0,1,1), -- Smoked Talbuk Venison
(16964,28399,2,1,0,1,1), -- Filtered Draenic Water
(16964,13446,1,1,0,1,1), -- Major Healing Potion
(16964,13444,0.5,1,0,1,1), -- Major Healing Potion
(16964,1,80,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Worg Master Kruush, NPC 19442
-- ---------------------------------------------------
(19442,31374,-100,1,0,1,1), -- QItem: Worg Master's Head
(19442,30425,-25,1,0,1,1), -- QItem: Bleeding Hollow Blood
(19442,30157,-10,1,0,1,1), -- QItem: Cursed Talisman
(19442,21877,45,1,0,1,3), -- Netherweave Cloth
(19442,27854,4,1,0,1,1), -- Smoked Talbuk Venison
(19442,28399,2,1,0,1,1), -- Filtered Draenic Water
(19442,13446,1,1,0,1,1), -- Major Healing Potion
(19442,13444,0.5,1,0,1,1), -- Major Mana Potion
(19442,5759,0.1,1,0,1,1), -- Thorium Lockbox
(19442,1,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot
-- ---------------------------------------------------
-- Wrath Herald, NPC 24919
-- ---------------------------------------------------
(24919,34259,-100,1,0,1,1), -- Demonic Blood
(24919,21877,45,1,0,1,3), -- Netherweave Cloth
(24919,27854,4,1,0,1,1), -- Smoked Talbuk Venison
(24919,27860,2,1,0,1,1), -- Purified Draenic Water
(24919,22829,1.6,1,0,1,1), -- Super Healing Potion
(24919,22832,0.8,1,0,1,1), -- Super Mana Potion
(24919,1,100,1,0,-6002,1), -- Generic HellfirePeninsula Loot2
-- ---------------------------------------------------
-- Wrathguard, NPC 18975
-- ---------------------------------------------------
(18975,28513,-85,1,0,1,1), -- QItem: Demonic Rune Stone
(18975,27854,8,1,0,1,1), -- Smoked Talbuk Venison
(18975,28399,4,1,0,1,1), -- Filtered Draenic Water
(18975,13446,3,1,0,1,1), -- Major Healing Potion
(18975,13444,1.5,1,0,1,1), -- Major Healing Potion
(18975,5759,0.15,1,0,1,1), -- Thorium Lockbox
(18975,1,2,1,0,-6003,1), -- Scroll of * Reference
(18975,2,90,1,0,-6000,1); -- Generic HellfirePeninsula Loot

UPDATE `creature_template` SET `lootid`=`entry` WHERE `entry` IN (26222,26223); 
DELETE FROM `reference_loot_template` WHERE `entry`=34081;
SET @ZM1:=6010;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELETE FROM `reference_loot_template` WHERE `entry`=@ZM1;
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
(@ZM1,1,30,1,0,-4000,1), -- Grey Items level 61 (ilvl 66)
(@ZM1,2,30,1,0,-4001,1), -- Grey Items level 64 (ilvl 69)
(@ZM1,3,2,1,0,-4103,1), -- Green Items level 60 (ilvl 90) 
(@ZM1,4,2,1,0,-4104,1), -- Green Items level 61 (ilvl 93) 
(@ZM1,5,2,1,0,-4105,1), -- Green Items level 62 (ilvl 96) 
(@ZM1,6,2,1,0,-4106,1), -- Green Items level 63 (ilvl 99) 
(@ZM1,7,0.5,1,0,-4203,1), -- Blue items level 63 (ilvl 94)
(@ZM1,8,0.5,1,0,-4204,1), -- Blue items level 64 (ilvl 97)
(@ZM1,9,0.5,1,0,-4205,1), -- Blue items level 65 (ilvl 97)
(@ZM1,5760,0.5,1,0,1,1); -- Eternium Lockbox
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELETE FROM `creature_loot_template` WHERE `entry` IN (18285,18119,18120,18117,20443,20444,18118,18121,19732,18283,20792,18088,20088,20090,18089,20089,20196,18127,18682,20197,18281,20293,20295,20294,18159,20442,18992,19174,18681,18116,18115,19733,20079,18087,19946,19947,18086,18122,18134,18214,20198,20270,18113,18114,19734,18129,19730,19729,18080,20290,20291,18282,20445,20292,18137,18136,18135,18130,18131,18133,20283,19706,18680,18213,18286,18212,18160,20324,20279,20280,18046,18044,18128,18280,18154,19519,18125,18340,20477,18138,18077,18079,20115,18132,19402,18124,18123,20387);
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- "Count" Ungula, NPC 18285
-- ---------------------------------------------------
(18285,25459,-100,1,0,1,1), -- QItem: "Count" Ungula's Mandible
(18285,25434,80,1,1,1,1), -- Fractured Carapace
(18285,25436,20,1,1,1,1), -- Twitsching Leg
(18285,24493,-10,1,0,1,1), -- QItem: Marshfang Slicer Blade
(18285,1,100,1,0,-6010,1), -- Generic Zangermarsh Loot
-- ---------------------------------------------------
-- Ango'rosh Brute, NPC 18119
-- ---------------------------------------------------
(18119,21877,10,1,0,1,3), -- Netherweave Cloth
(18119,27854,1.2,1,0,1,1), -- Smoked Talbuk Venison
(18119,28399,0.6,1,0,1,1), -- Filtered Draenic Water
(18119,1,80,1,0,-6001,1), -- Generic HellfirePeninsula Loot1 (YES FOR ZM)
-- ---------------------------------------------------
-- Ango'rosh Mauler, NPC 18120
-- ---------------------------------------------------
(18120,24240,-50,1,0,1,1), -- QItem: Box of Mushrooms
(18120,21877,70,1,0,1,3), -- Netherweave Cloth
(18120,27854,6,1,0,1,1), -- Smoked Talbuk Venison
(18120,28399,3,1,0,1,1), -- Filtered Draenic Water
(18120,13446,2,1,0,1,1), -- Major Healing Potion
(18120,13444,1,1,0,1,1), -- Major Mana Potion
(18120,1,2,1,0,-6003,1), -- Scroll of * VI Reference
(18120,2,85,1,0,-6010,1), -- Generic Zangermarsh Loot
-- ---------------------------------------------------
-- Ango'rosh Ogre, NPC 18117
-- ---------------------------------------------------
(18117,24238,-50,1,0,1,1), -- QItem: Mushroom Sample
(18117,21877,62,1,0,1,3), -- Netherweave Cloth
(18117,27854,6,1,0,1,1), -- Smoked Talbuk Venison
(18117,28399,3,1,0,1,1), -- Filtered Draenic Water
(18117,13446,2,1,0,1,1), -- Major Healing Potion
(18117,13444,1,1,0,1,1), -- Major Mana Potion
(18117,1,2,1,0,-6003,1), -- Scroll of * VI Reference
(18117,2,90,1,0,-6010,1), -- Generic Zangermarsh Loot
-- ---------------------------------------------------
-- Ango'rosh Sentry, NPC 20443
-- ---------------------------------------------------
(20443,24238,-50,1,0,1,1), -- QItem: Mushroom Sample
(20443,21877,44,1,0,1,3), -- Netherweave Cloth
(20443,27854,4,1,0,1,1), -- Smoked Talbuk Venison
(20443,28399,2,1,0,1,1), -- Filtered Draenic Water
(20443,13446,1.5,1,0,1,1), -- Major Healing Potion
(20443,13444,0.75,1,0,1,1), -- Major Mana Potion
(20443,1,80,1,0,-6001,1), -- Generic HellfirePeninsula Loot1 (YES FOR ZM)
-- ---------------------------------------------------
-- Ango'rosh Shadowmage, NPC 20444
-- ---------------------------------------------------
(20444,24240,-40,1,0,1,1), -- QItem: Box of Mushrooms
(20444,21877,70,1,0,1,3), -- Netherweave Cloth
(20444,27854,6,1,0,1,1), -- Smoked Talbuk Venison
(20444,28399,3,1,0,1,1), -- Filtered Draenic Water
(20444,13446,2,1,0,1,1), -- Major Healing Potion
(20444,13444,1,1,0,1,1), -- Major Mana Potion
(20444,2,85,1,0,-6010,1), -- Generic Zangermarsh Loot
-- ---------------------------------------------------
-- Ango'rosh Shaman, NPC 18118
-- ---------------------------------------------------
(18118,24238,-45,1,0,1,1), -- QItem: Mushroom Sample
(18118,21877,60,1,0,1,3), -- Netherweave Cloth
(18118,27854,6,1,0,1,1), -- Smoked Talbuk Venison
(18118,28399,3,1,0,1,1), -- Filtered Draenic Water
(18118,13446,2,1,0,1,1), -- Major Healing Potion
(18118,13444,1,1,0,1,1), -- Major Mana Potion
(18118,2,2,1,0,-6003,1), -- Scroll of * VI Reference
(18118,1,80,1,0,-6001,1), -- Generic HellfirePeninsula Loot1 (YES FOR ZM)
-- ---------------------------------------------------
-- Ango'rosh Souleater, NPC 18121
-- ---------------------------------------------------
(18121,24240,-35,1,0,1,1), -- QItem: Box of Mushrooms
(18121,21877,70,1,0,1,3), -- Netherweave Cloth
(18121,27854,6,1,0,1,1), -- Smoked Talbuk Venison
(18121,28399,3,1,0,1,1), -- Filtered Draenic Water
(18121,13446,2,1,0,1,1), -- Major Healing Potion
(18121,13444,1,1,0,1,1), -- Major Mana Potion
(18121,1,2,1,0,-6003,1), -- Scroll of * VI Reference
(18121,2,90,1,0,-6010,1), -- Generic Zangermarsh Loot
-- ---------------------------------------------------
-- Ango'rosh Warlock, NPC 19732
-- ---------------------------------------------------
(19732,21877,82,1,0,1,3), -- Netherweave Cloth
(19732,27854,8,1,0,1,1), -- Smoked Talbuk Venison
(19732,28399,4,1,0,1,1), -- Filtered Draenic Water
(19732,13446,3,1,0,1,1), -- Major Healing Potion
(19732,13444,1.5,1,0,1,1), -- Major Mana Potion
(19732,1,100,1,0,-6001,1), -- Generic HellfirePeninsula Loot1 (YES FOR ZM)
-- ---------------------------------------------------
-- Blacksting, NPC 18283
-- ---------------------------------------------------
(18283,25448,-100,1,0,1,1), -- QItem: Blacksting's Stinger
(18283,25434,80,1,1,1,1), -- Fractured Carapace
(18283,25436,18,1,1,1,1), -- Twitching Leg
(18283,24372,-10,1,0,1,1), -- QItem: Diaphanous Wing
(18283,1,100,1,0,-6001,1), -- Generic HellfirePeninsula Loot1 (YES FOR ZM)
-- ---------------------------------------------------
-- Bloodscale Elemental, NPC 20792
-- ---------------------------------------------------
(20792,24507,81,1,1,1,1), -- Elemental Shard
(20792,24510,19,1,1,1,1), -- Primordial Core
(20792,22578,19,1,0,1,2), -- Mote of Water
(20792,7080,1,1,0,1,2), -- Essence of Water
(20792,1,95,1,0,-6001,1), -- Generic HellfirePeninsula Loot1 (YES FOR ZM)
-- ---------------------------------------------------
-- Bloodscale Enchantress, NPC 18088
-- ---------------------------------------------------
(18088,24401,35,1,0,1,1), -- Unidentified Plant Parts
(18088,17057,33,1,0,1,1), -- Shiny Fish Scales
(18088,17058,30,1,0,1,1), -- Fish Oil
(18088,24476,19,1,0,1,1), -- Jaggal Clam
(18088,24280,-10,1,0,1,1), -- QItem: Naga Claws
(18088,24330,-1,1,0,1,1), -- QItem: Drain Schematics
(18088,27858,4,1,0,1,3), -- Sunspring Carp
(18088,28399,2,1,0,1,1), -- Filtered Draenic Water
(18088,13446,1.5,1,0,1,1), -- Major Healing Potion
(18088,13444,0.75,1,0,1,1), -- Major Mana Potion
(18088,1,2,1,0,-6003,1), -- Scroll of * VI Reference
(18088,2,90,1,0,-6010,1), -- Generic Zangermarsh Loot
-- ---------------------------------------------------
-- Bloodscale Overseer, NPC 20088
-- ---------------------------------------------------
(20088,24280,-80,1,0,1,1), -- QItem: Naga Claws
(20088,24401,30,1,0,1,1), -- Unidentified Plant Parts
(20088,17057,25,1,0,1,1), -- Shiny Fish Scales
(20088,17058,20,1,0,1,1), -- Fish Oil
(20088,24476,15,1,0,1,1), -- Jaggal Clam
(20088,24330,-2,1,0,1,1), -- QItem: Drain Schematics
(20088,27858,4,1,0,1,3), -- Sunspring Carp
(20088,28399,2,1,0,1,1), -- Filtered Draenic Water
(20088,13446,1,1,0,1,1), -- Major Healing Potion
(20088,13444,0.5,1,0,1,1), -- Major Mana Potion
(20088,1,2,1,0,-6003,1), -- Scroll of * VI Reference
(20088,2,90,1,0,-6010,1), -- Generic Zangermarsh Loot
-- ---------------------------------------------------
-- Bloodscale Sentry, NPC 20090
-- ---------------------------------------------------
(20090,24507,68,1,1,1,1), -- Elemental Shard
(20090,24510,17,1,1,1,1), -- Primordial Core
(20090,22578,15,1,0,1,2), -- Mote of Water
(20090,7080,1,1,0,1,2), -- Essence of Water
(20090,1,95,1,0,-6001,1), -- Generic HellfirePeninsula Loot1 (YES FOR ZM)
-- ---------------------------------------------------
-- Bloodscale Slavedriver, NPC 18089
-- ---------------------------------------------------
(18089,24401,35,1,0,1,1), -- Unidentified Plant Parts
(18089,17057,33,1,0,1,1), -- Shiny Fish Scales
(18089,17058,30,1,0,1,1), -- Fish Oil
(18089,24476,19,1,0,1,1), -- Jaggal Clam
(18089,24280,-5,1,0,1,1), -- QItem: Naga Claws
(18089,24330,-0.5,1,0,1,1), -- QItem: Drain Schematics
(18089,27858,4,1,0,1,3), -- Sunspring Carp
(18089,28399,2,1,0,1,1), -- Filtered Draenic Water
(18089,13446,1.5,1,0,1,1), -- Major Healing Potion
(18089,13444,0.75,1,0,1,1), -- Major Mana Potion
(18089,1,1,1,0,-6003,1), -- Scroll of * VI Reference
(18089,2,90,1,0,-6010,1), -- Generic Zangermarsh Loot
-- ---------------------------------------------------
-- Bloodscale Wavecaller, NPC 20089
-- ---------------------------------------------------
(20089,24280,-80,1,0,1,1), -- QItem: Naga Claws
(20089,24401,30,1,0,1,1), -- Unidentified Plant Parts
(20089,17057,25,1,0,1,1), -- Shiny Fish Scales
(20089,17058,20,1,0,1,1), -- Fish Oil
(20089,24476,15,1,0,1,1), -- Jaggal Clam
(20089,24330,-2,1,0,1,1), -- QItem: Drain Schematics
(20089,27858,4,1,0,1,3), -- Sunspring Carp
(20089,28399,2,1,0,1,1), -- Filtered Draenic Water
(20089,13446,1,1,0,1,1), -- Major Healing Potion
(20089,13444,0.5,1,0,1,1), -- Major Mana Potion
(20089,1,2,1,0,-6003,1), -- Scroll of * VI Reference
(20089,2,90,1,0,-6010,1), -- Generic Zangermarsh Loot
-- ---------------------------------------------------
-- Bloodthirsty Marshfang, NPC 20196
-- ---------------------------------------------------
(20196,28058,81,1,1,1,1), -- Shredded Wyrm Wing
(20196,28059,19,1,1,1,1), -- Iridescent Eye
(20196,22578,19,1,0,1,1), -- Mote of Water
(20196,7080,1,1,0,1,1), -- Essence of Water
(20196,1,95,1,0,-6000,1), -- Generic HellfirePeninsula Loot (YES FOR ZM)
-- ---------------------------------------------------
-- Bog Lord, NPC 18127
-- ---------------------------------------------------
(18127,25450,82,1,0,1,1), -- Creeping Moss
(18127,25452,18,1,1,1,1), -- Blighted Fungus
(18127,24291,-35,1,0,1,1), -- QItem: Bog Lord Tendril
(18127,24401,25,1,0,1,1), -- Unidentified Plant Parts
(18127,22575,19,1,0,1,1), -- Mote of Life
(18127,1,100,1,0,-6010,1), -- Generic Zangermarsh Loot
-- ---------------------------------------------------
-- Bog Lurker, NPC 18682
-- ---------------------------------------------------
(18682,31247,0,1,1,1,1), -- Bog Pauldrons
(18682,31248,0,1,1,1,1), -- Bog Epaulets
(18682,31249,0,1,1,1,1), -- Bog Spaulders
(18682,31250,0,1,1,1,1), -- Bog Mantle
(18682,25456,80,1,2,1,1), -- Glowing Spores
(18682,25454,20,1,2,1,1), -- Luminescent Globe
-- ---------------------------------------------------
-- Bogflare Needler, NPC 20197
-- ---------------------------------------------------
(20197,25434,81,1,1,1,1), -- Fractured Carapace
(20197,25436,19,1,1,1,1), -- Twitching Leg
(20197,24372,-2,1,0,1,1), -- QItem: Diaphanous Wing
(20197,29960,0.05,1,0,1,1), -- Captured Firefly
(20197,1,100,1,0,-6001,1), -- Generic HellfirePeninsula Loot1 (YES FOR ZM)
-- ---------------------------------------------------
-- Boglash, NPC 18281
-- ---------------------------------------------------
(18281,25434,80,1,1,1,1), -- Fractured Carapace
(18281,25436,18,1,1,1,1), -- Twitching Leg
(18281,27676,50,1,0,1,1), -- Strange Spores
(18281,24449,-35,1,0,1,1), -- QItem: Fertile Spores
(18281,1,100,1,0,-6001,1), -- Generic HellfirePeninsula Loot1 (YES FOR ZM)
-- ---------------------------------------------------
-- Bogstrok Clacker, NPC 20293
-- ---------------------------------------------------
(20293,24401,40,1,0,1,1), -- Unidentified Plant Parts
(20293,17057,33,1,0,1,1), -- Shiny Fish Scales
(20293,17058,30,1,0,1,1), -- Fish Oil
(20293,24476,20,1,0,1,1), -- Jaggal Clam
(20293,27858,4,1,0,1,3), -- Sunspring Carp
(20293,28399,2,1,0,1,1), -- Filtered Draenic Water
(20293,13446,1.5,1,0,1,1), -- Major Healing Potion
(20293,13444,0.75,1,0,1,1), -- Major Mana Potion
(20293,1,100,1,0,-6001,1), -- Generic HellfirePeninsula Loot1 (YES FOR ZM)
-- ---------------------------------------------------
-- Bogstrok Crusher, NPC 20295
-- ---------------------------------------------------
(20295,24401,40,1,0,1,1), -- Unidentified Plant Parts
(20295,17057,33,1,0,1,1), -- Shiny Fish Scales
(20295,17058,30,1,0,1,1), -- Fish Oil
(20295,24476,20,1,0,1,1), -- Jaggal Clam
(20295,27858,4,1,0,1,3), -- Sunspring Carp
(20295,28399,2,1,0,1,1), -- Filtered Draenic Water
(20295,13446,1.5,1,0,1,1), -- Major Healing Potion
(20295,13444,0.75,1,0,1,1), -- Major Mana Potion
(20295,1,100,1,0,-6001,1), -- Generic HellfirePeninsula Loot1 (YES FOR ZM)
-- ---------------------------------------------------
-- Bogstrok Razorclaw, NPC 20294
-- ---------------------------------------------------
(20294,24401,40,1,0,1,1), -- Unidentified Plant Parts
(20294,17057,33,1,0,1,1), -- Shiny Fish Scales
(20294,17058,30,1,0,1,1), -- Fish Oil
(20294,24476,20,1,0,1,1), -- Jaggal Clam
(20294,27858,4,1,0,1,3), -- Sunspring Carp
(20294,28399,2,1,0,1,1), -- Filtered Draenic Water
(20294,13446,1.5,1,0,1,1), -- Major Healing Potion
(20294,13444,0.75,1,0,1,1), -- Major Mana Potion
(20294,1,100,1,0,-6001,1), -- Generic HellfirePeninsula Loot1 (YES FOR ZM)
-- ---------------------------------------------------
-- Boss Grog'ak, NPC 18159
-- ---------------------------------------------------
(18159,24472,-100,1,0,1,1), -- QItem: Boss Grog'ak's Head
(18159,24238,-100,1,0,1,1), -- QItem: Mushroom Sample
(18159,21877,45,1,0,1,3), -- Netherweave Cloth
(18159,27854,6,1,0,1,1), -- Smoked Talbuk Venison
(18159,28399,3,1,0,1,1), -- Filtered Draenic Water
(18159,13446,2,1,0,1,1), -- Major Healing Potion
(18159,13444,1,1,0,1,1), -- Major Mana Potion
(18159,1,90,1,0,-6001,1), -- Generic HellfirePeninsula Loot1 (YES FOR ZM)
-- ---------------------------------------------------
-- Captain Bo'kar, NPC 20442
-- ---------------------------------------------------
(20442,24240,-50,1,0,1,1), -- QItem: Box of Mushrooms
(20442,21877,80,1,0,1,3), -- Netherweave Cloth
(20442,27854,6,1,0,1,1), -- Smoked Talbuk Venison
(20442,28399,3,1,0,1,1), -- Filtered Draenic Water
(20442,13446,2,1,0,1,1), -- Major Healing Potion
(20442,13444,1,1,0,1,1), -- Major Mana Potion
(20442,1,90,1,0,-6001,1), -- Generic HellfirePeninsula Loot1 (YES FOR ZM)
-- ---------------------------------------------------
-- Captain Krosh, NPC 18992
-- ---------------------------------------------------
(18992,24240,-5,1,0,1,1), -- QItem: Box of Mushrooms
(18992,21877,25,1,0,1,3), -- Netherweave Cloth
(18992,27854,6,1,0,1,1), -- Smoked Talbuk Venison
(18992,28399,3,1,0,1,1), -- Filtered Draenic Water
(18992,13446,2,1,0,1,1), -- Major Healing Potion
(18992,13444,1,1,0,1,1), -- Major Mana Potion
(18992,1,90,1,0,-6010,1), -- Generic Zangermarsh Loot
-- ---------------------------------------------------
-- Chieftain Mummaki, NPC 19174
-- ---------------------------------------------------
(19174,27943,-100,1,0,1,1), -- QItem: Chieftain Mummaki's Totem
(19174,21877,25,1,0,1,3), -- Netherweave Cloth
(19174,27854,6,1,0,1,1), -- Smoked Talbuk Venison
(19174,28399,3,1,0,1,1), -- Filtered Draenic Water
(19174,13446,2,1,0,1,1), -- Major Healing Potion
(19174,13444,1,1,0,1,1), -- Major Mana Potion
(19174,1,90,1,0,-6010,1), -- Generic Zangermarsh Loot
-- ---------------------------------------------------
-- Coilfang Emissary, NPC 18681
-- ---------------------------------------------------
(18681,31242,0,1,1,1,1), -- Nagascale Legplates
(18681,31243,0,1,1,1,1), -- Nagascale Legguard
(18681,31244,0,1,1,1,1), -- Nagahide Pants
(18681,31245,0,1,1,1,1), -- Nagahide Leggings
(18681,17057,40,1,0,1,2), -- Shiny Fish Scales
(18681,21877,40,1,0,1,3), -- Netherweave Cloth
(18681,17058,25,1,0,1,1), -- Fish Oil
-- ---------------------------------------------------
-- Daggerfen Assassin, NPC 18116
-- ---------------------------------------------------
(18116,21877,75,1,0,1,3), -- Netherweave Cloth
(18116,27854,8,1,0,1,1), -- Smoked Talbuk Venison
(18116,28399,4,1,0,1,1), -- Filtered Draenic Water
(18116,13446,2,1,0,1,1), -- Major Healing Potion
(18116,13444,1,1,0,1,1), -- Major Mana Potion
(18116,1,90,1,0,-6010,1), -- Generic Zangermarsh Loot
-- ---------------------------------------------------
-- Daggerfen Muckdweller, NPC 18115
-- ---------------------------------------------------
(18115,21877,75,1,0,1,3), -- Netherweave Cloth
(18115,27854,8,1,0,1,1), -- Smoked Talbuk Venison
(18115,28399,4,1,0,1,1), -- Filtered Draenic Water
(18115,13446,2,1,0,1,1), -- Major Healing Potion
(18115,13444,1,1,0,1,1), -- Major Mana Potion
(18115,1,80,1,0,-6010,1), -- Generic Zangermarsh Loot
-- ---------------------------------------------------
-- Daggerfen Servant, NPC 19733
-- ---------------------------------------------------
(19733,17057,33,1,0,1,1), -- Shiny Fish Scales
(19733,17058,30,1,0,1,1), -- Fish Oil
(19733,24476,20,1,0,1,1), -- Jaggal Clam
(19733,27858,4,1,0,1,3), -- Sunspring Carp
(19733,28399,2,1,0,1,1), -- Filtered Draenic Water
(19733,13446,1.5,1,0,1,1), -- Major Healing Potion
(19733,13444,0.75,1,0,1,1), -- Major Mana Potion
(19733,1,100,1,0,-6001,1), -- Generic HellfirePeninsula Loot1 (YES FOR ZM)
-- ---------------------------------------------------
-- Darkcrest Sentry, NPC 20079
-- ---------------------------------------------------
(20079,24507,70,1,1,1,1), -- Elemental Shard
(20079,24510,15,1,1,1,1), -- Primordial Core
(20079,22578,15,1,0,1,2), -- Mote of Water
(20079,7080,1,1,0,1,2), -- Essence of Water
(20079,1,95,1,0,-6001,1), -- Generic HellfirePeninsula Loot1 (YES FOR ZM)
-- ---------------------------------------------------
-- Darkcrest Siren, NPC 18087
-- ---------------------------------------------------
(18087,24280,-80,1,0,1,1), -- QItem: Naga Claws
(18087,24401,30,1,0,1,1), -- Unidentified Plant Parts
(18087,17057,25,1,0,1,1), -- Shiny Fish Scales
(18087,17058,20,1,0,1,1), -- Fish Oil
(18087,24476,15,1,0,1,1), -- Jaggal Clam
(18087,27858,3,1,0,1,3), -- Sunspring Carp
(18087,28399,1.5,1,0,1,1), -- Filtered Draenic Water
(18087,13446,1,1,0,1,1), -- Major Healing Potion
(18087,13444,0.5,1,0,1,1), -- Major Mana Potion
(18087,1,90,1,0,-6001,1), -- Generic HellfirePeninsula Loot1 (YES FOR ZM)
-- ---------------------------------------------------
-- Darkcrest Slaver, NPC 19946
-- ---------------------------------------------------
(19946,24280,-95,1,0,1,1), -- QItem: Naga Claws
(19946,24401,30,1,0,1,1), -- Unidentified Plant Parts
(19946,17057,25,1,0,1,1), -- Shiny Fish Scales
(19946,17058,20,1,0,1,1), -- Fish Oil
(19946,24476,15,1,0,1,1), -- Jaggal Clam
(19946,27858,3,1,0,1,3), -- Sunspring Carp
(19946,28399,1.5,1,0,1,1), -- Filtered Draenic Water
(19946,13446,1,1,0,1,1), -- Major Healing Potion
(19946,13444,0.5,1,0,1,1), -- Major Mana Potion
(19946,1,2,1,0,-6003,1), -- Scroll of * VI Reference
(19946,2,90,1,0,-6001,1), -- Generic HellfirePeninsula Loot1 (YES FOR ZM)
-- ---------------------------------------------------
-- Darkcrest Sorceress, NPC 19947
-- ---------------------------------------------------
(19947,24280,-95,1,0,1,1), -- QItem: Naga Claws
(19947,24401,30,1,0,1,1), -- Unidentified Plant Parts
(19947,17057,25,1,0,1,1), -- Shiny Fish Scales
(19947,17058,20,1,0,1,1), -- Fish Oil
(19947,24476,15,1,0,1,1), -- Jaggal Clam
(19947,27858,3,1,0,1,3), -- Sunspring Carp
(19947,28399,1.5,1,0,1,1), -- Filtered Draenic Water
(19947,13446,1,1,0,1,1), -- Major Healing Potion
(19947,13444,0.5,1,0,1,1), -- Major Mana Potion
(19947,1,2,1,0,-6003,1), -- Scroll of * VI Reference
(19947,2,90,1,0,-6001,1), -- Generic HellfirePeninsula Loot1 (YES FOR ZM)
-- ---------------------------------------------------
-- Darkcrest Taskmaster, NPC 18086
-- ---------------------------------------------------
(18086,24280,-80,1,0,1,1), -- QItem: Naga Claws
(18086,24401,30,1,0,1,1), -- Unidentified Plant Parts
(18086,17057,25,1,0,1,1), -- Shiny Fish Scales
(18086,17058,20,1,0,1,1), -- Fish Oil
(18086,24476,15,1,0,1,1), -- Jaggal Clam
(18086,27858,3,1,0,1,3), -- Sunspring Carp
(18086,28399,1.5,1,0,1,1), -- Filtered Draenic Water
(18086,13446,1,1,0,1,1), -- Major Healing Potion
(18086,13444,0.5,1,0,1,1), -- Major Mana Potion
(18086,1,2,1,0,-6003,1), -- Scroll of * VI Reference
(18086,2,90,1,0,-6001,1), -- Generic HellfirePeninsula Loot1 (YES FOR ZM)
-- ---------------------------------------------------
-- Dreghood Drudge, NPC 18122
-- ---------------------------------------------------
(18122,21877,60,1,0,1,3), -- Netherweave Cloth
(18122,24401,35,1,0,1,1), -- Unidentified Plant Parts
(18122,27854,3,1,0,1,1), -- Smoked Talbuk Venison
(18122,28399,1.5,1,0,1,1), -- Filtered Draenic Water
(18122,13446,1,1,0,1,1), -- Major Healing Potion
(18122,13444,0.5,1,0,1,1), -- Major Mana Potion
(18122,2,90,1,0,-6001,1), -- Generic HellfirePeninsula Loot1 (YES FOR ZM)
-- ---------------------------------------------------
-- Fen Strider, NPC 18134
-- ---------------------------------------------------
(18134,25434,81,1,1,1,1), -- Fractured Carapace
(18134,25436,19,1,1,1,1), -- Twitching Leg
(18134,27676,50,1,0,1,1), -- Strange Spores
(18134,24449,-35,1,0,1,1), -- QItem: Fertile Spores
(18134,24427,20,1,0,1,1), -- QItem: Fen Strider Tentacle
(18134,1,100,1,0,-6001,1), -- Generic HellfirePeninsula Loot1 (YES FOR ZM)
-- ---------------------------------------------------
-- Fenclaw Thrasher, NPC 18214
-- ---------------------------------------------------
(18214,25429,81,1,1,1,1), -- Grime-Encrusted Scale
(18214,25431,19,1,1,1,1), -- Ripped Fin
(18214,24486,-50,1,0,1,1), -- QItem: Fenclaw Hide
(18214,24401,25,1,0,1,1), -- Unidentified Plant Parts
(18214,24476,15,1,0,1,1), -- Jaggal Clam
(18214,24375,-15,1,0,1,1), -- QItem: Thick Hydra Scale
(18214,1,100,1,0,-6000,1), -- Generic HellfirePeninsula Loot1 (YES FOR ZM)
-- ---------------------------------------------------
-- Fenglow Stinger, NPC 20198
-- ---------------------------------------------------
(20198,25434,80,1,1,1,1), -- Fractured Carapace
(20198,25436,20,1,1,1,1), -- Twitching Leg
(20198,24372,-10,1,0,1,1), -- QItem: Diaphanous Wing
(20198,24401,25,1,0,1,1), -- Unidentified Plant Parts
(20198,24485,-30,1,0,1,1), -- QItem: Marshlight Bleeder Venom
(20198,1,100,1,0,-6001,1), -- Generic HellfirePeninsula Loot1 (YES FOR ZM)
-- ---------------------------------------------------
-- Feralfen Druid, NPC 20270
-- ---------------------------------------------------
(20270,24497,-25,1,0,1,1), -- QItem: Feralfen Protection Totem
(20270,21877,60,1,0,1,3), -- Netherweave Cloth
(20270,27854,6,1,0,1,1), -- Smoked Talbuk Venison
(20270,28399,3,1,0,1,1), -- Filtered Draenic Water
(20270,13446,2,1,0,1,1), -- Major Healing Potion
(20270,13444,1,1,0,1,1), -- Major Mana Potion
(20270,1,80,1,0,-6001,1), -- Generic HellfirePeninsula Loot1 (YES FOR ZM)
(20270,2,2,1,0,-6003,1), -- Scroll of * VI Reference
-- ---------------------------------------------------
-- Feralfen Hunter, NPC 18113
-- ---------------------------------------------------
(18113,24497,-10,1,0,1,1), -- QItem: Feralfen Protection Totem
(18113,21877,60,1,0,1,3), -- Netherweave Cloth
(18113,27854,6,1,0,1,1), -- Smoked Talbuk Venison
(18113,28399,3,1,0,1,1), -- Filtered Draenic Water
(18113,13446,2,1,0,1,1), -- Major Healing Potion
(18113,13444,1,1,0,1,1), -- Major Mana Potion
(18113,1,80,1,0,-6000,1), -- Generic HellfirePeninsula Loot (YES FOR ZM)
(18113,2,2,1,0,-6003,1), -- Scroll of * VI Reference
-- ---------------------------------------------------
-- Feralfen Mystic, NPC 18114
-- ---------------------------------------------------
(18114,24497,-40,1,0,1,1), -- QItem: Feralfen Protection Totem
(18114,21877,60,1,0,1,3), -- Netherweave Cloth
(18114,27854,6,1,0,1,1), -- Smoked Talbuk Venison
(18114,28399,3,1,0,1,1), -- Filtered Draenic Water
(18114,13446,2,1,0,1,1), -- Major Healing Potion
(18114,13444,1,1,0,1,1), -- Major Mana Potion
(18114,1,80,1,0,-6000,1), -- Generic HellfirePeninsula Loot (YES FOR ZM)
(18114,2,2,1,0,-6003,1), -- Scroll of * VI Reference
-- ---------------------------------------------------
-- Fungal Giant, NPC 19734
-- ---------------------------------------------------
(19734,25450,81,1,0,1,1), -- Creeping Moss
(19734,25452,19,1,1,1,1), -- Blighted Fungus
(19734,24401,25,1,0,1,1), -- Unidentified Plant Parts
(19734,22575,19,1,0,1,3), -- Mote of Life
(19734,12803,1,1,0,1,1), -- Living Essence
(19734,1,100,1,0,-6010,1), -- Generic Zangermarsh Loot
-- ---------------------------------------------------
-- Greater Sporebat, NPC 18129
-- ---------------------------------------------------
(18129,25456,81,1,1,1,1), -- Glowing Spores
(18129,25454,19,1,1,1,1), -- Luminescent Globe
(18129,27676,50,1,0,1,1), -- Strange Spores
(18129,24449,-35,1,0,1,1), -- QItem: Fertile Spores
(18129,24401,26,1,0,1,1), -- Unidentified Plant Parts
(18129,1,95,1,0,-6001,1), -- Generic HellfirePeninsula Loot1 (YES FOR ZM)
-- ---------------------------------------------------
-- Ironspine Gazer, NPC 19730
-- ---------------------------------------------------
(19730,1701,80,1,1,1,1), -- Curved Basilisk Claw
(19730,11389,17,1,1,1,1), -- Shimmering Basilisk Sking
(19730,29553,2,1,1,1,1), -- Basilisk Guts
(19730,29554,1,1,1,1,1), -- Encrusted Basilisk Skin
(19730,27677,45,1,0,1,1), -- Chunk O'Basilisk
(19730,1,100,1,0,-6010,1), -- Generic Zangermarsh Loot
-- ---------------------------------------------------
-- Ironspine Threshalisk, NPC 19729
-- ---------------------------------------------------
(19729,1701,80,1,1,1,1), -- Curved Basilisk Claw
(19729,11389,17,1,1,1,1), -- Shimmering Basilisk Sking
(19729,29553,2,1,1,1,1), -- Basilisk Guts
(19729,29554,1,1,1,1,1), -- Encrusted Basilisk Skin
(19729,1,100,1,0,-6010,1), -- Generic Zangermarsh Loot
-- ---------------------------------------------------
-- Kataru, NPC 18080
-- ---------------------------------------------------
(18080,21877,60,1,0,1,3), -- Netherweave Cloth
(18080,27854,6,1,0,1,1), -- Smoked Talbuk Venison
(18080,28399,3,1,0,1,1), -- Filtered Draenic Water
(18080,13446,2,1,0,1,1), -- Major Healing Potion
(18080,13444,1,1,0,1,1), -- Major Mana Potion
(18080,1,100,1,0,-6000,1), -- Generic HellfirePeninsula Loot (YES FOR ZM)
-- ---------------------------------------------------
-- Lagoon Eel, NPC 20290
-- ---------------------------------------------------
(20290,28058,81,1,1,1,1), -- Shredded Wyrm Wing
(20290,28059,19,1,1,1,1), -- Iridescent Eye
(20290,22578,19,1,0,1,1), -- Mote of Water
(20290,7080,1,1,0,1,1), -- Essence of Water
(20290,1,85,1,0,-6000,1), -- Generic HellfirePeninsula Loot (YES FOR ZM)
-- ---------------------------------------------------
-- Lagoon Walker, NPC 20291
-- ---------------------------------------------------
(20291,25450,82,1,0,1,1), -- Creeping Moss
(20291,25452,18,1,1,1,1), -- Blighted Fungus
(20291,24401,25,1,0,1,1), -- Unidentified Plant Parts
(20291,22575,19,1,0,1,2), -- Mote of Life
(20291,12803,1.5,1,0,1,2), -- Living Essence
(20291,1,100,1,0,-6010,1), -- Generic Zangermarsh Loot
-- ---------------------------------------------------
-- Lord Klaq, NPC 18282
-- ---------------------------------------------------
(18282,24401,30,1,0,1,1), -- Unidentified Plant Parts
(18282,17057,30,1,0,1,1), -- Shiny Fish Scales
(18282,17058,25,1,0,1,1), -- Fish Oil
(18282,24476,15,1,0,1,1), -- Jaggal Clam
(18282,27858,4,1,0,1,3), -- Sunspring Carp
(18282,28399,2,1,0,1,1), -- Filtered Draenic Water
(18282,13446,1,1,0,1,1), -- Major Healing Potion
(18282,13444,0.5,1,0,1,1), -- Major Mana Potion
(18282,1,90,1,0,-6001,1), -- Generic HellfirePeninsula Loot1 (YES FOR ZM)
-- ---------------------------------------------------
-- Mal'druk the Soulrender, NPC 20445
-- ---------------------------------------------------
(20445,21877,72,1,0,1,3), -- Netherweave Cloth
(20445,27854,8,1,0,1,1), -- Smoked Talbuk Venison
(20445,28399,8,1,0,1,1), -- Filtered Draenic Water
(20445,13446,2,1,0,1,1), -- Major Healing Potion
(20445,13444,1,1,0,1,1), -- Major Mana Potion
(20445,1,100,1,0,-6010,1), -- Generic Zangermarsh Loot
-- ---------------------------------------------------
-- Marsh Baron Brok, NPC 20292
-- ---------------------------------------------------
(20292,25450,80,1,0,1,1), -- Creeping Moss
(20292,25452,20,1,1,1,1), -- Blighted Fungus
(20292,24401,25,1,0,1,1), -- Unidentified Plant Parts
(20292,22575,19,1,0,1,2), -- Mote of Life
(20292,12803,1,1,0,1,2), -- Living Essence
(20292,1,100,1,0,-6001,1), -- Generic HellfirePeninsula Loot1 (YES FOR ZM)
-- ---------------------------------------------------
-- Marsh Dredger, NPC 18137
-- ---------------------------------------------------
(18137,24401,35,1,0,1,1), -- Unidentified Plant Parts
(18137,17057,33,1,0,1,1), -- Shiny Fish Scales
(18137,17058,30,1,0,1,1), -- Fish Oil
(18137,24476,20,1,0,1,1), -- Jaggal Clam
(18137,27858,4,1,0,1,3), -- Sunspring Carp
(18137,28399,2,1,0,1,1), -- Filtered Draenic Water
(18137,13446,1,1,0,1,1), -- Major Healing Potion
(18137,13444,0.5,1,0,1,1), -- Major Mana Potion
(18137,1,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot (YES FOR ZM)
(18137,2,2,1,0,-6003,1), -- Scroll of * VI Reference
-- ---------------------------------------------------
-- Marsh Lurker, NPC 18136
-- ---------------------------------------------------
(18136,24401,35,1,0,1,1), -- Unidentified Plant Parts
(18136,17057,33,1,0,1,1), -- Shiny Fish Scales
(18136,17058,30,1,0,1,1), -- Fish Oil
(18136,24476,20,1,0,1,1), -- Jaggal Clam
(18136,27858,4,1,0,1,3), -- Sunspring Carp
(18136,28399,2,1,0,1,1), -- Filtered Draenic Water
(18136,13446,1,1,0,1,1), -- Major Healing Potion
(18136,13444,0.5,1,0,1,1), -- Major Mana Potion
(18136,1,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot (YES FOR ZM)
(18136,2,2,1,0,-6003,1), -- Scroll of * VI Reference
-- ---------------------------------------------------
-- Marsh Walker, NPC 18135
-- ---------------------------------------------------
(18135,25434,81,1,1,1,1), -- Fractured Carapace
(18135,25436,19,1,1,1,1), -- Twitching Leg
(18135,27676,50,1,0,1,1), -- Strange Spores
(18135,24449,-35,1,0,1,1), -- QItem: Fertile Spores
(18135,1,100,1,0,-6010,1), -- Generic Zangermarsh Loot
-- ---------------------------------------------------
-- Marshfang Ripper, NPC 18130
-- ---------------------------------------------------
(18130,25434,81,1,1,1,1), -- Fractured Carapace
(18130,25436,19,1,1,1,1), -- Twitching Leg
(18130,24401,25,1,0,1,1), -- Unidentified Plant Parts
(18130,1,100,1,0,-6000,1), -- Generic HellfirePeninsula Loot (YES FOR ZM)
-- ---------------------------------------------------
-- Marshfang Slicer, NPC 18131
-- ---------------------------------------------------
(18131,24493,-100,1,0,1,1), -- QItem: Marshfang Slicer Blade
(18131,25434,81,1,1,1,1), -- Fractured Carapace
(18131,25436,19,1,1,1,1), -- Twitching Leg
(18131,24401,25,1,0,1,1), -- Unidentified Plant Parts
(18131,1,100,1,0,-6000,1), -- Generic HellfirePeninsula Loot (YES FOR ZM)
-- ---------------------------------------------------
-- Marshlight Bleeder, NPC 18133
-- ---------------------------------------------------
(18133,25434,80,1,1,1,1), -- Fractured Carapace
(18133,25436,20,1,1,1,1), -- Twitching Leg
(18133,24401,25,1,0,1,1), -- Unidentified Plant Parts
(18133,24372,-10,1,0,1,1), -- QItem: Diaphanous Wing
(18133,24485,-30,1,0,1,1), -- QItem: Marshlight Bleeder Venom
(18133,1,100,1,0,-6000,1), -- Generic HellfirePeninsula Loot (YES FOR ZM)
-- ---------------------------------------------------
-- Marshrock Stomper, NPC 20283
-- ---------------------------------------------------
(20283,1701,80,1,1,1,1), -- Curved Basilisk Claw
(20283,11389,17,1,1,1,1), -- Shimmering Basilisk Sking
(20283,29553,2,1,1,1,1), -- Basilisk Guts
(20283,29554,1,1,1,1,1), -- Encrusted Basilisk Skin
(20283,27677,45,1,0,1,1), -- Chunk O'Basilisk
(20283,1,100,1,0,-6000,1), -- Generic HellfirePeninsula Loot (YES FOR ZM)
-- ---------------------------------------------------
-- Marshrock Threshalisk, NPC 19706
-- ---------------------------------------------------
(19706,1701,81,1,1,1,1), -- Curved Basilisk Claw
(19706,11389,18,1,1,1,1), -- Shimmering Basilisk Sking
(19706,29553,1,1,1,1,1), -- Basilisk Guts
(19706,27677,50,1,0,1,1), -- Chunk O'Basilisk
(19706,1,100,1,0,-6000,1), -- Generic HellfirePeninsula Loot (YES FOR ZM)
-- ---------------------------------------------------
-- Marticar, NPC 18680
-- ---------------------------------------------------
(18680,31254,100,1,0,1,1), -- Striderhide Cloak
(18680,25456,80,1,1,2,4), -- Glowing Spores
(18680,25454,20,1,1,2,4), -- Luminescent Glove
-- ---------------------------------------------------
-- Mire Hydra, NPC 18213
-- ---------------------------------------------------
(18213,25429,81,1,1,1,1), -- Grime-Encrusted Scale
(18213,25431,19,1,1,1,1), -- Ripped Fin
(18213,24375,-100,1,0,1,1), -- QItem: Thick Hydra Scale
(18213,24401,25,1,0,1,1), -- Unidentified Plant Parts
(18213,24476,15,1,0,1,1), -- Jaggal Clam
(18213,1,100,1,0,-6000,1), -- Generic HellfirePeninsula Loot1 (YES FOR ZM)
-- ---------------------------------------------------
-- Mragesh, NPC 18286
-- ---------------------------------------------------
(18286,25429,81,1,1,1,1), -- Grime-Encrusted Scale
(18286,25431,19,1,1,1,1), -- Ripped Fin
(18286,24401,25,1,0,1,1), -- Unidentified Plant Parts
(18286,24476,15,1,0,1,1), -- Jaggal Clam
(18286,1,100,1,0,-6010,1), -- Generic Zangermarsh Loot
-- ---------------------------------------------------
-- Mudfin Frenzy, NPC 18212
-- ---------------------------------------------------
(18212,25429,80,1,1,1,1), -- Grime-Encrusted Scale
(18212,25431,20,1,1,1,1), -- Ripped Fin
(18212,24401,25,1,0,1,1), -- Unidentified Plant Parts
(18212,1,10,1,0,-4000,1), -- Grey lvl 61 Item
(18212,2,10,1,0,-4001,1), -- Grey lvl 64 Item
-- ---------------------------------------------------
-- Overlord Gorefist, NPC 18160
-- ---------------------------------------------------
(18160,24240,-20,1,0,1,1), -- QItem: Box of Mushrooms
(18160,21877,55,1,0,1,3), -- Netherweave Cloth
(18160,27854,6,1,0,1,1), -- Smoked Talbuk Venison
(18160,28399,3,1,0,1,1), -- Filtered Draenic Water
(18160,13446,2,1,0,1,1), -- Major Healing Potion
(18160,13444,1,1,0,1,1), -- Major Mana Potion
(18160,2,85,1,0,-6010,1), -- Generic Zangermarsh Loot
-- ---------------------------------------------------
-- Parched Hydra, NPC 20324
-- ---------------------------------------------------
(20324,25429,81,1,1,1,1), -- Grime-Encrusted Scale
(20324,25431,19,1,1,1,1), -- Ripped Fin
(20324,24401,25,1,0,1,1), -- Unidentified Plant Parts
(20324,24375,-100,1,0,1,1), -- QItem: Thick Hydra Scale
(20324,24476,15,1,0,1,1), -- Jaggal Clam
(20324,29480,-15,1,0,1,1), -- QItem: Parched Hydra Sample
(20324,1,100,1,0,-6000,1), -- Generic HellfirePeninsula Loot1 (YES FOR ZM)
-- ---------------------------------------------------
-- Ragestone Threshalisk, NPC 20279
-- ---------------------------------------------------
(20279,1701,80,1,1,1,1), -- Curved Basilisk Claw
(20279,11389,17,1,1,1,1), -- Shimmering Basilisk Sking
(20279,29553,2,1,1,1,1), -- Basilisk Guts
(20279,29554,1,1,1,1,1), -- Encrusted Basilisk Skin
(20279,27677,45,1,0,1,1), -- Chunk O'Basilisk
(20279,1,100,1,0,-6000,1), -- Generic HellfirePeninsula Loot (YES FOR ZM)
-- ---------------------------------------------------
-- Ragestone Trampler, NPC 20280
-- ---------------------------------------------------
(20280,1701,80,1,1,1,1), -- Curved Basilisk Claw
(20280,11389,17,1,1,1,1), -- Shimmering Basilisk Sking
(20280,29553,2,1,1,1,1), -- Basilisk Guts
(20280,29554,1,1,1,1,1), -- Encrusted Basilisk Skin
(20280,27677,45,1,0,1,1), -- Chunk O'Basilisk
(20280,1,100,1,0,-6000,1), -- Generic HellfirePeninsula Loot (YES FOR ZM)
-- ---------------------------------------------------
-- Rajah Haghazed, NPC 18046
-- ---------------------------------------------------
(18046,24280,-65,1,0,1,1), -- QItem: Naga Claws
(18046,24476,26,1,0,1,1), -- Jaggal Clam
(18046,17057,25,1,0,1,1), -- Shiny Fish Scales
(18046,17058,20,1,0,1,1), -- Fish Oil
(18046,27858,4,1,0,1,3), -- Sunspring Carp
(18046,28399,2,1,0,1,1), -- Filtered Draenic Water
(18046,13446,1,1,0,1,1), -- Major Healing Potion
(18046,13444,0.5,1,0,1,1), -- Major Mana Potion
(18046,2,90,1,0,-6010,1), -- Generic Zangermarsh Loot
-- ---------------------------------------------------
-- Rajis Fyashe, NPC 18044
-- ---------------------------------------------------
(18044,24280,-65,1,0,1,1), -- QItem: Naga Claws
(18044,24476,26,1,0,1,1), -- Jaggal Clam
(18044,17057,25,1,0,1,1), -- Shiny Fish Scales
(18044,17058,20,1,0,1,1), -- Fish Oil
(18044,27858,4,1,0,1,3), -- Sunspring Carp
(18044,28399,2,1,0,1,1), -- Filtered Draenic Water
(18044,13446,1,1,0,1,1), -- Major Healing Potion
(18044,13444,0.5,1,0,1,1), -- Major Mana Potion
(18044,2,90,1,0,-6010,1), -- Generic Zangermarsh Loot
-- ---------------------------------------------------
-- Sporebat, NPC 18128
-- ---------------------------------------------------
(18128,25456,80,1,1,1,1), -- Glowing Spores
(18128,25454,20,1,1,1,1), -- Luminescent Globe
(18128,27676,50,1,0,1,1), -- Strange Spores
(18128,24449,-35,1,0,1,1), -- QItem: Fertile Spores
(18128,24401,26,1,0,1,1), -- Unidentified Plant Parts
(18128,24426,-20,1,0,1,1), -- QItem: Sporebat Eye
(18128,1,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot (YES FOR ZM)
-- ---------------------------------------------------
-- Sporewing, NPC 18280
-- ---------------------------------------------------
(18280,25456,80,1,1,1,1), -- Glowing Spores
(18280,25454,20,1,1,1,1), -- Luminescent Globe
(18280,27676,50,1,0,1,1), -- Strange Spores
(18280,24449,-35,1,0,1,1), -- QItem: Fertile Spores
(18280,24401,26,1,0,1,1), -- Unidentified Plant Parts
(18280,1,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot (YES FOR ZM)
-- ---------------------------------------------------
-- Ssslith, NPC 18154
-- ---------------------------------------------------
(18154,24476,30,1,0,1,1), -- Jaggal Clam
(18154,17057,25,1,0,1,1), -- Shiny Fish Scales
(18154,17058,20,1,0,1,1), -- Fish Oil
(18154,27858,4,1,0,1,3), -- Sunspring Carp
(18154,28399,2,1,0,1,1), -- Filtered Draenic Water
(18154,1,100,1,0,-6010,1), -- Generic Zangermarsh Loot
-- ---------------------------------------------------
-- Starving Bog Lord, NPC 19519
-- ---------------------------------------------------
(19519,25450,80,1,0,1,1), -- Creeping Moss
(19519,25452,20,1,1,1,1), -- Blighted Fungus
(19519,24291,-20,1,0,1,1), -- QItem: Bog Lord Tendril
(19519,24401,25,1,0,1,1), -- Unidentified Plant Parts
(19519,22575,19,1,0,1,1), -- Mote of Life
(19519,12803,1,1,0,1,1), -- Living Essence
(19519,1,100,1,0,-6010,1), -- Generic Zangermarsh Loot
-- ---------------------------------------------------
-- Starving Fungal Giant, NPC 18125
-- ---------------------------------------------------
(18125,25450,80,1,0,1,1), -- Creeping Moss
(18125,25452,20,1,1,1,1), -- Blighted Fungus
(18125,24291,-20,1,0,1,1), -- QItem: Bog Lord Tendril
(18125,24401,25,1,0,1,1), -- Unidentified Plant Parts
(18125,22575,19,1,0,1,1), -- Mote of Life
(18125,12803,1,1,0,1,1), -- Living Essence
(18125,1,100,1,0,-6010,1), -- Generic Zangermarsh Loot
-- ---------------------------------------------------
-- Steam Pump Overseer, NPC 18340
-- ---------------------------------------------------
(18340,24280,-45,1,0,1,1), -- QItem: Naga Claws
(18340,24401,35,1,0,1,1), -- Unidentified Plant Parts
(18340,17057,30,1,0,1,1), -- Shiny Fish Scales
(18340,17058,25,1,0,1,1), -- Fish Oil
(18340,24476,15,1,0,1,1), -- Jaggal Clam
(18340,24330,-40,1,0,1,1), -- QItem: Drain Schematics
(18340,27858,4,1,0,1,3), -- Sunspring Carp
(18340,28399,2,1,0,1,1), -- Filtered Draenic Water
(18340,13446,1.5,1,0,1,1), -- Major Healing Potion
(18340,13444,0.75,1,0,1,1), -- Major Mana Potion
(18340,1,2,1,0,-6003,1), -- Scroll of * VI Reference
(18340,2,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot (YES FOR ZM)
-- ---------------------------------------------------
-- Terrorclaw, NPC 20477
-- ---------------------------------------------------
(20477,17057,34,1,0,1,1), -- Shiny Fish Scales
(20477,24401,34,1,0,1,1), -- Unidentified Plant Parts
(20477,17058,30,1,0,1,1), -- Fish Oil
(20477,24476,20,1,0,1,1), -- Jaggal Clam
(20477,27858,4,1,0,1,3), -- Sunspring Carp
(20477,28399,2,1,0,1,1), -- Filtered Draenic Water
(20477,13446,1.5,1,0,1,1), -- Major Healing Potion
(20477,13444,0.75,1,0,1,1), -- Major Mana Potion
(20477,1,90,1,0,-6001,1), -- Generic HellfirePeninsula Loot1 (YES FOR ZM)
-- ---------------------------------------------------
-- Umbrafen Eel, NPC 18138
-- ---------------------------------------------------
(18138,25429,80,1,1,1,1), -- Grime-Encrusted Scale
(18138,25431,20,1,1,1,1), -- Ripped Fin
(18138,24374,-40,1,0,1,1), -- QItem: Eel Filet
(18138,1,90,1,0,-6000,1), -- Generic HellfirePeninsula Loot (YES FOR ZM)
-- ---------------------------------------------------
-- Umbrafen Oracle, NPC 18077
-- ---------------------------------------------------
(18077,21877,80,1,0,1,3), -- Netherweave Cloth
(18077,27854,8,1,0,1,1), -- Smoked Talbuk Venison
(18077,28399,4,1,0,1,1), -- Filtered Draenic Water
(18077,13446,2,1,0,1,1), -- Major Healing Potion
(18077,13444,1,1,0,1,1), -- Major Mana Potion
(18077,2,2,1,0,-6003,1), -- Scroll of * VI Reference
(18077,1,80,1,0,-6000,1), -- Generic HellfirePeninsula Loot (YES FOR ZM)
-- ---------------------------------------------------
-- Umbrafen Seer, NPC 18079
-- ---------------------------------------------------
(18079,21877,80,1,0,1,3), -- Netherweave Cloth
(18079,27854,8,1,0,1,1), -- Smoked Talbuk Venison
(18079,28399,4,1,0,1,1), -- Filtered Draenic Water
(18079,13446,2,1,0,1,1), -- Major Healing Potion
(18079,13444,1,1,0,1,1), -- Major Mana Potion
(18079,2,2,1,0,-6003,1), -- Scroll of * VI Reference
(18079,1,80,1,0,-6000,1), -- Generic HellfirePeninsula Loot (YES FOR ZM)
-- ---------------------------------------------------
-- Umbrafen Witchdoctor, NPC 20115
-- ---------------------------------------------------
(20115,21877,80,1,0,1,3), -- Netherweave Cloth
(20115,27854,8,1,0,1,1), -- Smoked Talbuk Venison
(20115,28399,4,1,0,1,1), -- Filtered Draenic Water
(20115,13446,2,1,0,1,1), -- Major Healing Potion
(20115,13444,1,1,0,1,1), -- Major Mana Potion
(20115,2,2,1,0,-6003,1), -- Scroll of * VI Reference
(20115,1,80,1,0,-6000,1), -- Generic HellfirePeninsula Loot (YES FOR ZM)
-- ---------------------------------------------------
-- Umbraglow Stinger, NPC 18132
-- ---------------------------------------------------
(18132,25434,80,1,1,1,1), -- Fractured Carapace
(18132,25436,20,1,1,1,1), -- Twitching Leg
(18132,24372,-40,1,0,1,1), -- QItem: Diaphanous Wing
(18132,1,100,1,0,-6000,1), -- Generic HellfirePeninsula Loot (YES FOR ZM)
-- ---------------------------------------------------
-- Withered Bog Lord, NPC 19402
-- ---------------------------------------------------
(19402,25450,80,1,0,1,1), -- Creeping Moss
(19402,25452,20,1,1,1,1), -- Blighted Fungus
(19402,24291,-30,1,0,1,1), -- QItem: Bog Lord Tendril
(19402,24401,25,1,0,1,1), -- Unidentified Plant Parts
(19402,22575,19,1,0,1,1), -- Mote of Life
(19402,29481,-15,1,0,1,1), -- QItem: Withered Bog Lord Sample
(19402,12803,1,1,0,1,1), -- Living Essence
(19402,1,100,1,0,-6000,1), -- Generic HellfirePeninsula Loot (YES FOR ZM)
-- ---------------------------------------------------
-- Withered Giant, NPC 18124
-- ---------------------------------------------------
(18124,25450,80,1,0,1,1), -- Creeping Moss
(18124,25452,20,1,1,1,1), -- Blighted Fungus
(18124,24401,25,1,0,1,1), -- Unidentified Plant Parts
(18124,24291,-20,1,0,1,1), -- QItem: Bog Lord Tendril
(18124,22575,19,1,0,1,1), -- Mote of Life
(18124,24373,-5,1,0,1,1), -- QItem: Scout Jyoba's Report
(18124,24483,2,1,0,1,1), -- Withered Basidium Ally
(18124,24484,2,1,0,1,1), -- Withered Basidium Horde
(18124,12803,1,1,0,1,1), -- Living Essence
(18124,1,100,1,0,-6000,1), -- Generic HellfirePeninsula Loot (YES FOR ZM)
-- ---------------------------------------------------
-- Wrekt Slave, NPC 18123
-- ---------------------------------------------------
(18123,21877,75,1,0,1,3), -- Netherweave Cloth
(18123,27854,8,1,0,1,1), -- Smoked Talbuk Venison
(18123,28399,4,1,0,1,1), -- Filtered Draenic Water
(18123,13446,2,1,0,1,1), -- Major Healing Potion
(18123,13444,1,1,0,1,1), -- Major Mana Potion
(18123,2,2,1,0,-6003,1), -- Scroll of * VI Reference
(18123,1,80,1,0,-6000,1), -- Generic HellfirePeninsula Loot (YES FOR ZM)
-- ---------------------------------------------------
-- Young Sporebat, NPC 20387
-- ---------------------------------------------------
(20387,25456,80,1,1,1,1), -- Glowing Spores
(20387,25454,20,1,1,1,1), -- Luminescent Globe
(20387,27676,50,1,0,1,1), -- Strange Spores
(20387,24401,26,1,0,1,1), -- Unidentified Plant Parts
(20387,1,90,1,0,-6000,1); -- Generic HellfirePeninsula Loot (YES FOR ZM)
SET @Grey := 1001; -- reference starting value TDB Field
DELETE FROM `reference_loot_template` WHERE `entry` BETWEEN @Grey AND @Grey+53;
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- level 52 Grey Items ilvl 57
(@Grey+51,3951,0,1,1,1,1), -- Twill Vest
(@Grey+51,3976,0,1,1,1,1), -- Smooth Leather Armor
(@Grey+51,3995,0,1,1,1,1), -- Laminated Scale Cloak
(@Grey+51,8081,0,1,1,1,1), -- Light Plate Belt
(@Grey+51,8753,0,1,1,1,1), -- Smooth Leather Helmet
(@Grey+51,9186,0,1,1,1,1), -- Mind-numbing Poison III
(@Grey+51,13821,0,1,1,1,1), -- Bulky Maul
(@Grey+51,13825,0,1,1,1,1), -- Primed Musket
-- level 53 Grey Items ilvl 58
(@Grey+52,3948,0,1,1,1,1), -- Twill Gloves
(@Grey+52,3973,0,1,1,1,1), -- Smooth Leather Gloves
(@Grey+52,3994,0,1,1,1,1), -- Laminated Scale Bracers
(@Grey+52,8080,0,1,1,1,1), -- Light Plate Chestpiece
(@Grey+52,13817,0,1,1,1,1); -- Tapered Greatsword
-- -------------------------------------------------------- 
-- TBC_Greys_References 
-- -------------------------------------------------------- 
SET @GreyTBC  := 4000; -- reference starting value TDB Field
DELETE FROM `reference_loot_template` WHERE `entry` BETWEEN @GreyTBC AND @GreyTBC+2;
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- level 61 Greys, ilvl 66 (32 items)
(@GreyTBC,24576,0,1,1,1,1), -- Loosely Threaded Belt
(@GreyTBC,24577,0,1,1,1,1), -- Loosely Threaded Boots
(@GreyTBC,24578,0,1,1,1,1), -- Loosely Threaded Bracers
(@GreyTBC,24580,0,1,1,1,1), -- Loosely Threaded Hat
(@GreyTBC,24782,0,1,1,1,1), -- Loosely Threaded Gloves
(@GreyTBC,25338,0,1,1,1,1), -- Loosely Threaded Pants
(@GreyTBC,25339,0,1,1,1,1), -- Loosely Threaded Shoulderpads
(@GreyTBC,25340,0,1,1,1,1), -- Loosely Threaded Vest
(@GreyTBC,25349,0,1,1,1,1), -- Moldy Leather Armor
(@GreyTBC,25350,0,1,1,1,1), -- Moldy Leather Belt
(@GreyTBC,25351,0,1,1,1,1), -- Moldy Leather Boots
(@GreyTBC,25352,0,1,1,1,1), -- Moldy Leather Bracers
(@GreyTBC,25353,0,1,1,1,1), -- Moldy Leather Gloves
(@GreyTBC,25354,0,1,1,1,1), -- Moldy Leather Helmet
(@GreyTBC,25355,0,1,1,1,1), -- Moldy Leather Pants
(@GreyTBC,25356,0,1,1,1,1), -- Moldy Leather Shoulderpads
(@GreyTBC,25365,0,1,1,1,1), -- Eroded Mail Armor
(@GreyTBC,25366,0,1,1,1,1), -- Eroded Mail Belt
(@GreyTBC,25367,0,1,1,1,1), -- Eroded Mail Boots
(@GreyTBC,25368,0,1,1,1,1), -- Eroded Mail Bracers
(@GreyTBC,25369,0,1,1,1,1), -- Eroded Mail Circlet
(@GreyTBC,25370,0,1,1,1,1), -- Eroded Mail Gloves
(@GreyTBC,25371,0,1,1,1,1), -- Eroded Mail Pants
(@GreyTBC,25372,0,1,1,1,1), -- Eroded Mail Shoulderpads
(@GreyTBC,25381,0,1,1,1,1), -- Tarnished Plate Belt
(@GreyTBC,25382,0,1,1,1,1), -- Tarnished Plate Boots
(@GreyTBC,25383,0,1,1,1,1), -- Tarnished Plate Bracers
(@GreyTBC,25384,0,1,1,1,1), -- Tarnished Plate Chestpiece
(@GreyTBC,25385,0,1,1,1,1), -- Tarnished Plate Gloves
(@GreyTBC,25386,0,1,1,1,1), -- Tarnished Plate Helmet
(@GreyTBC,25387,0,1,1,1,1), -- Tarnished Plate Pants
(@GreyTBC,25388,0,1,1,1,1), -- Tarnished Plate Shoulderpads
-- level 64 Greys, ilvl 69 (10 items)
(@GreyTBC+1,25397,0,1,1,1,1), -- Eroded Axe
(@GreyTBC+1,25398,0,1,1,1,1), -- Stone Reaper
(@GreyTBC+1,25399,0,1,1,1,1), -- Deteriorating Blade
(@GreyTBC+1,25400,0,1,1,1,1), -- Tarnished Claymore
(@GreyTBC+1,25401,0,1,1,1,1), -- Corroded Mace
(@GreyTBC+1,25402,0,1,1,1,1), -- The Stoppable Force
(@GreyTBC+1,25403,0,1,1,1,1), -- Sharpened Stilleto
(@GreyTBC+1,25404,0,1,1,1,1), -- Dense War Staff
(@GreyTBC+1,25405,0,1,1,1,1), -- Rusted Musket
(@GreyTBC+1,25406,0,1,1,1,1), -- Broken Longbow
-- lvl 67 Greys, ilvl 72 (32 items)
(@GreyTBC+2,25341,0,1,1,1,1), -- Dilapidated Cloth Belt
(@GreyTBC+2,25342,0,1,1,1,1), -- Dilapidated Cloth Boots
(@GreyTBC+2,25343,0,1,1,1,1), -- Dilapidated Cloth Bracers
(@GreyTBC+2,25344,0,1,1,1,1), -- Dilapidated Cloth Gloves
(@GreyTBC+2,25345,0,1,1,1,1), -- Dilapidated Cloth Hat
(@GreyTBC+2,25346,0,1,1,1,1), -- Dilapidated Cloth Pants
(@GreyTBC+2,25347,0,1,1,1,1), -- Dilapidated Cloth Shoulderpads
(@GreyTBC+2,25348,0,1,1,1,1), -- Dilapidated Cloth Vest
(@GreyTBC+2,25357,0,1,1,1,1), -- Decaying Leather Armor
(@GreyTBC+2,25358,0,1,1,1,1), -- Decaying Leather Belt
(@GreyTBC+2,25359,0,1,1,1,1), -- Decaying Leather Boots
(@GreyTBC+2,25360,0,1,1,1,1), -- Decaying Leather Bracers
(@GreyTBC+2,25361,0,1,1,1,1), -- Decaying Leather Gloves
(@GreyTBC+2,25362,0,1,1,1,1), -- Decaying Leather Helmet
(@GreyTBC+2,25363,0,1,1,1,1), -- Decaying Leather Pants
(@GreyTBC+2,25364,0,1,1,1,1), -- Decaying Leather Shoulderpads
(@GreyTBC+2,25373,0,1,1,1,1), -- Corroded Mail Armor
(@GreyTBC+2,25374,0,1,1,1,1), -- Corroded Mail Belt
(@GreyTBC+2,25375,0,1,1,1,1), -- Corroded Mail Boots
(@GreyTBC+2,25376,0,1,1,1,1), -- Corroded Mail Bracers
(@GreyTBC+2,25377,0,1,1,1,1), -- Corroded Mail Circlet
(@GreyTBC+2,25378,0,1,1,1,1), -- Corroded Mail Gloves
(@GreyTBC+2,25379,0,1,1,1,1), -- Corroded Mail Pants
(@GreyTBC+2,25380,0,1,1,1,1), -- Corroded Mail Shoulderpads
(@GreyTBC+2,25389,0,1,1,1,1), -- Deteriorating Plate Belt
(@GreyTBC+2,25390,0,1,1,1,1), -- Deteriorating Plate Boots
(@GreyTBC+2,25391,0,1,1,1,1), -- Deteriorating Plate Bracers
(@GreyTBC+2,25392,0,1,1,1,1), -- Deteriorating Plate Chestpiece
(@GreyTBC+2,25393,0,1,1,1,1), -- Deteriorating Plate Gloves
(@GreyTBC+2,25394,0,1,1,1,1), -- Deteriorating Plate Helmet
(@GreyTBC+2,25395,0,1,1,1,1), -- Deteriorating Plate Pants
(@GreyTBC+2,25396,0,1,1,1,1); -- Deteriorating Plate Shoulderpads
-- -------------------------------------------------------- 
-- TBC_Greens_References 
-- -------------------------------------------------------- 
SET @GreenTBC := 4100; -- reference starting value TDB Field
DELETE FROM `reference_loot_template` WHERE `entry` BETWEEN @GreenTBC AND @GreenTBC+13;
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- lvl 57 ilvl 81 greens (55 items) TBC
(@GreenTBC,25296,0,1,1,1,1), -- Absorption Dagger
(@GreenTBC,25324,0,1,1,1,1), -- Angerstaff
(@GreenTBC,25058,0,1,1,1,1), -- Anglesite Choker
(@GreenTBC,25240,0,1,1,1,1), -- Azerothian Longbow
(@GreenTBC,28531,0,1,1,1,1), -- Barbed Shrike
(@GreenTBC,24700,0,1,1,1,1), -- Bonechewer Bands
(@GreenTBC,24695,0,1,1,1,1), -- Bonechewer Chestpiece
(@GreenTBC,24693,0,1,1,1,1), -- Bonechewer Pelt-Girdle
(@GreenTBC,24698,0,1,1,1,1), -- Bonechewer Ripleggings
(@GreenTBC,24699,0,1,1,1,1), -- Bonechewer Shoulderguards
(@GreenTBC,24694,0,1,1,1,1), -- Bonechewer Shredboots
(@GreenTBC,24697,0,1,1,1,1), -- Bonechewer Skincloak
(@GreenTBC,24696,0,1,1,1,1), -- Bonechewer Spikegloves
(@GreenTBC,25114,0,1,1,1,1), -- Doomsayer's Mace
(@GreenTBC,25086,0,1,1,1,1), -- Dreamseeker Dandelion
(@GreenTBC,24920,0,1,1,1,1), -- Grimscale Armor
(@GreenTBC,24918,0,1,1,1,1), -- Grimscale Belt
(@GreenTBC,24921,0,1,1,1,1), -- Grimscale Gauntlets
(@GreenTBC,24922,0,1,1,1,1), -- Grimscale Helm
(@GreenTBC,24923,0,1,1,1,1), -- Grimscale Legguards
(@GreenTBC,24924,0,1,1,1,1), -- Grimscale Pauldrons
(@GreenTBC,24919,0,1,1,1,1), -- Grimscale Sabatons
(@GreenTBC,24925,0,1,1,1,1), -- Grimscale Vambraces
(@GreenTBC,25198,0,1,1,1,1), -- Karaborian Battle Axe
(@GreenTBC,25268,0,1,1,1,1), -- Lead-Slug Shotgun
(@GreenTBC,25100,0,1,1,1,1), -- Liege Blade
(@GreenTBC,25212,0,1,1,1,1), -- Lucky Strike Axe
(@GreenTBC,25282,0,1,1,1,1), -- Mahogany Wand
(@GreenTBC,25310,0,1,1,1,1), -- Naaru Lightmace
(@GreenTBC,25072,0,1,1,1,1), -- Northman's Shield
(@GreenTBC,24582,0,1,1,1,1), -- Outlander's Boots
(@GreenTBC,24588,0,1,1,1,1), -- Outlander's Bracers
(@GreenTBC,24585,0,1,1,1,1), -- Outlander's Facewrap
(@GreenTBC,24575,0,1,1,1,1), -- Outlander's Girdle
(@GreenTBC,24584,0,1,1,1,1), -- Outlander's Gloves
(@GreenTBC,24586,0,1,1,1,1), -- Outlander's Leggings
(@GreenTBC,24587,0,1,1,1,1), -- Outlander's Pauldrons
(@GreenTBC,24583,0,1,1,1,1), -- Outlander's Tunic
(@GreenTBC,25170,0,1,1,1,1), -- Rattan Bo Staff
(@GreenTBC,25184,0,1,1,1,1), -- Ravager Claws
(@GreenTBC,25156,0,1,1,1,1), -- Royal Crusader Sword
(@GreenTBC,25044,0,1,1,1,1), -- Rubellite Ring
(@GreenTBC,25128,0,1,1,1,1), -- Shining Mace
(@GreenTBC,25030,0,1,1,1,1), -- Silky Velvet Cloak
(@GreenTBC,25142,0,1,1,1,1), -- Telaari Longblade
(@GreenTBC,25254,0,1,1,1,1), -- Tower Crossbow
(@GreenTBC,24813,0,1,1,1,1), -- Unyielding Bindings
(@GreenTBC,24808,0,1,1,1,1), -- Unyielding Chain Vest
(@GreenTBC,24809,0,1,1,1,1), -- Unyielding Fists
(@GreenTBC,24807,0,1,1,1,1), -- Unyielding Footwraps
(@GreenTBC,24810,0,1,1,1,1), -- Unyielding Helm
(@GreenTBC,24811,0,1,1,1,1), -- Unyielding Leggings
(@GreenTBC,24812,0,1,1,1,1), -- Unyielding Spaulders
(@GreenTBC,24806,0,1,1,1,1), -- Unyielding Waistband
(@GreenTBC,25226,0,1,1,1,1), -- War Scythe
-- lvl 58 ilvl 84 greens (55 items) TBC
(@GreenTBC+1,24926,0,1,1,1,1), -- Ango'rosh Belt
(@GreenTBC+1,24928,0,1,1,1,1), -- Ango'rosh Breastplate
(@GreenTBC+1,24929,0,1,1,1,1), -- Ango'rosh Gauntlets
(@GreenTBC+1,24930,0,1,1,1,1), -- Ango'rosh Helm
(@GreenTBC+1,24931,0,1,1,1,1), -- Ango'rosh Legguards
(@GreenTBC+1,24932,0,1,1,1,1), -- Ango'rosh Pauldrons
(@GreenTBC+1,24927,0,1,1,1,1), -- Ango'rosh Sabatons
(@GreenTBC+1,24933,0,1,1,1,1), -- Ango'rosh Vambraces
(@GreenTBC+1,25241,0,1,1,1,1), -- Ashenvale Longbow
(@GreenTBC+1,25045,0,1,1,1,1), -- Azurite Ring
(@GreenTBC+1,25087,0,1,1,1,1), -- Bleeding Eye
(@GreenTBC+1,25325,0,1,1,1,1), -- Brutal Scar-Limb
(@GreenTBC+1,25101,0,1,1,1,1), -- Cross Pommel Dagger
(@GreenTBC+1,25283,0,1,1,1,1), -- Crystallized Ebony Wand
(@GreenTBC+1,25073,0,1,1,1,1), -- Emperor Shield
(@GreenTBC+1,24821,0,1,1,1,1), -- Felstone Bindings
(@GreenTBC+1,24816,0,1,1,1,1), -- Felstone Chain Vest
(@GreenTBC+1,24817,0,1,1,1,1), -- Felstone Gauntlets
(@GreenTBC+1,24815,0,1,1,1,1), -- Felstone Greaves
(@GreenTBC+1,24818,0,1,1,1,1), -- Felstone Helm
(@GreenTBC+1,24819,0,1,1,1,1), -- Felstone Leggings
(@GreenTBC+1,24820,0,1,1,1,1), -- Felstone Spaulders
(@GreenTBC+1,24814,0,1,1,1,1), -- Felstone Waistband
(@GreenTBC+1,25213,0,1,1,1,1), -- Fel-Touched Axe
(@GreenTBC+1,25059,0,1,1,1,1), -- Fire Opal Collar
(@GreenTBC+1,24590,0,1,1,1,1), -- Fireheart Boots
(@GreenTBC+1,24596,0,1,1,1,1), -- Fireheart Bracers
(@GreenTBC+1,24591,0,1,1,1,1), -- Fireheart Chestpiece
(@GreenTBC+1,24589,0,1,1,1,1), -- Fireheart Girdle
(@GreenTBC+1,24592,0,1,1,1,1), -- Fireheart Gloves
(@GreenTBC+1,24594,0,1,1,1,1), -- Fireheart Leggings
(@GreenTBC+1,24595,0,1,1,1,1), -- Fireheart Shoulderpads
(@GreenTBC+1,24593,0,1,1,1,1), -- Fireheart Skullcap
(@GreenTBC+1,25129,0,1,1,1,1), -- Giant's Leg Bone
(@GreenTBC+1,24708,0,1,1,1,1), -- Haal'eshi Bindings
(@GreenTBC+1,24702,0,1,1,1,1), -- Haal'eshi Boots
(@GreenTBC+1,24701,0,1,1,1,1), -- Haal'eshi Cord
(@GreenTBC+1,24704,0,1,1,1,1), -- Haal'eshi Gloves
(@GreenTBC+1,24705,0,1,1,1,1), -- Haal'eshi Hat
(@GreenTBC+1,24703,0,1,1,1,1), -- Haal'eshi Jerkin
(@GreenTBC+1,24706,0,1,1,1,1), -- Haal'eshi Leggings
(@GreenTBC+1,24707,0,1,1,1,1), -- Haal'eshi Pauldrons
(@GreenTBC+1,25199,0,1,1,1,1), -- Knight's War Axe
(@GreenTBC+1,25269,0,1,1,1,1), -- Longbeard Rifle
(@GreenTBC+1,25255,0,1,1,1,1), -- Ram's Head Crossbow
(@GreenTBC+1,25311,0,1,1,1,1), -- Revitalizing Hammer
(@GreenTBC+1,25115,0,1,1,1,1), -- Riversong Mace
(@GreenTBC+1,25157,0,1,1,1,1), -- Serpentlord Claymore
(@GreenTBC+1,25227,0,1,1,1,1), -- Sha'tari Longspear
(@GreenTBC+1,25143,0,1,1,1,1), -- Silver Hand Blade
(@GreenTBC+1,28532,0,1,1,1,1), -- Silver Throwing Knives
(@GreenTBC+1,25031,0,1,1,1,1), -- Silvermoon Royal Cloak
(@GreenTBC+1,25171,0,1,1,1,1), -- Straight Hardwood Staff
(@GreenTBC+1,25185,0,1,1,1,1), -- Thrasher Blades
(@GreenTBC+1,25297,0,1,1,1,1), -- Tuning Knife
-- lvl 59 ilvl 87 greens (55 items) TBC
(@GreenTBC+2,25298,0,1,1,1,1), -- Combustion Dagger
(@GreenTBC+2,24934,0,1,1,1,1), -- Darkcrest Belt
(@GreenTBC+2,24941,0,1,1,1,1), -- Darkcrest Bracers
(@GreenTBC+2,24936,0,1,1,1,1), -- Darkcrest Breastplate
(@GreenTBC+2,24937,0,1,1,1,1), -- Darkcrest Gauntlets
(@GreenTBC+2,24938,0,1,1,1,1), -- Darkcrest Helm
(@GreenTBC+2,24939,0,1,1,1,1), -- Darkcrest Legguards
(@GreenTBC+2,24940,0,1,1,1,1), -- Darkcrest Pauldrons
(@GreenTBC+2,24935,0,1,1,1,1), -- Darkcrest Sabatons
(@GreenTBC+2,25312,0,1,1,1,1), -- Glorious Scepter
(@GreenTBC+2,25270,0,1,1,1,1), -- Gnomish Assault Rifle
(@GreenTBC+2,25130,0,1,1,1,1), -- Gronn-Bone Club
(@GreenTBC+2,25228,0,1,1,1,1), -- Halberd Polearm
(@GreenTBC+2,25032,0,1,1,1,1), -- Hellfire Cloak
(@GreenTBC+2,25102,0,1,1,1,1), -- Jaedenis Dagger
(@GreenTBC+2,25200,0,1,1,1,1), -- Jagged Broadaxe
(@GreenTBC+2,25172,0,1,1,1,1), -- Jinbali Warp-Staff
(@GreenTBC+2,25088,0,1,1,1,1), -- Laughing Skull Orb
(@GreenTBC+2,25214,0,1,1,1,1), -- Mok'Nathal Battleaxe
(@GreenTBC+2,24824,0,1,1,1,1), -- Netherstalker Armor
(@GreenTBC+2,24822,0,1,1,1,1), -- Netherstalker Belt
(@GreenTBC+2,24829,0,1,1,1,1), -- Netherstalker Bracer
(@GreenTBC+2,24825,0,1,1,1,1), -- Netherstalker Gloves
(@GreenTBC+2,24823,0,1,1,1,1), -- Netherstalker Greaves
(@GreenTBC+2,24826,0,1,1,1,1), -- Netherstalker Helmet
(@GreenTBC+2,24827,0,1,1,1,1), -- Netherstalker Legguards
(@GreenTBC+2,24828,0,1,1,1,1), -- Netherstalker Mantle
(@GreenTBC+2,25116,0,1,1,1,1), -- Pneumatic War Hammer
(@GreenTBC+2,25326,0,1,1,1,1), -- Primal Lore-Staff
(@GreenTBC+2,25284,0,1,1,1,1), -- Purpleheart Wand
(@GreenTBC+2,25158,0,1,1,1,1), -- Skeletal Broadsword
(@GreenTBC+2,25144,0,1,1,1,1), -- Skettis Curved Blade
(@GreenTBC+2,25046,0,1,1,1,1), -- Spined Ring
(@GreenTBC+2,24601,0,1,1,1,1), -- Starfire Circlet
(@GreenTBC+2,24600,0,1,1,1,1), -- Starfire Gloves
(@GreenTBC+2,24603,0,1,1,1,1), -- Starfire Mantle
(@GreenTBC+2,24598,0,1,1,1,1), -- Starfire Sandals
(@GreenTBC+2,24597,0,1,1,1,1), -- Starfire Sash
(@GreenTBC+2,24602,0,1,1,1,1), -- Starfire Trousers
(@GreenTBC+2,24599,0,1,1,1,1), -- Starfire Vest
(@GreenTBC+2,24604,0,1,1,1,1), -- Starfire Wristwraps
(@GreenTBC+2,25256,0,1,1,1,1), -- Stronghold Crossbow
(@GreenTBC+2,25060,0,1,1,1,1), -- Sunstone Necklace
(@GreenTBC+2,25242,0,1,1,1,1), -- Telaari Longbow
(@GreenTBC+2,25074,0,1,1,1,1), -- Telaari Shield
(@GreenTBC+2,25186,0,1,1,1,1), -- Vampiric Handscythes
(@GreenTBC+2,24716,0,1,1,1,1), -- Vengeance Bands
(@GreenTBC+2,24709,0,1,1,1,1), -- Vengeance Belt
(@GreenTBC+2,24710,0,1,1,1,1), -- Vengeance Boots
(@GreenTBC+2,24711,0,1,1,1,1), -- Vengeance Chestpiece
(@GreenTBC+2,24712,0,1,1,1,1), -- Vengeance Gloves
(@GreenTBC+2,24713,0,1,1,1,1), -- Vengeance Helm
(@GreenTBC+2,24714,0,1,1,1,1), -- Vengeance Legguards
(@GreenTBC+2,24715,0,1,1,1,1), -- Vengeance Pauldrons
(@GreenTBC+2,28533,0,1,1,1,1), -- Wooden Boomerang
-- lvl 60 ilvl 90 greens (51 items) TBC
(@GreenTBC+3,24605,0,1,1,1,1), -- Laughing Skull Waistguard
(@GreenTBC+3,24606,0,1,1,1,1), -- Laughing Skull Boot
(@GreenTBC+3,24607,0,1,1,1,1), -- Laughing Skull Tunic
(@GreenTBC+3,24608,0,1,1,1,1), -- Laughing Skull Gloves
(@GreenTBC+3,24609,0,1,1,1,1), -- Laughing Skull Cap
(@GreenTBC+3,24610,0,1,1,1,1), -- Laughing Skull Pants
(@GreenTBC+3,24611,0,1,1,1,1), -- Laughing Skull Shoulderpads
(@GreenTBC+3,24612,0,1,1,1,1), -- Laughing Skull Bracelets
(@GreenTBC+3,24717,0,1,1,1,1), -- Dreghood Belt
(@GreenTBC+3,24718,0,1,1,1,1), -- Dreghood Boots
(@GreenTBC+3,24719,0,1,1,1,1), -- Dreghood Chestpiece
(@GreenTBC+3,24720,0,1,1,1,1), -- Dreghood Gloves
(@GreenTBC+3,24721,0,1,1,1,1), -- Dreghood Cowl
(@GreenTBC+3,24722,0,1,1,1,1), -- Dreghood Trousers
(@GreenTBC+3,24723,0,1,1,1,1), -- Dreghood Pauldrons
(@GreenTBC+3,24724,0,1,1,1,1), -- Dreghood Bands
(@GreenTBC+3,24830,0,1,1,1,1), -- Nexus-Strider Belt
(@GreenTBC+3,24831,0,1,1,1,1), -- Nexus-Strider Greaves
(@GreenTBC+3,24832,0,1,1,1,1), -- Nexus-Strider Breastplate
(@GreenTBC+3,24833,0,1,1,1,1), -- Nexus-Strider Gloves
(@GreenTBC+3,24834,0,1,1,1,1), -- Nexus-Strider Helmet
(@GreenTBC+3,24835,0,1,1,1,1), -- Nexus-Strider Legwraps
(@GreenTBC+3,24836,0,1,1,1,1), -- Nexus-Strider Mantle
(@GreenTBC+3,24837,0,1,1,1,1), -- Nexus-Strider Bracer
(@GreenTBC+3,24942,0,1,1,1,1), -- Bloodscale Belt
(@GreenTBC+3,24943,0,1,1,1,1), -- Bloodscale Sabatons
(@GreenTBC+3,24944,0,1,1,1,1), -- Bloodscale Breastplate
(@GreenTBC+3,24945,0,1,1,1,1), -- Bloodscale Gauntlets
(@GreenTBC+3,24946,0,1,1,1,1), -- Bloodscale Helm
(@GreenTBC+3,24947,0,1,1,1,1), -- Bloodscale Legguards
(@GreenTBC+3,24948,0,1,1,1,1), -- Bloodscale Pauldrons
(@GreenTBC+3,24949,0,1,1,1,1), -- Bloodscale Bracers
(@GreenTBC+3,25033,0,1,1,1,1), -- Scavenger's Cloak
(@GreenTBC+3,25047,0,1,1,1,1), -- Tourmaline Loop
(@GreenTBC+3,25061,0,1,1,1,1), -- Hiddenite Necklace
(@GreenTBC+3,25075,0,1,1,1,1), -- Hardened Steel Shield
(@GreenTBC+3,25089,0,1,1,1,1), -- Supplicant's Rod
(@GreenTBC+3,25103,0,1,1,1,1), -- Nightstalker Dagger
(@GreenTBC+3,25117,0,1,1,1,1), -- Flanged Battle Mace
(@GreenTBC+3,25131,0,1,1,1,1), -- Hateful Bludgeon
(@GreenTBC+3,25187,0,1,1,1,1), -- Shekketh Talons
(@GreenTBC+3,25201,0,1,1,1,1), -- Reaver's Sickle
(@GreenTBC+3,25215,0,1,1,1,1), -- Spiked Battle Axe
(@GreenTBC+3,25229,0,1,1,1,1), -- Partisan Polearm
(@GreenTBC+3,25243,0,1,1,1,1), -- Windtalker Bow
(@GreenTBC+3,25257,0,1,1,1,1), -- Citadel Crossbow
(@GreenTBC+3,25271,0,1,1,1,1), -- Croc-Hunter's Rifle
(@GreenTBC+3,25299,0,1,1,1,1), -- Siphoning Dagger
(@GreenTBC+3,25313,0,1,1,1,1), -- Cold-Iron Scepter
(@GreenTBC+3,25327,0,1,1,1,1), -- Frenzied Staff
(@GreenTBC+3,28534,0,1,1,1,1), -- Fel Tipped Dart
-- lvl 61 ilvl 93 greens (55 items) TBC
(@GreenTBC+4,24613,0,1,1,1,1), -- Vindicator Belt
(@GreenTBC+4,24614,0,1,1,1,1), -- Vindicator Boots
(@GreenTBC+4,24615,0,1,1,1,1), -- Vindicator Tunic
(@GreenTBC+4,24616,0,1,1,1,1), -- Vindicator Gloves
(@GreenTBC+4,24617,0,1,1,1,1), -- Vindicator Cap
(@GreenTBC+4,24618,0,1,1,1,1), -- Vindicator Pants
(@GreenTBC+4,24619,0,1,1,1,1), -- Vindicator Shoulderpads
(@GreenTBC+4,24620,0,1,1,1,1), -- Vindicator Bracers
(@GreenTBC+4,24725,0,1,1,1,1), -- Dementia Cord
(@GreenTBC+4,24726,0,1,1,1,1), -- Dementia Boots
(@GreenTBC+4,24727,0,1,1,1,1), -- Dementia Vest
(@GreenTBC+4,24728,0,1,1,1,1), -- Dementia Gloves
(@GreenTBC+4,24729,0,1,1,1,1), -- Dementia Hood
(@GreenTBC+4,24730,0,1,1,1,1), -- Dementia Trousers
(@GreenTBC+4,24731,0,1,1,1,1), -- Dementia Shoulderguards
(@GreenTBC+4,24732,0,1,1,1,1), -- Dementia Armguards
(@GreenTBC+4,24838,0,1,1,1,1), -- Wrathfin Waistband
(@GreenTBC+4,24839,0,1,1,1,1), -- Wrathfin Greaves
(@GreenTBC+4,24840,0,1,1,1,1), -- Wrathfin Armor
(@GreenTBC+4,24841,0,1,1,1,1), -- Wrathfin Gloves
(@GreenTBC+4,24842,0,1,1,1,1), -- Wrathfin Helmet
(@GreenTBC+4,24843,0,1,1,1,1), -- Wrathfin Legguards
(@GreenTBC+4,24844,0,1,1,1,1), -- Wrathfin Mantle
(@GreenTBC+4,24845,0,1,1,1,1), -- Wrathfin Bindings
(@GreenTBC+4,24950,0,1,1,1,1), -- Bogslayer Belt
(@GreenTBC+4,24951,0,1,1,1,1), -- Bogslayer Sabatons
(@GreenTBC+4,24952,0,1,1,1,1), -- Bogslayer Breastplate
(@GreenTBC+4,24953,0,1,1,1,1), -- Bogslayer Gauntlets
(@GreenTBC+4,24954,0,1,1,1,1), -- Bogslayer Helm
(@GreenTBC+4,24955,0,1,1,1,1), -- Bogslayer Legplates
(@GreenTBC+4,24956,0,1,1,1,1), -- Bogslayer Pauldrons
(@GreenTBC+4,24957,0,1,1,1,1), -- Bogslayer Bracers
(@GreenTBC+4,25034,0,1,1,1,1), -- Elementalist Cloak
(@GreenTBC+4,25048,0,1,1,1,1), -- Smoky Quartz Ring
(@GreenTBC+4,25062,0,1,1,1,1), -- Zircon Amulet
(@GreenTBC+4,25076,0,1,1,1,1), -- Screaming Shield
(@GreenTBC+4,25090,0,1,1,1,1), -- Slavehandler Rod
(@GreenTBC+4,25104,0,1,1,1,1), -- Anzac Dagger
(@GreenTBC+4,25118,0,1,1,1,1), -- Battle Star
(@GreenTBC+4,25132,0,1,1,1,1), -- Thrallmar War Hammer
(@GreenTBC+4,25146,0,1,1,1,1), -- Light-Etched Longsword
(@GreenTBC+4,25160,0,1,1,1,1), -- Vengeance Blade
(@GreenTBC+4,25174,0,1,1,1,1), -- Hanbo Staff
(@GreenTBC+4,25188,0,1,1,1,1), -- Spleenripper Claws
(@GreenTBC+4,25202,0,1,1,1,1), -- Kingly Axe
(@GreenTBC+4,25216,0,1,1,1,1), -- Ogre Splitting Axe
(@GreenTBC+4,25230,0,1,1,1,1), -- Voulge Blade
(@GreenTBC+4,25244,0,1,1,1,1), -- Viper Bow
(@GreenTBC+4,25258,0,1,1,1,1), -- Repeater Crossbow
(@GreenTBC+4,25272,0,1,1,1,1), -- PC-54 Shotgun
(@GreenTBC+4,25286,0,1,1,1,1), -- Yew Wand
(@GreenTBC+4,25300,0,1,1,1,1), -- Lightning Dagger
(@GreenTBC+4,25314,0,1,1,1,1), -- Ceremonial Hammer
(@GreenTBC+4,25328,0,1,1,1,1), -- Faerie-Kind Staff
(@GreenTBC+4,28535,0,1,1,1,1), -- Amani Throwing Axe
-- lvl 62 ilvl 96 greens (55 items) TBC
(@GreenTBC+5,24621,0,1,1,1,1), -- Slavehandler Belt
(@GreenTBC+5,24622,0,1,1,1,1), -- Slavehandler Footpads
(@GreenTBC+5,24623,0,1,1,1,1), -- Slavehandler Jerkin
(@GreenTBC+5,24624,0,1,1,1,1), -- Slavehandler Handwraps
(@GreenTBC+5,24625,0,1,1,1,1), -- Slavehandler Cap
(@GreenTBC+5,24626,0,1,1,1,1), -- Slavehandler Pants
(@GreenTBC+5,24627,0,1,1,1,1), -- Slavehandler Amice
(@GreenTBC+5,24628,0,1,1,1,1), -- Slavehandler Wristguards
(@GreenTBC+5,24733,0,1,1,1,1), -- Sunroc Waistband
(@GreenTBC+5,24734,0,1,1,1,1), -- Sunroc Boots
(@GreenTBC+5,24735,0,1,1,1,1), -- Sunroc Chestpiece
(@GreenTBC+5,24736,0,1,1,1,1), -- Sunroc Gloves
(@GreenTBC+5,24737,0,1,1,1,1), -- Sunroc Mask
(@GreenTBC+5,24738,0,1,1,1,1), -- Sunroc Pants
(@GreenTBC+5,24739,0,1,1,1,1), -- Sunroc Shoulderguards
(@GreenTBC+5,24740,0,1,1,1,1), -- Sunroc Armguards
(@GreenTBC+5,24846,0,1,1,1,1), -- Fenclaw Waistband
(@GreenTBC+5,24847,0,1,1,1,1), -- Fenclaw Footwraps
(@GreenTBC+5,24848,0,1,1,1,1), -- Fenclaw Armor
(@GreenTBC+5,24849,0,1,1,1,1), -- Fenclaw Fists
(@GreenTBC+5,24850,0,1,1,1,1), -- Fenclaw Helm
(@GreenTBC+5,24851,0,1,1,1,1), -- Fenclaw Legguards
(@GreenTBC+5,24852,0,1,1,1,1), -- Fenclaw Mantle
(@GreenTBC+5,24853,0,1,1,1,1), -- Fenclaw Bindings
(@GreenTBC+5,24958,0,1,1,1,1), -- Khan'aish Girdle
(@GreenTBC+5,24959,0,1,1,1,1), -- Khan'aish Greaves
(@GreenTBC+5,24960,0,1,1,1,1), -- Khan'aish Breastplate
(@GreenTBC+5,24961,0,1,1,1,1), -- Khan'aish Gloves
(@GreenTBC+5,24962,0,1,1,1,1), -- Khan'aish Helmet
(@GreenTBC+5,24963,0,1,1,1,1), -- Khan'aish Legplates
(@GreenTBC+5,24964,0,1,1,1,1), -- Khan'aish Epaulets
(@GreenTBC+5,24965,0,1,1,1,1), -- Khan'aish Bracers
(@GreenTBC+5,25035,0,1,1,1,1), -- Silver-Lined Cloak
(@GreenTBC+5,25049,0,1,1,1,1), -- Scheelite Ring
(@GreenTBC+5,25063,0,1,1,1,1), -- Multi-Colored Beads
(@GreenTBC+5,25077,0,1,1,1,1), -- Modani War-Shield
(@GreenTBC+5,25091,0,1,1,1,1), -- Mistyreed Torch
(@GreenTBC+5,25105,0,1,1,1,1), -- Arachnid Dagger
(@GreenTBC+5,25119,0,1,1,1,1), -- Silvermoon War-Mace
(@GreenTBC+5,25133,0,1,1,1,1), -- Stormwind Maul
(@GreenTBC+5,25147,0,1,1,1,1), -- Skystrider Katana
(@GreenTBC+5,25161,0,1,1,1,1), -- Dragon Wing Blade
(@GreenTBC+5,25175,0,1,1,1,1), -- Demoniac Longstaff
(@GreenTBC+5,25189,0,1,1,1,1), -- Ironspine Point
(@GreenTBC+5,25203,0,1,1,1,1), -- Chipped Woodchopper
(@GreenTBC+5,25217,0,1,1,1,1), -- Sundering Axe
(@GreenTBC+5,25231,0,1,1,1,1), -- Fel-Wrought Halberd
(@GreenTBC+5,25245,0,1,1,1,1), -- Razorsong Bow
(@GreenTBC+5,25259,0,1,1,1,1), -- Collapsible Crossbow
(@GreenTBC+5,25273,0,1,1,1,1), -- Sawed-Off Shotgun
(@GreenTBC+5,25287,0,1,1,1,1), -- Magician's Wand
(@GreenTBC+5,25301,0,1,1,1,1), -- Shattering Dagger
(@GreenTBC+5,25315,0,1,1,1,1), -- Restorative Mace
(@GreenTBC+5,25329,0,1,1,1,1), -- Tranquility Staff
(@GreenTBC+5,28536,0,1,1,1,1), -- Jagged Guillotine
-- lvl 63 ilvl 99 greens (55 items) TBC
(@GreenTBC+6,24629,0,1,1,1,1), -- Feralfen Sash
(@GreenTBC+6,24630,0,1,1,1,1), -- Feralfen Sandals
(@GreenTBC+6,24631,0,1,1,1,1), -- Feralfen Jerkin
(@GreenTBC+6,24632,0,1,1,1,1), -- Feralfen Hand
(@GreenTBC+6,24633,0,1,1,1,1), -- Feralfen Hood
(@GreenTBC+6,24634,0,1,1,1,1), -- Feralfen Pants
(@GreenTBC+6,24635,0,1,1,1,1), -- Feralfen Amice
(@GreenTBC+6,24636,0,1,1,1,1), -- Feralfen Cuffs
(@GreenTBC+6,24741,0,1,1,1,1), -- Ranger Belt
(@GreenTBC+6,24742,0,1,1,1,1), -- Ranger Boots
(@GreenTBC+6,24743,0,1,1,1,1), -- Ranger Jerkin
(@GreenTBC+6,24744,0,1,1,1,1), -- Ranger Gloves
(@GreenTBC+6,24745,0,1,1,1,1), -- Ranger Hat
(@GreenTBC+6,24746,0,1,1,1,1), -- Ranger Pants
(@GreenTBC+6,24747,0,1,1,1,1), -- Ranger Pauldrons
(@GreenTBC+6,24748,0,1,1,1,1), -- Ranger Armguards
(@GreenTBC+6,24854,0,1,1,1,1), -- Marshcreeper Belt
(@GreenTBC+6,24855,0,1,1,1,1), -- Marshcreeper Sludgeboots
(@GreenTBC+6,24856,0,1,1,1,1), -- Marshcreeper Fen-Vest
(@GreenTBC+6,24857,0,1,1,1,1), -- Marshcreeper Gloves
(@GreenTBC+6,24858,0,1,1,1,1), -- Marshcreeper Helm
(@GreenTBC+6,24859,0,1,1,1,1), -- Marshcreeper Leggings
(@GreenTBC+6,24860,0,1,1,1,1), -- Marshcreeper Mantle
(@GreenTBC+6,24861,0,1,1,1,1), -- Marshcreeper Bracelets
(@GreenTBC+6,24966,0,1,1,1,1), -- Talonguard Girdle
(@GreenTBC+6,24967,0,1,1,1,1), -- Talonguard Greaves
(@GreenTBC+6,24968,0,1,1,1,1), -- Talonguard Armor
(@GreenTBC+6,24969,0,1,1,1,1), -- Talonguard Gloves
(@GreenTBC+6,24970,0,1,1,1,1), -- Talonguard Helmet
(@GreenTBC+6,24971,0,1,1,1,1), -- Talonguard Legplates
(@GreenTBC+6,24972,0,1,1,1,1), -- Talonguard Epaulets
(@GreenTBC+6,24973,0,1,1,1,1), -- Talonguard Bracers
(@GreenTBC+6,25036,0,1,1,1,1), -- Boulderfist Cloak
(@GreenTBC+6,25050,0,1,1,1,1), -- Moldavite Ring
(@GreenTBC+6,25064,0,1,1,1,1), -- Amethyst Pendant
(@GreenTBC+6,25078,0,1,1,1,1), -- Zangari Shield
(@GreenTBC+6,25092,0,1,1,1,1), -- Consortium Crystal
(@GreenTBC+6,25106,0,1,1,1,1), -- Cobra Shortblade
(@GreenTBC+6,25120,0,1,1,1,1), -- Rockshard Club
(@GreenTBC+6,25134,0,1,1,1,1), -- Highmountain Hammer
(@GreenTBC+6,25148,0,1,1,1,1), -- Bone Collector Sword
(@GreenTBC+6,25162,0,1,1,1,1), -- Darkened Broadsword
(@GreenTBC+6,25176,0,1,1,1,1), -- Taiji Quarterstaff
(@GreenTBC+6,25190,0,1,1,1,1), -- Wight's Claws
(@GreenTBC+6,25204,0,1,1,1,1), -- Colossal War Axe
(@GreenTBC+6,25218,0,1,1,1,1), -- Silver-Edged Axe
(@GreenTBC+6,25232,0,1,1,1,1), -- War Glaive
(@GreenTBC+6,25246,0,1,1,1,1), -- Thalassian Compound Bow
(@GreenTBC+6,25260,0,1,1,1,1), -- Archer's Crossbow
(@GreenTBC+6,25274,0,1,1,1,1), -- Cliffjumper Shotgun
(@GreenTBC+6,25288,0,1,1,1,1), -- Conjurer's Wand
(@GreenTBC+6,25302,0,1,1,1,1), -- Soul-Drain Dagger
(@GreenTBC+6,25316,0,1,1,1,1), -- Spirit-Clad Mace
(@GreenTBC+6,25330,0,1,1,1,1), -- Starshine Staff
(@GreenTBC+6,28537,0,1,1,1,1), -- Wildhammer Throwing Axe
-- lvl 67 ilvl 111 greens (55 items) TBC
(@GreenTBC+10,24661,0,1,1,1,1), -- Shadow Council Chain
(@GreenTBC+10,24662,0,1,1,1,1), -- Shadow Council Boots
(@GreenTBC+10,24663,0,1,1,1,1), -- Shadow Council Tunic
(@GreenTBC+10,24664,0,1,1,1,1), -- Shadow Council Gloves
(@GreenTBC+10,24665,0,1,1,1,1), -- Shadow Council Cowl
(@GreenTBC+10,24666,0,1,1,1,1), -- Shadow Council Pants
(@GreenTBC+10,24667,0,1,1,1,1), -- Shadow Council Mantle
(@GreenTBC+10,24668,0,1,1,1,1), -- Shadow Council Bracer
(@GreenTBC+10,24773,0,1,1,1,1), -- Boneshredder Belt
(@GreenTBC+10,24774,0,1,1,1,1), -- Boneshredder Boots
(@GreenTBC+10,24775,0,1,1,1,1), -- Boneshredder Jerkin
(@GreenTBC+10,24776,0,1,1,1,1), -- Boneshredder Gloves
(@GreenTBC+10,24777,0,1,1,1,1), -- Boneshredder Skullcap
(@GreenTBC+10,24778,0,1,1,1,1), -- Boneshredder Britches
(@GreenTBC+10,24779,0,1,1,1,1), -- Boneshredder Shoulderguards
(@GreenTBC+10,24780,0,1,1,1,1), -- Boneshredder Wristguards
(@GreenTBC+10,24886,0,1,1,1,1), -- Skettis Belt
(@GreenTBC+10,24887,0,1,1,1,1), -- Skettis Footwraps
(@GreenTBC+10,24888,0,1,1,1,1), -- Skettis Chestpiece
(@GreenTBC+10,24889,0,1,1,1,1), -- Skettis Gauntlets
(@GreenTBC+10,24890,0,1,1,1,1), -- Skettis Helmet
(@GreenTBC+10,24891,0,1,1,1,1), -- Skettis Legguards
(@GreenTBC+10,24892,0,1,1,1,1), -- Skettis Spaulders
(@GreenTBC+10,24893,0,1,1,1,1), -- Skettis Bracer
(@GreenTBC+10,24998,0,1,1,1,1), -- Bloodfist Girdle
(@GreenTBC+10,24999,0,1,1,1,1), -- Bloodfist Greaves
(@GreenTBC+10,25000,0,1,1,1,1), -- Bloodfist Breastplate
(@GreenTBC+10,25001,0,1,1,1,1), -- Bloodfist Gloves
(@GreenTBC+10,25002,0,1,1,1,1), -- Bloodfist Helmet
(@GreenTBC+10,25003,0,1,1,1,1), -- Bloodfist Legplates
(@GreenTBC+10,25004,0,1,1,1,1), -- Bloodfist Epaulets
(@GreenTBC+10,25005,0,1,1,1,1), -- Bloodfist Vambraces
(@GreenTBC+10,25040,0,1,1,1,1), -- Murkblood Cape
(@GreenTBC+10,25054,0,1,1,1,1), -- Sodalite Band
(@GreenTBC+10,25068,0,1,1,1,1), -- Kunzite Necklace
(@GreenTBC+10,25082,0,1,1,1,1), -- Fel-Iron Shield
(@GreenTBC+10,25096,0,1,1,1,1), -- Elementalist Star
(@GreenTBC+10,25110,0,1,1,1,1), -- Sharp Bowie Knife
(@GreenTBC+10,25124,0,1,1,1,1), -- Footman Mace
(@GreenTBC+10,25138,0,1,1,1,1), -- Blood Knight Maul
(@GreenTBC+10,25152,0,1,1,1,1), -- Howling Sword
(@GreenTBC+10,25166,0,1,1,1,1), -- Mok'Nathal Warblade
(@GreenTBC+10,25180,0,1,1,1,1), -- Calenda Fighting Stick
(@GreenTBC+10,25194,0,1,1,1,1), -- Serpent's Fangs
(@GreenTBC+10,25208,0,1,1,1,1), -- Bladespire Broadaxe
(@GreenTBC+10,25222,0,1,1,1,1), -- Ceremonial Slayer's Axe
(@GreenTBC+10,25236,0,1,1,1,1), -- Grim Scythe
(@GreenTBC+10,25250,0,1,1,1,1), -- Rocslayer Longbow
(@GreenTBC+10,25264,0,1,1,1,1), -- Pocket Ballista
(@GreenTBC+10,25278,0,1,1,1,1), -- Nesingwary Longrifle
(@GreenTBC+10,25292,0,1,1,1,1), -- Mechano-Wand
(@GreenTBC+10,25306,0,1,1,1,1), -- Permafrost Dagger
(@GreenTBC+10,25320,0,1,1,1,1), -- Queen's Insignia
(@GreenTBC+10,25334,0,1,1,1,1), -- Intimidating Greatstaff
(@GreenTBC+10,28541,0,1,1,1,1), -- Sawshrike
(@GreenTBC+10,30520,0,1,1,1,1), -- Gold-Trimmed Cuffs
(@GreenTBC+10,30986,0,1,1,1,1), -- Bloodforged Guard
-- lvl 68 ilvl 114 greens (55 items) TBC
(@GreenTBC+11,25055,0,1,1,1,1), -- Alexandrite Ring
(@GreenTBC+11,25139,0,1,1,1,1), -- Algaz Battle Hammer
(@GreenTBC+11,25209,0,1,1,1,1), -- Amani Tomahawk
(@GreenTBC+11,25041,0,1,1,1,1), -- Ambusher's Cloak
(@GreenTBC+11,25097,0,1,1,1,1), -- Astralaan Orb
(@GreenTBC+11,25265,0,1,1,1,1), -- Barreled Crossbow
(@GreenTBC+11,25008,0,1,1,1,1), -- Conqueror's Breastplate
(@GreenTBC+11,25012,0,1,1,1,1), -- Conqueror's Epaulets
(@GreenTBC+11,25009,0,1,1,1,1), -- Conqueror's Gauntlets
(@GreenTBC+11,25006,0,1,1,1,1), -- Conqueror's Girdle
(@GreenTBC+11,25007,0,1,1,1,1), -- Conqueror's Greaves
(@GreenTBC+11,25010,0,1,1,1,1), -- Conqueror's Helmet
(@GreenTBC+11,25011,0,1,1,1,1), -- Conqueror's Legplates
(@GreenTBC+11,25013,0,1,1,1,1), -- Conqueror's Vambraces
(@GreenTBC+11,25195,0,1,1,1,1), -- Diamond Tipped Claws
(@GreenTBC+11,25321,0,1,1,1,1), -- Divine Hammer
(@GreenTBC+11,25293,0,1,1,1,1), -- Draenethyst Wand
(@GreenTBC+11,24669,0,1,1,1,1), -- Eldr'naan Belt
(@GreenTBC+11,24670,0,1,1,1,1), -- Eldr'naan Boots
(@GreenTBC+11,24676,0,1,1,1,1), -- Eldr'naan Bracelets
(@GreenTBC+11,24672,0,1,1,1,1), -- Eldr'naan Gloves
(@GreenTBC+11,24673,0,1,1,1,1), -- Eldr'naan Hood
(@GreenTBC+11,24671,0,1,1,1,1), -- Eldr'naan Jerkin
(@GreenTBC+11,24674,0,1,1,1,1), -- Eldr'naan Pants
(@GreenTBC+11,24675,0,1,1,1,1), -- Eldr'naan Shoulderpads
(@GreenTBC+11,25069,0,1,1,1,1), -- Epidote Stone Necklace
(@GreenTBC+11,25335,0,1,1,1,1), -- Feral Warp-Staff
(@GreenTBC+11,25153,0,1,1,1,1), -- Gladiator Greatblade
(@GreenTBC+11,28542,0,1,1,1,1), -- Heartseeker Knives
(@GreenTBC+11,25111,0,1,1,1,1), -- Lionhead Dagger
(@GreenTBC+11,24781,0,1,1,1,1), -- Murkblood Belt
(@GreenTBC+11,24783,0,1,1,1,1), -- Murkblood Boots
(@GreenTBC+11,24789,0,1,1,1,1), -- Murkblood Bracers
(@GreenTBC+11,24784,0,1,1,1,1), -- Murkblood Chestpiece
(@GreenTBC+11,24786,0,1,1,1,1), -- Murkblood Cover
(@GreenTBC+11,24785,0,1,1,1,1), -- Murkblood Gloves
(@GreenTBC+11,24787,0,1,1,1,1), -- Murkblood Pants
(@GreenTBC+11,24788,0,1,1,1,1), -- Murkblood Shoulderguards
(@GreenTBC+11,25237,0,1,1,1,1), -- Nether Trident
(@GreenTBC+11,25167,0,1,1,1,1), -- Nethersteel Claymore
(@GreenTBC+11,25251,0,1,1,1,1), -- Orc Flatbow
(@GreenTBC+11,25125,0,1,1,1,1), -- Retro-Spike Club
(@GreenTBC+11,25279,0,1,1,1,1), -- Sen'jin Longrifle
(@GreenTBC+11,25307,0,1,1,1,1), -- Shadow Dagger
(@GreenTBC+11,25083,0,1,1,1,1), -- Smouldering Shield
(@GreenTBC+11,24896,0,1,1,1,1), -- Sundered Chestpiece
(@GreenTBC+11,24895,0,1,1,1,1), -- Sundered Footwraps
(@GreenTBC+11,24897,0,1,1,1,1), -- Sundered Gauntlets
(@GreenTBC+11,24898,0,1,1,1,1), -- Sundered Helmet
(@GreenTBC+11,24899,0,1,1,1,1), -- Sundered Legguards
(@GreenTBC+11,24900,0,1,1,1,1), -- Sundered Spaulders
(@GreenTBC+11,24894,0,1,1,1,1), -- Sundered Waistband
(@GreenTBC+11,25181,0,1,1,1,1), -- Tapered Staff
(@GreenTBC+11,24901,0,1,1,1,1), -- Tortured Bracer
(@GreenTBC+11,25223,0,1,1,1,1), -- Windcaller Hatchet
-- lvl 69 ilvl 117 greens (55 items) TBC
(@GreenTBC+12,25056,0,1,1,1,1), -- Almandine Ring
(@GreenTBC+12,25126,0,1,1,1,1), -- Anvilmar Hammer
(@GreenTBC+12,24677,0,1,1,1,1), -- Archmage Belt
(@GreenTBC+12,24684,0,1,1,1,1), -- Archmage Bracelets
(@GreenTBC+12,24680,0,1,1,1,1), -- Archmage Gloves
(@GreenTBC+12,24681,0,1,1,1,1), -- Archmage Headpiece
(@GreenTBC+12,24683,0,1,1,1,1), -- Archmage Mantle
(@GreenTBC+12,24682,0,1,1,1,1), -- Archmage Pants
(@GreenTBC+12,24679,0,1,1,1,1), -- Archmage Robe
(@GreenTBC+12,24678,0,1,1,1,1), -- Archmage Slippers
(@GreenTBC+12,25154,0,1,1,1,1), -- Blood Groove Blade
(@GreenTBC+12,25196,0,1,1,1,1), -- Boneshredder Claws
(@GreenTBC+12,25140,0,1,1,1,1), -- Commanding Mallet
(@GreenTBC+12,25070,0,1,1,1,1), -- Coral Beads
(@GreenTBC+12,25182,0,1,1,1,1), -- Crystal-Etched Warstaff
(@GreenTBC+12,25210,0,1,1,1,1), -- Double-Bladed Axe
(@GreenTBC+12,25294,0,1,1,1,1), -- Dragonscale Wand
(@GreenTBC+12,25252,0,1,1,1,1), -- Dream Catcher Bow
(@GreenTBC+12,28543,0,1,1,1,1), -- Dreghood Throwing Axe
(@GreenTBC+12,24791,0,1,1,1,1), -- Expedition Boots
(@GreenTBC+12,24797,0,1,1,1,1), -- Expedition Bracers
(@GreenTBC+12,24790,0,1,1,1,1), -- Expedition Girdle
(@GreenTBC+12,24793,0,1,1,1,1), -- Expedition Gloves
(@GreenTBC+12,24794,0,1,1,1,1), -- Expedition Hood
(@GreenTBC+12,24795,0,1,1,1,1), -- Expedition Pants
(@GreenTBC+12,24796,0,1,1,1,1), -- Expedition Shoulderguards
(@GreenTBC+12,24792,0,1,1,1,1), -- Expedition Tunic
(@GreenTBC+12,25112,0,1,1,1,1), -- Fel Ripper
(@GreenTBC+12,25280,0,1,1,1,1), -- Game Hunter Musket
(@GreenTBC+12,25238,0,1,1,1,1), -- Hellfire War Spear
(@GreenTBC+12,25322,0,1,1,1,1), -- Lordly Scepter
(@GreenTBC+12,25042,0,1,1,1,1), -- Nether Cloak
(@GreenTBC+12,25168,0,1,1,1,1), -- Sha'tari Longsword
(@GreenTBC+12,25014,0,1,1,1,1), -- Shattered Hand Belt
(@GreenTBC+12,25016,0,1,1,1,1), -- Shattered Hand Breastplate
(@GreenTBC+12,25020,0,1,1,1,1), -- Shattered Hand Epaulets
(@GreenTBC+12,25017,0,1,1,1,1), -- Shattered Hand Gauntlets
(@GreenTBC+12,25018,0,1,1,1,1), -- Shattered Hand Helmet
(@GreenTBC+12,25019,0,1,1,1,1), -- Shattered Hand Legplates
(@GreenTBC+12,25015,0,1,1,1,1), -- Shattered Hand Sabatons
(@GreenTBC+12,25021,0,1,1,1,1), -- Shattered Hand Vambraces
(@GreenTBC+12,25224,0,1,1,1,1), -- Slavemaster Axe
(@GreenTBC+12,25336,0,1,1,1,1), -- Splintering Greatstaff
(@GreenTBC+12,24904,0,1,1,1,1), -- Talhide Chestpiece
(@GreenTBC+12,24906,0,1,1,1,1), -- Talhide Helmet
(@GreenTBC+12,24903,0,1,1,1,1), -- Talhide Lined-Boots
(@GreenTBC+12,24909,0,1,1,1,1), -- Talhide Lined-Bracers
(@GreenTBC+12,24905,0,1,1,1,1), -- Talhide Lined-Gloves
(@GreenTBC+12,24907,0,1,1,1,1), -- Talhide Lined-Leggings
(@GreenTBC+12,24908,0,1,1,1,1), -- Talhide Shoulderguards
(@GreenTBC+12,24902,0,1,1,1,1), -- Talhide Stitched-Belt
(@GreenTBC+12,25308,0,1,1,1,1), -- Thunder Spike
(@GreenTBC+12,25098,0,1,1,1,1), -- Tuurik Torch
(@GreenTBC+12,25266,0,1,1,1,1), -- Well-Balanced Crossbow
(@GreenTBC+12,25084,0,1,1,1,1), -- Zeth'Gor Shield
-- lvl 70 ilvl 120 greens (55 items) TBC
(@GreenTBC+13,25057,0,1,1,1,1), -- Amber Band
(@GreenTBC+13,25043,0,1,1,1,1), -- Amber Cape
(@GreenTBC+13,25323,0,1,1,1,1), -- Ascendant's Scepter
(@GreenTBC+13,28544,0,1,1,1,1), -- Assassin's Shuriken
(@GreenTBC+13,25281,0,1,1,1,1), -- Big-Boar Battle Rifle
(@GreenTBC+13,25225,0,1,1,1,1), -- Deepforge Broadaxe
(@GreenTBC+13,25099,0,1,1,1,1), -- Draenei Crystal Rod
(@GreenTBC+13,24805,0,1,1,1,1), -- Dragonhawk Bands
(@GreenTBC+13,24798,0,1,1,1,1), -- Dragonhawk Belt
(@GreenTBC+13,24799,0,1,1,1,1), -- Dragonhawk Boots
(@GreenTBC+13,24801,0,1,1,1,1), -- Dragonhawk Gloves
(@GreenTBC+13,24802,0,1,1,1,1), -- Dragonhawk Hat
(@GreenTBC+13,24803,0,1,1,1,1), -- Dragonhawk Pants
(@GreenTBC+13,24804,0,1,1,1,1), -- Dragonhawk Shoulderguards
(@GreenTBC+13,24800,0,1,1,1,1), -- Dragonhawk Tunic
(@GreenTBC+13,25085,0,1,1,1,1), -- Dragonscale Shield
(@GreenTBC+13,24685,0,1,1,1,1), -- Elementalist Belt
(@GreenTBC+13,24686,0,1,1,1,1), -- Elementalist Boots
(@GreenTBC+13,24692,0,1,1,1,1), -- Elementalist Bracelets
(@GreenTBC+13,24688,0,1,1,1,1), -- Elementalist Gloves
(@GreenTBC+13,24690,0,1,1,1,1), -- Elementalist Leggings
(@GreenTBC+13,24691,0,1,1,1,1), -- Elementalist Mantle
(@GreenTBC+13,24689,0,1,1,1,1), -- Elementalist Skullcap
(@GreenTBC+13,24687,0,1,1,1,1), -- Elementalist Tunic
(@GreenTBC+13,25169,0,1,1,1,1), -- Fel Orc Brute Sword
(@GreenTBC+13,25295,0,1,1,1,1), -- Flawless Wand
(@GreenTBC+13,25141,0,1,1,1,1), -- Halaani Hammer
(@GreenTBC+13,25155,0,1,1,1,1), -- Iron Skull Sword
(@GreenTBC+13,25127,0,1,1,1,1), -- Knight's War Hammer
(@GreenTBC+13,25239,0,1,1,1,1), -- Legend's Glaive
(@GreenTBC+13,24910,0,1,1,1,1), -- Netherstorm Belt
(@GreenTBC+13,24917,0,1,1,1,1), -- Netherstorm Bracer
(@GreenTBC+13,24912,0,1,1,1,1), -- Netherstorm Chestpiece
(@GreenTBC+13,24913,0,1,1,1,1), -- Netherstorm Gauntlets
(@GreenTBC+13,24911,0,1,1,1,1), -- Netherstorm Greaves
(@GreenTBC+13,24914,0,1,1,1,1), -- Netherstorm Helm
(@GreenTBC+13,24915,0,1,1,1,1), -- Netherstorm Legguards
(@GreenTBC+13,24916,0,1,1,1,1), -- Netherstorm Shoulderguards
(@GreenTBC+13,25113,0,1,1,1,1), -- Phantom Dagger
(@GreenTBC+13,25267,0,1,1,1,1), -- Rampant Crossbow
(@GreenTBC+13,25197,0,1,1,1,1), -- Razor Scythes
(@GreenTBC+13,25211,0,1,1,1,1), -- Rockbiter Cutter
(@GreenTBC+13,25337,0,1,1,1,1), -- Swarming Sting-Staff
(@GreenTBC+13,25071,0,1,1,1,1), -- Tanzanite Pendant
(@GreenTBC+13,25183,0,1,1,1,1), -- Voodoo Hex-Staff
(@GreenTBC+13,25024,0,1,1,1,1), -- Warlord's Iron-Breastplate
(@GreenTBC+13,25028,0,1,1,1,1), -- Warlord's Iron-Epaulets
(@GreenTBC+13,25025,0,1,1,1,1), -- Warlord's Iron-Gauntlets
(@GreenTBC+13,25022,0,1,1,1,1), -- Warlord's Iron-Girdle
(@GreenTBC+13,25026,0,1,1,1,1), -- Warlord's Iron-Helm
(@GreenTBC+13,25027,0,1,1,1,1), -- Warlord's Iron-Legplates
(@GreenTBC+13,25029,0,1,1,1,1), -- Warlord's Iron-Vambraces
(@GreenTBC+13,25023,0,1,1,1,1), -- Warlord's Sabatons
(@GreenTBC+13,25309,0,1,1,1,1), -- Warpdagger
(@GreenTBC+13,25253,0,1,1,1,1); -- Windspear Longbow
-- -------------------------------------------------------- 
-- TBC_Blues_References 
-- -------------------------------------------------------- 
SET @BlueTBC := 4200; -- reference starting value TDB Field
DELETE FROM `reference_loot_template` WHERE `entry` BETWEEN @BlueTBC AND @BlueTBC+10;
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- lvl 60 blues ilvl 85((6 items)
(@BlueTBC,31125,0,1,1,1,1), -- Boots of the Decimator
(@BlueTBC,31126,0,1,1,1,1), -- Gloves of Ferocity
(@BlueTBC,31127,0,1,1,1,1), -- Hauberk of Totemic Rage
(@BlueTBC,31131,0,1,1,1,1), -- Sash of Silent Blades
(@BlueTBC,31133,0,1,1,1,1), -- Leggings of Concentrated Darkness
(@BlueTBC,31134,0,1,1,1,1), -- Blade of Misfortune
-- lvl 61 blues ilvl 88 (6 items)
(@BlueTBC+1,31136,0,1,1,1,1), -- Breastplate of Blade Turning
(@BlueTBC+1,31137,0,1,1,1,1), -- Gauntlets of Purification
(@BlueTBC+1,31138,0,1,1,1,1), -- Storm Lord's Girdle
(@BlueTBC+1,31139,0,1,1,1,1), -- Fist of Reckoning
(@BlueTBC+1,31140,0,1,1,1,1), -- Cloak of Entropy
(@BlueTBC+1,31142,0,1,1,1,1), -- Blade of Trapped Knowledge
-- lvl 62 blues ilvl 91 (6 items)
(@BlueTBC+2,31143,0,1,1,1,1), -- Shroud of Frenzy
(@BlueTBC+2,31145,0,1,1,1,1), -- Headdress of the Sleeper
(@BlueTBC+2,31147,0,1,1,1,1), -- Pendant of Cunning
(@BlueTBC+2,31148,0,1,1,1,1), -- Demon Hide Spaulders
(@BlueTBC+2,31149,0,1,1,1,1), -- Gloves of Pandemonium
(@BlueTBC+2,31150,0,1,1,1,1), -- Gloves of Piety
-- lvl 63 blues ilvl 94 (6 items)
(@BlueTBC+3,31151,0,1,1,1,1), -- Girdle of Siege
(@BlueTBC+3,31152,0,1,1,1,1), -- Girdle of SiegeChestguard of Illumination
(@BlueTBC+3,31153,0,1,1,1,1), -- Girdle of SiegeAxe of the Legion
(@BlueTBC+3,31173,0,1,1,1,1), -- Girdle of SiegeBoots of Savagery
(@BlueTBC+3,31175,0,1,1,1,1), -- Girdle of SiegeBlade Dancer's Wristguards
(@BlueTBC+3,31178,0,1,1,1,1), -- Girdle of SiegeAmulet of Unstable Power
-- lvl 64 blues ilvl 97 (6 items)
(@BlueTBC+4,31180,0,1,1,1,1), -- Gauntlets of the Skullsplitter
(@BlueTBC+4,31186,0,1,1,1,1), -- Braxxis' Staff of Slumber
(@BlueTBC+4,31187,0,1,1,1,1), -- Boots of the Pathfinder
(@BlueTBC+4,31190,0,1,1,1,1), -- The Dreamer's Shoulderpads
(@BlueTBC+4,31193,0,1,1,1,1), -- Blade of Unquenched Thirst
(@BlueTBC+4,31196,0,1,1,1,1), -- Amulet of Sanctification
-- lvl 65 blues ilvl 100 (6 items)
(@BlueTBC+5,31200,0,1,1,1,1), -- Shield of the Wayward Footman
(@BlueTBC+5,31202,0,1,1,1,1), -- Girdle of Divine Blessing
(@BlueTBC+5,31204,0,1,1,1,1), -- The Gunblade
(@BlueTBC+5,31222,0,1,1,1,1), -- Headdress of Inner Rage
(@BlueTBC+5,31226,0,1,1,1,1), -- Leggings of the Sly
(@BlueTBC+5,31230,0,1,1,1,1), -- Abyss Walker's Boots
-- lvl 68 blues ilvl 109 (6 items)
(@BlueTBC+8,31284,0,1,1,1,1), -- Bracers of Recklessness
(@BlueTBC+8,31285,0,1,1,1,1), -- Chestguard of the Talon
(@BlueTBC+8,31286,0,1,1,1,1), -- Breastplate of Rapid Striking
(@BlueTBC+8,31287,0,1,1,1,1), -- Draenei Honor Guard Shield
(@BlueTBC+8,31288,0,1,1,1,1), -- The Master's Treads
(@BlueTBC+8,31289,0,1,1,1,1), -- Staff of Divine Infusion
-- lvl 69 blues ilvl 112 (6 items)
(@BlueTBC+9,31291,0,1,1,1,1), -- Crystalforged War Axe
(@BlueTBC+9,31292,0,1,1,1,1), -- Crystal Pulse Shield
(@BlueTBC+9,31293,0,1,1,1,1), -- Girdle of Gale Force
(@BlueTBC+9,31294,0,1,1,1,1), -- Pauldrons of Surging Mana
(@BlueTBC+9,31295,0,1,1,1,1), -- Chestguard of the Dark Stalker
(@BlueTBC+9,31297,0,1,1,1,1), -- Robe of the Crimson Order
-- lvl 70 blues ilvl 115 (7 items)
(@BlueTBC+10,31298,0,1,1,1,1), -- Legguards of the Shattered Hand
(@BlueTBC+10,31299,0,1,1,1,1), -- The Oathkeeper
(@BlueTBC+10,31303,0,1,1,1,1), -- Valanos' Longbow
(@BlueTBC+10,31304,0,1,1,1,1), -- The Essence Focuser
(@BlueTBC+10,31305,0,1,1,1,1), -- Ced's Carver
(@BlueTBC+10,31306,0,1,1,1,1), -- Leggings of the Sacred Crest
(@BlueTBC+10,31308,0,1,1,1,1); -- The Bringer of Death
DELETE FROM `reference_loot_template` WHERE `entry` IN (14011,14012); 
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(14011,37759,0,1,1,1,1), -- Rhie-ay's Clutching Gauntlets
(14011,37768,0,1,1,1,1), -- Leggings of Violent Exsanguination
(14011,37790,0,1,1,1,1), -- Belt of Crystalline Tears
(14011,37806,0,1,1,1,1), -- Zabra's Misplaced Staff
(14011,37808,0,1,1,1,1), -- Dragonjaw Mauler
(14011,37809,0,1,1,1,1), -- Roc-Feather Longbow
(14012,3014,-70,1,0,1,1), -- Battleworn Axe
(14012,7906,-8,1,0,1,1); -- Horns of Nez'ra
UPDATE `creature_loot_template` SET `mincountOrRef`=14012 WHERE `mincountOrRef`=14011 AND `entry` IN (4464,436,437,440,485,615,4064,4065,4462,4463,435);
-- freaking -, im jumping from a cliff now...
UPDATE `creature_loot_template` SET `mincountOrRef`=-14012 WHERE `mincountOrRef`=-14011 AND `entry` IN (4464,436,437,440,485,615,4064,4065,4462,4463,435);
-- Azure Drake
-- Delete old spawns
DELETE FROM `creature` WHERE `id` IN (27682,27608);
UPDATE `creature_template` SET `speed_walk`=9/2,`speed_run`=17/7,`InhabitType`=4 WHERE `entry`=26838;

SET @NPC := 99078;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27682,571,1,1,24743,0,3433.348,274.121,192.7347,1.91463,120,0,0,38440,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3441.997,218.066,169.347,0,0,0,100,0),
(@PATH,2,3495.446,178.1635,169.347,0,0,0,100,0),
(@PATH,3,3562.124,172.6228,169.347,0,0,0,100,0),
(@PATH,4,3645.859,193.9786,169.347,0,0,0,100,0),
(@PATH,5,3689.068,295.8872,169.347,0,0,0,100,0),
(@PATH,6,3624.446,375.1689,169.347,0,0,0,100,0),
(@PATH,7,3510.095,372.0045,169.347,0,0,0,100,0),
(@PATH,8,3446.488,300.4381,169.347,0,0,0,100,0),
(@PATH,9,3420.008,195.1058,169.347,0,0,0,100,0),
(@PATH,10,3474.376,103.4208,169.347,0,0,0,100,0),
(@PATH,11,3587.787,78.41341,169.347,0,0,0,100,0),
(@PATH,12,3680.552,168.1343,169.347,0,0,0,100,0),
(@PATH,13,3682.222,340.8562,169.347,0,0,0,100,0),
(@PATH,14,3563.545,458.4753,169.347,0,0,0,100,0),
(@PATH,15,3452.104,480.9653,169.347,0,0,0,100,0),
(@PATH,16,3344.437,382.5979,169.347,0,0,0,100,0),
(@PATH,17,3232.114,340.6778,169.347,0,0,0,100,0),
(@PATH,18,3127.326,347.8484,169.347,0,0,0,100,0),
(@PATH,19,3027.017,384.9972,169.347,0,0,0,100,0),
(@PATH,20,2989.474,458.5701,169.347,0,0,0,100,0),
(@PATH,21,3013.37,539.2202,169.347,0,0,0,100,0),
(@PATH,22,3066.603,566.7353,169.347,0,0,0,100,0),
(@PATH,23,3134.078,551.7691,169.347,0,0,0,100,0),
(@PATH,24,3244.26,486.8306,169.347,0,0,0,100,0),
(@PATH,25,3327.64,383.2903,169.347,0,0,0,100,0),
(@PATH,26,3382.149,279.6307,169.347,0,0,0,100,0);

SET @NPC := 99079;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27682,571,1,1,24743,0,3434.632,268.5218,212.5722,1.91463,120,0,0,38440,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3449.962,350.2704,185.3083,0,0,0,100,0),
(@PATH,2,3546.571,399.454,185.3083,0,0,0,100,0),
(@PATH,3,3649.095,344.2626,185.3083,0,0,0,100,0),
(@PATH,4,3648.6,203.3825,185.3083,0,0,0,100,0),
(@PATH,5,3557.447,156.6613,185.3083,0,0,0,100,0),
(@PATH,6,3438.763,197.2433,185.3083,0,0,0,100,0),
(@PATH,7,3364.301,251.3537,185.3083,0,0,0,100,0),
(@PATH,8,3245.05,295.2606,185.3083,0,0,0,100,0),
(@PATH,9,3127.677,330.6631,185.3083,0,0,0,100,0),
(@PATH,10,3045.42,426.6257,185.3083,0,0,0,100,0),
(@PATH,11,3033.423,500.1823,185.3083,0,0,0,100,0),
(@PATH,12,3074.555,584.5701,185.3083,0,0,0,100,0),
(@PATH,13,3167.413,579.3245,185.3083,0,0,0,100,0),
(@PATH,14,3254.766,477.3121,185.3083,0,0,0,100,0),
(@PATH,15,3328.997,355.7176,185.3083,0,0,0,100,0),
(@PATH,16,3403.051,340.1719,185.3083,0,0,0,100,0),
(@PATH,17,3446.086,384.896,185.3083,0,0,0,100,0),
(@PATH,18,3503.323,407.0888,185.3083,0,0,0,100,0),
(@PATH,19,3593.65,392.4026,185.3083,0,0,0,100,0),
(@PATH,20,3658.26,283.8229,185.3083,0,0,0,100,0),
(@PATH,21,3604.809,176.3996,185.3083,0,0,0,100,0),
(@PATH,22,3500.686,159.6379,185.3083,0,0,0,100,0),
(@PATH,23,3441.441,249.5543,185.3083,0,0,0,100,0);

SET @NPC := 99083;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27682,571,1,1,24743,0,3639.789,321.911,195.744,1.91463,120,0,0,38440,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3654.995,228.2284,204.7075,0,0,0,100,0),
(@PATH,2,3750.065,190.3719,204.7075,0,0,0,100,0),
(@PATH,3,3793.781,239.5784,204.7075,0,0,0,100,0),
(@PATH,4,3793.007,322.9862,204.7075,0,0,0,100,0),
(@PATH,5,3712.435,337.7213,204.7075,0,0,0,100,0),
(@PATH,6,3649.212,273.7653,204.7075,0,0,0,100,0),
(@PATH,7,3627.809,181.2728,204.7075,0,0,0,100,0),
(@PATH,8,3575.202,116.1518,204.7075,0,0,0,100,0),
(@PATH,9,3452.9,157.833,204.7075,0,0,0,100,0),
(@PATH,10,3395.156,279.1096,204.7075,0,0,0,100,0),
(@PATH,11,3459.034,403.4866,204.7075,0,0,0,100,0),
(@PATH,12,3610.543,437.9186,204.7075,0,0,0,100,0),
(@PATH,13,3715.638,355.6098,204.7075,0,0,0,100,0),
(@PATH,14,3721.246,203.5534,204.7075,0,0,0,100,0),
(@PATH,15,3583.16,147.8227,204.7075,0,0,0,100,0),
(@PATH,16,3467.958,184.451,204.7075,0,0,0,100,0),
(@PATH,17,3341.041,241.3563,204.7075,0,0,0,100,0),
(@PATH,18,3259.652,326.3573,204.7075,0,0,0,100,0),
(@PATH,19,3325.962,453.1619,204.7075,0,0,0,100,0),
(@PATH,20,3430.271,470.1731,204.7075,0,0,0,100,0),
(@PATH,21,3474.818,389.2108,204.7075,0,0,0,100,0),
(@PATH,22,3422.128,277.9353,204.7075,0,0,0,100,0),
(@PATH,23,3278.513,235.3488,204.7075,0,0,0,100,0),
(@PATH,24,3139.333,309.1593,204.7075,0,0,0,100,0),
(@PATH,25,3124.315,442.8726,204.7075,0,0,0,100,0),
(@PATH,26,3166.636,500.1602,204.7075,0,0,0,100,0),
(@PATH,27,3252.777,537.1607,204.7075,0,0,0,100,0),
(@PATH,28,3365.404,500.6408,204.7075,0,0,0,100,0),
(@PATH,29,3497.347,437.8124,204.7075,0,0,0,100,0),
(@PATH,30,3610.069,345.1742,204.7075,0,0,0,100,0);

SET @NPC := 99084;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27682,571,1,1,24743,0,3419.562,219.4669,185.8007,1.91463,120,0,0,38440,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3476.15,177.9767,151.9461,0,0,0,100,0),
(@PATH,2,3545.193,113.4851,151.9461,0,0,0,100,0),
(@PATH,3,3639.261,157.7231,151.9461,0,0,0,100,0),
(@PATH,4,3676.142,330.9362,151.9461,0,0,0,100,0),
(@PATH,5,3568.025,452.4464,151.9461,0,0,0,100,0),
(@PATH,6,3440.924,381.5191,151.9461,0,0,0,100,0),
(@PATH,7,3406.76,247.0661,151.9461,0,0,0,100,0),
(@PATH,8,3489.703,142.3122,151.9461,0,0,0,100,0),
(@PATH,9,3573.337,130.2329,151.9461,0,0,0,100,0),
(@PATH,10,3668.767,202.5275,151.9461,0,0,0,100,0),
(@PATH,11,3660.667,365.0258,151.9461,0,0,0,100,0),
(@PATH,12,3546.228,441.4885,151.9461,0,0,0,100,0),
(@PATH,13,3414.354,479.1683,151.9461,0,0,0,100,0),
(@PATH,14,3298.711,513.6075,151.9461,0,0,0,100,0),
(@PATH,15,3152.929,563.3295,151.9461,0,0,0,100,0),
(@PATH,16,3061.01,598.1893,151.9461,0,0,0,100,0),
(@PATH,17,3028.564,548.2512,151.9461,0,0,0,100,0),
(@PATH,18,3066.851,499.9897,151.9461,0,0,0,100,0),
(@PATH,19,3126.102,457.3964,151.9461,0,0,0,100,0),
(@PATH,20,3209.258,379.5157,151.9461,0,0,0,100,0),
(@PATH,21,3290.067,313.6936,151.9461,0,0,0,100,0),
(@PATH,22,3381.995,245.4414,151.9461,0,0,0,100,0);

SET @NPC := 99085;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27682,571,1,1,24743,0,3431.814,203.5959,199.4538,1.91463,120,0,0,38440,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3469.755,211.1012,252.1057,0,0,0,100,0),
(@PATH,2,3543.436,184.6182,282.9112,0,0,0,100,0),
(@PATH,3,3605.144,211.1016,313.2445,0,0,0,100,0),
(@PATH,4,3629.088,281.4026,342.355,0,0,0,100,0),
(@PATH,5,3586.889,335.8259,342.355,0,0,0,100,0),
(@PATH,6,3534.959,340.7828,342.355,0,0,0,100,0),
(@PATH,7,3488.181,299.2897,342.355,0,0,0,100,0),
(@PATH,8,3490.962,242.9244,342.355,0,0,0,100,0),
(@PATH,9,3544.176,216.1916,342.355,0,0,0,100,0),
(@PATH,10,3607.393,238.2059,342.355,0,0,0,100,0),
(@PATH,11,3606.415,315.159,342.355,0,0,0,100,0),
(@PATH,12,3529.92,347.5442,342.355,0,0,0,100,0),
(@PATH,13,3442.581,379.9305,309.9662,0,0,0,100,0),
(@PATH,14,3363.314,409.6005,272.7996,0,0,0,100,0),
(@PATH,15,3271.624,451.7768,231.7996,0,0,0,100,0),
(@PATH,16,3222.875,508.5536,210.5774,0,0,0,100,0),
(@PATH,17,3178.339,552.9731,195.4663,0,0,0,100,0),
(@PATH,18,3119.579,592.5015,182.2996,0,0,0,100,0),
(@PATH,19,3079.527,558.9856,175.383,0,0,0,100,0),
(@PATH,20,3110.969,495.2063,173.9941,0,0,0,100,0),
(@PATH,21,3133.366,466.6834,176.5779,0,0,0,100,0),
(@PATH,22,3236.847,383.9943,176.5779,0,0,0,100,0),
(@PATH,23,3382.743,269.2179,222.0501,0,0,0,100,0);

SET @NPC := 99086;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27682,571,1,1,24743,0,3408.915,276.3928,180.561,1.91463,120,0,0,38440,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3451.428,175.6206,154.7629,0,0,0,100,0),
(@PATH,2,3461.289,67.8521,154.7629,0,0,0,100,0),
(@PATH,3,3401.216,31.08062,154.7629,0,0,0,100,0),
(@PATH,4,3348.744,62.37424,154.7629,0,0,0,100,0),
(@PATH,5,3352.888,148.2122,154.7629,0,0,0,100,0),
(@PATH,6,3405.2,335.0623,154.7629,0,0,0,100,0),
(@PATH,7,3399.393,397.5138,154.7629,0,0,0,100,0),
(@PATH,8,3346.986,426.0631,154.7629,0,0,0,100,0),
(@PATH,9,3262.085,383.6502,154.7629,0,0,0,100,0),
(@PATH,10,3156.926,352.7438,154.7629,0,0,0,100,0),
(@PATH,11,3057.544,393.0464,154.7629,0,0,0,100,0),
(@PATH,12,3000.647,466.7132,154.7629,0,0,0,100,0),
(@PATH,13,2989.147,516.5572,154.7629,0,0,0,100,0),
(@PATH,14,3049.945,587.7933,154.7629,0,0,0,100,0),
(@PATH,15,3160.802,556.4007,154.7629,0,0,0,100,0),
(@PATH,16,3268.329,422.1047,154.7629,0,0,0,100,0);

SET @NPC := 99087;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27682,571,1,1,24743,0,3748.954,236.7544,178.6408,1.91463,120,0,0,38440,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3712.221,418.183,178.6408,0,0,0,100,0),
(@PATH,2,3540.502,499.2345,178.6408,0,0,0,100,0),
(@PATH,3,3358.373,445.1452,178.6408,0,0,0,100,0),
(@PATH,4,3200.13,472.7363,178.6408,0,0,0,100,0),
(@PATH,5,3101.38,584.3835,178.6408,0,0,0,100,0),
(@PATH,6,3040.255,596.7429,178.6408,0,0,0,100,0),
(@PATH,7,2997.37,550.3453,178.6408,0,0,0,100,0),
(@PATH,8,2999.847,500.0373,178.6408,0,0,0,100,0),
(@PATH,9,3048.254,460.723,178.6408,0,0,0,100,0),
(@PATH,10,3140.818,390.9225,178.6408,0,0,0,100,0),
(@PATH,11,3219.294,333.4928,178.6408,0,0,0,100,0),
(@PATH,12,3318.04,264.8529,178.6408,0,0,0,100,0),
(@PATH,13,3436.765,193.0778,178.6408,0,0,0,100,0),
(@PATH,14,3552.843,154.3912,178.6408,0,0,0,100,0),
(@PATH,15,3668.381,197.8079,178.6408,0,0,0,100,0),
(@PATH,16,3711.96,284.6768,178.6408,0,0,0,100,0),
(@PATH,17,3627.375,410.4442,178.6408,0,0,0,100,0),
(@PATH,18,3466.029,404.0347,178.6408,0,0,0,100,0),
(@PATH,19,3375.764,293.2045,178.6408,0,0,0,100,0),
(@PATH,20,3426.16,142.911,178.6408,0,0,0,100,0),
(@PATH,21,3611.036,90.26421,178.6408,0,0,0,100,0),
(@PATH,22,3748.954,236.7544,178.6408,0,0,0,100,0);


SET @NPC := 99088;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27682,571,1,1,24743,0,3412.463,216.0972,212.123,1.91463,120,0,0,38440,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3412.65,215.8015,241.2928,0,0,0,100,0),
(@PATH,2,3544.712,83.40093,241.2928,0,0,0,100,0),
(@PATH,3,3729.527,148.4322,241.2928,0,0,0,100,0),
(@PATH,4,3770.91,456.7697,241.2928,0,0,0,100,0),
(@PATH,5,3592.973,601.0773,241.2928,0,0,0,100,0),
(@PATH,6,3431.349,566.7643,241.2928,0,0,0,100,0),
(@PATH,7,3298.04,548.691,241.2928,0,0,0,100,0),
(@PATH,8,3180.431,663.6898,241.2928,0,0,0,100,0),
(@PATH,9,3069.867,677.9128,241.2928,0,0,0,100,0),
(@PATH,10,2984.272,605.6987,241.2928,0,0,0,100,0),
(@PATH,11,3000.096,533.4483,241.2928,0,0,0,100,0),
(@PATH,12,3144.4,405.446,241.2928,0,0,0,100,0),
(@PATH,13,3301.554,308.331,241.2928,0,0,0,100,0);

SET @NPC := 99089;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27682,571,1,1,24743,0,3100.95,567.1441,118.4118,1.91463,120,0,0,38440,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3100.912,567.1385,122.3331,0,0,0,100,0),
(@PATH,2,3214.064,524.5076,122.3331,0,0,0,100,0),
(@PATH,3,3307.77,498.1685,122.3331,0,0,0,100,0),
(@PATH,4,3399.335,473.5195,122.3331,0,0,0,100,0),
(@PATH,5,3545.675,446.1954,122.3331,0,0,0,100,0),
(@PATH,6,3631.807,357.087,122.3331,0,0,0,100,0),
(@PATH,7,3640.708,229.0423,122.3331,0,0,0,100,0),
(@PATH,8,3616.36,137.7545,122.3331,0,0,0,100,0),
(@PATH,9,3558.458,113.3069,122.3331,0,0,0,100,0),
(@PATH,10,3457.288,142.8311,122.3331,0,0,0,100,0),
(@PATH,11,3387.124,248.1035,122.3331,0,0,0,100,0),
(@PATH,12,3419.464,398.1638,122.3331,0,0,0,100,0),
(@PATH,13,3366.308,507.4259,122.3331,0,0,0,100,0),
(@PATH,14,3243.456,494.2254,122.3331,0,0,0,100,0),
(@PATH,15,3121.018,428.1757,122.3331,0,0,0,100,0),
(@PATH,16,3003.428,487.8239,122.3331,0,0,0,100,0),
(@PATH,17,3001.53,566.4896,122.3331,0,0,0,100,0),
(@PATH,18,3059.883,577.261,122.3331,0,0,0,100,0);

-- static
DELETE FROM `creature` WHERE `guid` IN (99090,99091);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(99090,27682,571,1,1,24743,0,2954.845,625.8646,146.2928,2.094395,120,0,0,38440,0,0),
(99091,27682,571,1,1,24743,0,3256.357,585.8403,136.8419,0.4363323,120,0,0,38440,0,0);

-- waypoints
SET @NPC := 99092;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27682,571,1,1,24743,0,3017.465,301.0079,204.943,1.91463,120,0,0,38440,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3014.38,371.552,204.943,0,0,0,100,0),
(@PATH,2,3066.132,433.5229,204.943,0,0,0,100,0),
(@PATH,3,3168.017,532.116,204.943,0,0,0,100,0),
(@PATH,4,3341.228,644.3932,204.943,0,0,0,100,0),
(@PATH,5,3480.533,600.2273,204.943,0,0,0,100,0),
(@PATH,6,3485.514,465.1431,204.943,0,0,0,100,0),
(@PATH,7,3362.191,369.4394,204.943,0,0,0,100,0),
(@PATH,8,3193.452,330.4968,204.943,0,0,0,100,0),
(@PATH,9,3117.152,256.1553,204.943,0,0,0,100,0),
(@PATH,10,3017.465,301.0079,204.943,0,0,0,100,0);

SET @NPC := 99094;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27682,571,1,1,24743,0,3138.133,520.6823,53.44044,1.91463,120,0,0,38440,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3120.694,487.4651,73.32948,0,0,0,100,0),
(@PATH,2,3094.569,488.8283,89.30162,0,0,0,100,0),
(@PATH,3,3076.394,504.3694,101.9128,0,0,0,100,0),
(@PATH,4,3073.121,536.1434,118.3021,0,0,0,100,0),
(@PATH,5,3100.686,550.8791,135.0522,0,0,0,100,0),
(@PATH,6,3133.567,533.2503,156.4133,0,0,0,100,0),
(@PATH,7,3128.940,498.2000,185.3022,0,0,0,100,0),
(@PATH,8,3104.875,485.1591,211.9410,0,0,0,100,0),
(@PATH,9,3078.965,493.2044,233.2187,0,0,0,100,0),
(@PATH,10,3077.378,529.8601,246.1916,0,0,0,100,0),
(@PATH,11,3104.640,532.739,246.1916,0,0,0,100,0),
(@PATH,12,3124.398,511.3354,246.1916,0,0,0,100,0),
(@PATH,13,3106.461,485.7477,246.1916,0,0,0,100,0),
(@PATH,14,3074.75,501.1113,246.1916,0,0,0,100,0),
(@PATH,15,3080.605,533.5042,222.6366,0,0,0,100,0),
(@PATH,16,3108.456,548.174,194.8869,0,0,0,100,0),
(@PATH,17,3138.865,510.0685,159.4426,0,0,0,100,0),
(@PATH,18,3107.084,484.058,121.3038,0,0,0,100,0),
(@PATH,19,3066.059,511.5332,94.97042,0,0,0,100,0),
(@PATH,20,3084.679,555.8902,74.52598,0,0,0,100,0),
(@PATH,21,3128.865,543.4575,51.55369,0,0,0,100,0),
(@PATH,22,3132.671,497.0408,51.55369,0,0,0,100,0),
(@PATH,23,3083.713,484.3025,51.55369,0,0,0,100,0),
(@PATH,24,3062.465,530.1815,51.55369,0,0,0,100,0),
(@PATH,25,3100.407,561.9063,51.55369,0,0,0,100,0),
(@PATH,26,3138.133,520.6823,53.44044,0,0,0,100,0);

SET @NPC := 99095;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27682,571,1,1,24743,0,3199.019,490.8836,212.5729,1.91463,120,0,0,38440,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3131.874,451.6094,212.5729,0,0,0,100,0),
(@PATH,2,3066.175,466.9917,212.5729,0,0,0,100,0),
(@PATH,3,3015.529,515.9183,212.5729,0,0,0,100,0),
(@PATH,4,3032.398,624.4706,212.5729,0,0,0,100,0),
(@PATH,5,3123.448,648.5508,212.5729,0,0,0,100,0),
(@PATH,6,3201.826,572.715,212.5729,0,0,0,100,0),
(@PATH,7,3199.019,490.8836,212.5729,0,0,0,100,0);

SET @NPC := 99096;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27682,571,1,1,24743,0,3214.422,579.9131,196.0033,1.91463,120,0,0,38440,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3133.856,625.1009,196.0033,0,0,0,100,0),
(@PATH,2,3066.991,599.8026,196.0033,0,0,0,100,0),
(@PATH,3,3045.829,536.076,196.0033,0,0,0,100,0),
(@PATH,4,3064.8,436.205,196.0033,0,0,0,100,0),
(@PATH,5,3149.34,424.2586,196.0033,0,0,0,100,0),
(@PATH,6,3217.921,481.3083,196.0033,0,0,0,100,0),
(@PATH,7,3214.422,579.9131,196.0033,0,0,0,100,0);

SET @NPC := 99097;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27682,571,1,1,24743,0,3106.429,348.3322,212.4711,1.91463,120,0,0,38440,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3184.002,431.2766,212.4711,0,0,0,100,0),
(@PATH,2,3166.134,532.8875,212.4711,0,0,0,100,0),
(@PATH,3,3080.641,574.7059,212.4711,0,0,0,100,0),
(@PATH,4,2963.504,564.834,212.4711,0,0,0,100,0),
(@PATH,5,2918.588,502.0504,212.4711,0,0,0,100,0),
(@PATH,6,2949.235,405.6514,212.4711,0,0,0,100,0),
(@PATH,7,3106.429,348.3322,212.4711,0,0,0,100,0);

SET @NPC := 99098;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27682,571,1,1,24743,0,3129.027,582.4556,247.3863,1.91463,120,0,0,38440,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3188.686,528.622,247.3863,0,0,0,100,0),
(@PATH,2,3166.479,466.4643,247.3863,0,0,0,100,0),
(@PATH,3,3107.782,429.4197,247.3863,0,0,0,100,0),
(@PATH,4,3030.916,459.3344,247.3863,0,0,0,100,0),
(@PATH,5,3014.312,531.3731,247.3863,0,0,0,100,0),
(@PATH,6,3058.55,581.8262,247.3863,0,0,0,100,0),
(@PATH,7,3129.027,582.4556,247.3863,0,0,0,100,0);

SET @NPC := 99099;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27682,571,1,1,24743,0,3691.676,352.0933,342.2254,1.91463,120,0,0,38440,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3662.692,328.2304,338.4197,0,0,0,100,0),
(@PATH,2,3648.806,293.8063,321.0587,0,0,0,100,0),
(@PATH,3,3677.441,213.8859,320.1976,0,0,0,100,0),
(@PATH,4,3615.31,209.5691,324.1698,0,0,0,100,0),
(@PATH,5,3637.643,254.0089,332.7251,0,0,0,100,0),
(@PATH,6,3699.886,260.6509,327.8641,0,0,0,100,0),
(@PATH,7,3720.373,308.941,337.7808,0,0,0,100,0),
(@PATH,8,3691.676,352.0933,342.2254,0,0,0,100,0);

SET @NPC := 99093;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27682,571,1,1,24743,0,3036.494,602.2036,179.671,1.91463,120,0,0,38440,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3100.145,600.0773,179.671,0,0,0,100,0),
(@PATH,2,3230.972,531.9783,179.671,0,0,0,100,0),
(@PATH,3,3261.28,445.4492,179.671,0,0,0,100,0),
(@PATH,4,3185.334,349.6381,179.671,0,0,0,100,0),
(@PATH,5,3031.361,375.153,179.671,0,0,0,100,0),
(@PATH,6,2951.565,490.5297,179.671,0,0,0,100,0),
(@PATH,7,3006.273,602.823,179.671,0,0,0,100,0),
(@PATH,8,3140.882,604.8052,179.671,0,0,0,100,0),
(@PATH,9,3279.177,536.7864,179.671,0,0,0,100,0),
(@PATH,10,3342.035,451.1805,179.671,0,0,0,100,0),
(@PATH,11,3373.871,409.5802,179.671,0,0,0,100,0),
(@PATH,12,3418.399,323.2935,179.671,0,0,0,100,0),
(@PATH,13,3432.266,253.5685,179.671,0,0,0,100,0),
(@PATH,14,3376.006,177.8496,179.671,0,0,0,100,0),
(@PATH,15,3328.437,226.3789,179.671,0,0,0,100,0),
(@PATH,16,3336.244,307.4113,179.671,0,0,0,100,0),
(@PATH,17,3381.182,333.7066,179.671,0,0,0,100,0),
(@PATH,18,3478.52,398.1222,179.671,0,0,0,100,0),
(@PATH,19,3574.011,383.5956,179.671,0,0,0,100,0),
(@PATH,20,3661.792,400.2125,179.671,0,0,0,100,0),
(@PATH,21,3700.764,494.1714,179.671,0,0,0,100,0),
(@PATH,22,3602.784,552.9866,179.671,0,0,0,100,0),
(@PATH,23,3539.342,521.9033,179.671,0,0,0,100,0),
(@PATH,24,3523.356,456.0128,179.671,0,0,0,100,0),
(@PATH,25,3618.041,362.6289,179.671,0,0,0,100,0),
(@PATH,26,3723.684,327.7586,179.671,0,0,0,100,0),
(@PATH,27,3773.446,249.6754,179.671,0,0,0,100,0),
(@PATH,28,3749.611,152.5128,179.671,0,0,0,100,0),
(@PATH,29,3695.312,141.0493,179.671,0,0,0,100,0),
(@PATH,30,3651.431,217.0924,179.671,0,0,0,100,0),
(@PATH,31,3683.438,319.0038,179.671,0,0,0,100,0),
(@PATH,32,3748.601,338.1269,179.671,0,0,0,100,0),
(@PATH,33,3792.042,245.4839,179.671,0,0,0,100,0),
(@PATH,34,3735.548,180.4323,179.671,0,0,0,100,0),
(@PATH,35,3618.281,171.1228,179.671,0,0,0,100,0),
(@PATH,36,3474.684,137.1242,179.671,0,0,0,100,0),
(@PATH,37,3479.782,49.90799,179.671,0,0,0,100,0),
(@PATH,38,3558.278,30.76975,179.671,0,0,0,100,0),
(@PATH,39,3629.689,60.77876,179.671,0,0,0,100,0),
(@PATH,40,3630.145,127.0798,179.671,0,0,0,100,0),
(@PATH,41,3490.695,175.1472,179.671,0,0,0,100,0),
(@PATH,42,3366.718,224.9415,179.671,0,0,0,100,0),
(@PATH,43,3212.591,294.8876,179.671,0,0,0,100,0),
(@PATH,44,3076.071,364.5977,179.671,0,0,0,100,0),
(@PATH,45,2990.75,457.3708,179.671,0,0,0,100,0),
(@PATH,46,2984.907,530.0489,179.671,0,0,0,100,0),
(@PATH,47,3036.494,602.2036,179.671,0,0,0,100,0);

SET @NPC := 99103;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27682,571,1,1,24743,0,3065.57,646.0688,229.7383,1.91463,120,0,0,38440,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3133.651,599.4818,229.7383,0,0,0,100,0),
(@PATH,2,3196.173,510.7455,229.7383,0,0,0,100,0),
(@PATH,3,3310.401,346.2189,229.7383,0,0,0,100,0),
(@PATH,4,3407.27,144.2138,229.7383,0,0,0,100,0),
(@PATH,5,3526.717,72.89225,229.7383,0,0,0,100,0),
(@PATH,6,3672.079,141.219,229.7383,0,0,0,100,0),
(@PATH,7,3713.506,314.0188,229.7383,0,0,0,100,0),
(@PATH,8,3602.6,431.6985,229.7383,0,0,0,100,0),
(@PATH,9,3408.532,364.4567,229.7383,0,0,0,100,0),
(@PATH,10,3217.656,309.1964,229.7383,0,0,0,100,0),
(@PATH,11,3061.193,324.0175,229.7383,0,0,0,100,0),
(@PATH,12,2959.836,412.4154,229.7383,0,0,0,100,0),
(@PATH,13,2945.925,545.2357,229.7383,0,0,0,100,0),
(@PATH,14,3065.57,646.0688,229.7383,0,0,0,100,0);

SET @NPC := 99104;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27682,571,1,1,24743,0,3112.661,560.2861,197.5214,1.91463,120,0,0,38440,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3166.947,533.783,197.5214,0,0,0,100,0),
(@PATH,2,3204.218,503.2988,197.5214,0,0,0,100,0),
(@PATH,3,3258.251,466.3165,197.5214,0,0,0,100,0),
(@PATH,4,3367.959,364.4092,197.5214,0,0,0,100,0),
(@PATH,5,3407.955,305.4363,197.5214,0,0,0,100,0),
(@PATH,6,3451.267,201.594,197.5214,0,0,0,100,0),
(@PATH,7,3508.874,166.8426,197.5214,0,0,0,100,0),
(@PATH,8,3633.496,151.127,197.5214,0,0,0,100,0),
(@PATH,9,3678.77,73.99848,197.5214,0,0,0,100,0),
(@PATH,10,3653.132,23.86263,197.5214,0,0,0,100,0),
(@PATH,11,3582.038,62.69965,197.5214,0,0,0,100,0),
(@PATH,12,3586.156,134.1242,197.5214,0,0,0,100,0),
(@PATH,13,3645.95,187.412,197.5214,0,0,0,100,0),
(@PATH,14,3699.768,345.5867,197.5214,0,0,0,100,0),
(@PATH,15,3755.733,466.6079,197.5214,0,0,0,100,0),
(@PATH,16,3695.944,599.8013,197.5214,0,0,0,100,0),
(@PATH,17,3631.838,570.2178,197.5214,0,0,0,100,0),
(@PATH,18,3620.732,470.3869,197.5214,0,0,0,100,0),
(@PATH,19,3653.033,441.836,197.5214,0,0,0,100,0),
(@PATH,20,3726.417,408.7439,197.5214,0,0,0,100,0),
(@PATH,21,3768.67,340.4243,197.5214,0,0,0,100,0),
(@PATH,22,3734.631,281.2856,197.5214,0,0,0,100,0),
(@PATH,23,3670.002,288.5108,197.5214,0,0,0,100,0),
(@PATH,24,3637.37,399.2112,197.5214,0,0,0,100,0),
(@PATH,25,3572.382,439.8372,197.5214,0,0,0,100,0),
(@PATH,26,3485.629,383.2211,197.5214,0,0,0,100,0),
(@PATH,27,3408.692,361.6136,197.5214,0,0,0,100,0),
(@PATH,28,3363.01,438.3368,197.5214,0,0,0,100,0),
(@PATH,29,3435.608,478.5367,197.5214,0,0,0,100,0),
(@PATH,30,3498.484,443.0669,197.5214,0,0,0,100,0),
(@PATH,31,3470.396,344.2875,197.5214,0,0,0,100,0),
(@PATH,32,3372.963,191.8817,197.5214,0,0,0,100,0),
(@PATH,33,3290.335,164.9094,197.5214,0,0,0,100,0),
(@PATH,34,3226.219,218.6132,197.5214,0,0,0,100,0),
(@PATH,35,3232.448,290.6222,197.5214,0,0,0,100,0),
(@PATH,36,3304.077,350.0902,197.5214,0,0,0,100,0),
(@PATH,37,3418.385,307.068,197.5214,0,0,0,100,0),
(@PATH,38,3440.642,196.0552,197.5214,0,0,0,100,0),
(@PATH,39,3388.76,137.5194,197.5214,0,0,0,100,0),
(@PATH,40,3299.691,166.3526,197.5214,0,0,0,100,0),
(@PATH,41,3197.989,286.0815,197.5214,0,0,0,100,0),
(@PATH,42,3124.057,342.0608,197.5214,0,0,0,100,0),
(@PATH,43,3029.794,412.821,197.5214,0,0,0,100,0),
(@PATH,44,3027.204,518.2308,197.5214,0,0,0,100,0),
(@PATH,45,3112.661,560.2861,197.5214,0,0,0,100,0);

SET @NPC := 99105;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27682,571,1,1,24743,0,3040.376,545.7573,223.7107,1.91463,120,0,0,38440,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3066.4,533.701,223.7107,0,0,0,100,0),
(@PATH,2,3184.873,458.7727,223.7107,0,0,0,100,0),
(@PATH,3,3308.346,361.982,223.7107,0,0,0,100,0),
(@PATH,4,3472.517,346.546,223.7107,0,0,0,100,0),
(@PATH,5,3580.564,383.8688,223.7107,0,0,0,100,0),
(@PATH,6,3656.45,349.4831,223.7107,0,0,0,100,0),
(@PATH,7,3671.57,291.0071,223.7107,0,0,0,100,0),
(@PATH,8,3637.499,197.3902,223.7107,0,0,0,100,0),
(@PATH,9,3527.828,157.279,223.7107,0,0,0,100,0),
(@PATH,10,3449.215,208.4113,223.7107,0,0,0,100,0),
(@PATH,11,3406.054,178.4773,223.7107,0,0,0,100,0),
(@PATH,12,3456.503,129.8825,223.7107,0,0,0,100,0),
(@PATH,13,3570.421,124.2369,223.7107,0,0,0,100,0),
(@PATH,14,3636.482,214.1168,223.7107,0,0,0,100,0),
(@PATH,15,3649.198,312.7206,223.7107,0,0,0,100,0),
(@PATH,16,3584.864,367.9254,223.7107,0,0,0,100,0),
(@PATH,17,3498.865,377.1867,223.7107,0,0,0,100,0),
(@PATH,18,3446.663,323.5181,223.7107,0,0,0,100,0),
(@PATH,19,3418.987,266.998,223.7107,0,0,0,100,0),
(@PATH,20,3325.219,278.7927,223.7107,0,0,0,100,0),
(@PATH,21,3246.293,325.4047,223.7107,0,0,0,100,0),
(@PATH,22,3136.991,394.2709,223.7107,0,0,0,100,0),
(@PATH,23,3057.987,457.7468,223.7107,0,0,0,100,0),
(@PATH,24,3007.479,511.7082,223.7107,0,0,0,100,0),
(@PATH,25,3012.345,538.7167,223.7107,0,0,0,100,0),
(@PATH,26,3040.376,545.7573,223.7107,0,0,0,100,0);

-- Azure Dragon
UPDATE `creature_template` SET `speed_walk`=7/2,`speed_run`=15/7,`InhabitType`=4 WHERE `entry`=27608;

SET @NPC := 99105;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27608,571,1,1,24140,0,3177.857,623.9463,234.0692,1.91463,120,0,0,92538,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3062.52,435.5133,234.0692,0,0,0,100,0),
(@PATH,2,3125.572,288.5948,234.0692,0,0,0,100,0),
(@PATH,3,3411.13,158.2311,234.0692,0,0,0,100,0),
(@PATH,4,3681.013,161.0803,234.0692,0,0,0,100,0),
(@PATH,5,3815.275,311.0847,234.0692,0,0,0,100,0),
(@PATH,6,3773.807,472.041,234.0692,0,0,0,100,0),
(@PATH,7,3576.037,531.0521,234.0692,0,0,0,100,0),
(@PATH,8,3435.667,344.3725,234.0692,0,0,0,100,0),
(@PATH,9,3480.011,109.5501,234.0692,0,0,0,100,0),
(@PATH,10,3702.724,-30.66547,234.0692,0,0,0,100,0),
(@PATH,11,3889.816,54.52344,234.0692,0,0,0,100,0),
(@PATH,12,3914.841,319.0804,234.0692,0,0,0,100,0),
(@PATH,13,3695.273,610.4755,234.0692,0,0,0,100,0),
(@PATH,14,3389.431,691.5984,234.0692,0,0,0,100,0),
(@PATH,15,3177.857,623.9463,234.0692,0,0,0,100,0);

SET @NPC := 99106;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27608,571,1,1,24140,0,2980.341,629.1049,218.5251,1.91463,120,0,0,92538,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3128.300,641.3470,218.5251,0,0,0,100,0),
(@PATH,2,3231.236,534.2712,218.5251,0,0,0,100,0),
(@PATH,3,3229.198,417.0781,218.5251,0,0,0,100,0),
(@PATH,4,3131.435,332.9997,218.5251,0,0,0,100,0),
(@PATH,5,2990.912,336.3741,206.4763,0,0,0,100,0),
(@PATH,6,2871.583,422.1004,206.4763,0,0,0,100,0),
(@PATH,7,2881.663,578.8079,206.4763,0,0,0,100,0),
(@PATH,8,2980.341,629.1049,218.5251,0,0,0,100,0);

SET @NPC := 99107;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27608,571,1,1,24140,0,3488.651,-5.619141,169.4104,1.91463,120,0,0,92538,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3338.837,206.9924,169.4104,0,0,0,100,0),
(@PATH,2,3077.402,282.2865,169.4104,0,0,0,100,0),
(@PATH,3,2799.517,249.9982,169.4104,0,0,0,100,0),
(@PATH,4,2641.98,389.0734,169.4104,0,0,0,100,0),
(@PATH,5,2739.034,565.4708,169.4104,0,0,0,100,0),
(@PATH,6,3044.569,485.4482,169.4104,0,0,0,100,0),
(@PATH,7,3169.199,460.6385,169.4104,0,0,0,100,0),
(@PATH,8,3336.106,465.7545,169.4104,0,0,0,100,0),
(@PATH,9,3630.246,386.4513,169.4104,0,0,0,100,0),
(@PATH,10,3803.202,250.7272,169.4104,0,0,0,100,0),
(@PATH,11,3770.406,24.9643,169.4104,0,0,0,100,0),
(@PATH,12,3488.651,-5.619141,169.4104,0,0,0,100,0);

SET @NPC := 99108;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27608,571,1,1,24140,0,3542.247,134.1484,169.6936,1.91463,120,0,0,92538,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3506.288,141.7649,169.6936,0,0,0,100,0),
(@PATH,2,3378.177,251.381,169.6936,0,0,0,100,0),
(@PATH,3,3448.559,417.0887,169.6936,0,0,0,100,0),
(@PATH,4,3659.633,429.129,169.6936,0,0,0,100,0),
(@PATH,5,3726.806,236.8274,169.6936,0,0,0,100,0),
(@PATH,6,3554.261,69.58746,169.6936,0,0,0,100,0),
(@PATH,7,3337.373,175.2911,169.6936,0,0,0,100,0),
(@PATH,8,3292.872,421.84,169.6936,0,0,0,100,0),
(@PATH,9,3355.351,609.4697,169.6936,0,0,0,100,0),
(@PATH,10,3233.689,777.6954,207.249,0,0,0,100,0),
(@PATH,11,3049.014,721.6703,224.4991,0,0,0,100,0),
(@PATH,12,3044.268,566.5984,169.6936,0,0,0,100,0),
(@PATH,13,3142.397,481.2142,169.6936,0,0,0,100,0),
(@PATH,14,3328.336,435.8111,169.6936,0,0,0,100,0),
(@PATH,15,3583.232,539.7742,169.6936,0,0,0,100,0),
(@PATH,16,3799.81,460.638,169.6936,0,0,0,100,0),
(@PATH,17,3717.946,244.38,169.6936,0,0,0,100,0),
(@PATH,18,3542.247,134.1484,169.6936,0,0,0,100,0);

SET @NPC := 99109;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27608,571,1,1,24140,0,3590.88,69.88932,149.1064,1.91463,120,0,0,92538,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3349.674,233.3671,149.1064,0,0,0,100,0),
(@PATH,2,3050.534,331.2801,149.1064,0,0,0,100,0),
(@PATH,3,2982.76,530.9803,149.1064,0,0,0,100,0),
(@PATH,4,3091.488,621.5792,149.1064,0,0,0,100,0),
(@PATH,5,3227.927,595.5925,149.1064,0,0,0,100,0),
(@PATH,6,3467.181,481.7014,149.1064,0,0,0,100,0),
(@PATH,7,3708.623,396.748,149.1064,0,0,0,100,0),
(@PATH,8,3763.585,194.9491,149.1064,0,0,0,100,0),
(@PATH,9,3590.88,69.88932,149.1064,0,0,0,100,0);

SET @NPC := 99110;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27608,571,1,1,24140,0,3424.549,257.6351,132.4231,1.91463,120,0,0,92538,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3523.625,148.6501,132.4231,0,0,0,100,0),
(@PATH,2,3671.965,176.3331,132.4231,0,0,0,100,0),
(@PATH,3,3721.304,302.0294,132.4231,0,0,0,100,0),
(@PATH,4,3586.378,436.0151,132.4231,0,0,0,100,0),
(@PATH,5,3398.783,363.715,132.4231,0,0,0,100,0),
(@PATH,6,3201.002,184.2853,132.4231,0,0,0,100,0),
(@PATH,7,3033.273,261.4108,132.4231,0,0,0,100,0),
(@PATH,8,3020.73,417.366,132.4231,0,0,0,100,0),
(@PATH,9,3134.54,559.4572,132.4231,0,0,0,100,0),
(@PATH,10,3286.472,590.3685,132.4231,0,0,0,100,0),
(@PATH,11,3370.537,476.4369,132.4231,0,0,0,100,0),
(@PATH,12,3424.549,257.6351,132.4231,0,0,0,100,0);

SET @NPC := 99111;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27608,571,1,1,24140,0,3485.543,172.4427,356.9669,1.91463,120,0,0,92538,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3617.296,247.1156,357.3557,0,0,0,100,0),
(@PATH,2,3589.83,487.236,356.9669,0,0,0,100,0),
(@PATH,3,3417.021,598.9542,356.9669,0,0,0,100,0),
(@PATH,4,3230.356,615.1475,346.9949,0,0,0,100,0),
(@PATH,5,3061.912,567.3838,332.8835,0,0,0,100,0),
(@PATH,6,2990.214,429.7983,332.8835,0,0,0,100,0),
(@PATH,7,3203.85,198.3223,332.8835,0,0,0,100,0),
(@PATH,8,3485.543,172.4427,356.9669,0,0,0,100,0);

SET @NPC := 99112;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27608,571,1,1,24140,0,3037.007,696.7842,221.9052,1.91463,120,0,0,92538,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3232.783,646.5775,221.9052,0,0,0,100,0),
(@PATH,2,3397.601,486.7037,221.9052,0,0,0,100,0),
(@PATH,3,3619.899,375.7408,221.9052,0,0,0,100,0),
(@PATH,4,3828.234,403.8529,221.9052,0,0,0,100,0),
(@PATH,5,3950.75,272.4162,221.9052,0,0,0,100,0),
(@PATH,6,3930.549,80.84885,221.9052,0,0,0,100,0),
(@PATH,7,3731.407,15.2053,221.9052,0,0,0,100,0),
(@PATH,8,3520.57,124.0501,221.9052,0,0,0,100,0),
(@PATH,9,3319.81,205.5578,221.9052,0,0,0,100,0),
(@PATH,10,3141.857,364.067,221.9052,0,0,0,100,0),
(@PATH,11,3020.412,487.4164,211.0165,0,0,0,100,0),
(@PATH,12,2956.715,583.454,211.0165,0,0,0,100,0),
(@PATH,13,3037.007,696.7842,221.9052,0,0,0,100,0);

SET @NPC := 99113;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27608,571,1,1,24140,0,3723.934,203.8074,149.416,1.91463,120,0,0,92538,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3679.447,16.12554,149.416,0,0,0,100,0),
(@PATH,2,3507.391,-64.8457,149.416,0,0,0,100,0),
(@PATH,3,3313.535,24.35514,149.416,0,0,0,100,0),
(@PATH,4,3106.862,208.8542,149.416,0,0,0,100,0),
(@PATH,5,2972.297,312.9027,149.416,0,0,0,100,0),
(@PATH,6,2980.743,486.7836,149.416,0,0,0,100,0),
(@PATH,7,3066.302,566.5879,149.416,0,0,0,100,0),
(@PATH,8,3202.917,598.3837,149.416,0,0,0,100,0),
(@PATH,9,3404.993,515.3446,149.416,0,0,0,100,0),
(@PATH,10,3425.663,255.2629,149.416,0,0,0,100,0),
(@PATH,11,3211.951,114.9269,149.416,0,0,0,100,0),
(@PATH,12,3000.342,217.3278,149.416,0,0,0,100,0),
(@PATH,13,2963.022,422.1858,149.416,0,0,0,100,0),
(@PATH,14,3166.04,544.8924,149.416,0,0,0,100,0),
(@PATH,15,3358.634,487.4157,149.416,0,0,0,100,0),
(@PATH,16,3582.295,398.5222,149.416,0,0,0,100,0),
(@PATH,17,3723.934,203.8074,149.416,0,0,0,100,0);

SET @NPC := 99114;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27608,571,1,1,24140,0,3737.246,441.4471,163.1518,1.91463,120,0,0,92538,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3681.252,275.5609,163.1518,0,0,0,100,0),
(@PATH,2,3715.161,150.0893,163.1518,0,0,0,100,0),
(@PATH,3,3533.266,-10.55339,163.1518,0,0,0,100,0),
(@PATH,4,3173.073,184.9491,151.4297,0,0,0,100,0),
(@PATH,5,2936.554,340.61,144.8464,0,0,0,100,0),
(@PATH,6,2956.506,455.4837,133.5686,0,0,0,100,0),
(@PATH,7,3032.773,515.5552,122.4019,0,0,0,100,0),
(@PATH,8,3178.638,523.1923,126.2074,0,0,0,100,0),
(@PATH,9,3413.29,470.1859,126.2074,0,0,0,100,0),
(@PATH,10,3572.062,487.1479,144.1519,0,0,0,100,0),
(@PATH,11,3523.323,611.9957,144.1519,0,0,0,100,0),
(@PATH,12,3655.581,727.4493,168.9574,0,0,0,100,0),
(@PATH,13,3772.614,626.3416,163.1518,0,0,0,100,0),
(@PATH,14,3737.246,441.4471,163.1518,0,0,0,100,0);

SET @NPC := 99115;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27608,571,1,1,24140,0,3490.259,76.95345,197.2588,1.91463,120,0,0,92538,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3733.682,129.7717,197.2588,0,0,0,100,0),
(@PATH,2,3864.96,508.5689,197.2588,0,0,0,100,0),
(@PATH,3,3552.458,522.002,197.2588,0,0,0,100,0),
(@PATH,4,3285.309,616.7151,197.2588,0,0,0,100,0),
(@PATH,5,3036.671,572.0858,197.2588,0,0,0,100,0),
(@PATH,6,2932.137,492.1258,197.2588,0,0,0,100,0),
(@PATH,7,2908.21,365.3067,197.2588,0,0,0,100,0),
(@PATH,8,3001.178,249.2961,197.2588,0,0,0,100,0),
(@PATH,9,3292.851,156.1309,197.2588,0,0,0,100,0),
(@PATH,10,3490.259,76.95345,197.2588,0,0,0,100,0);

SET @NPC := 99116;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27608,571,1,1,24140,0,3484.9,77.65061,181.4013,1.91463,120,0,0,92538,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3231.553,144.962,181.4013,0,0,0,100,0),
(@PATH,2,3093.218,232.0598,181.4013,0,0,0,100,0),
(@PATH,3,3055.291,416.8134,181.4013,0,0,0,100,0),
(@PATH,4,3167.159,544.8934,181.4013,0,0,0,100,0),
(@PATH,5,3351.382,640.3859,181.4013,0,0,0,100,0),
(@PATH,6,3588.236,561.4211,181.4013,0,0,0,100,0),
(@PATH,7,3702.199,377.5353,181.4013,0,0,0,100,0),
(@PATH,8,3664.586,182.5018,181.4013,0,0,0,100,0),
(@PATH,9,3484.9,77.65061,181.4013,0,0,0,100,0);

SET @NPC := 99117;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27608,571,1,1,24140,0,2938.209,403.6825,200.0642,1.91463,120,0,0,92538,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3000.396,533.5293,200.0642,0,0,0,100,0),
(@PATH,2,3148.834,635.804,200.0642,0,0,0,100,0),
(@PATH,3,3307.068,630.108,200.0642,0,0,0,100,0),
(@PATH,4,3393.553,425.3046,200.0642,0,0,0,100,0),
(@PATH,5,3413.431,212.6353,200.0642,0,0,0,100,0),
(@PATH,6,3566.631,98.43479,200.0642,0,0,0,100,0),
(@PATH,7,3729.045,218.3996,200.0642,0,0,0,100,0),
(@PATH,8,3698.444,417.5869,200.0642,0,0,0,100,0),
(@PATH,9,3524.363,494.4065,200.0642,0,0,0,100,0),
(@PATH,10,3335.302,374.7052,200.0642,0,0,0,100,0),
(@PATH,11,3255.138,189.5002,200.0642,0,0,0,100,0),
(@PATH,12,3111.794,148.6386,200.0642,0,0,0,100,0),
(@PATH,13,2979.718,214.2472,200.0642,0,0,0,100,0),
(@PATH,14,2938.209,403.6825,200.0642,0,0,0,100,0);

SET @NPC := 99118;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,27608,571,1,1,24140,0,3756.611,216.3398,142.0742,1.91463,120,0,0,92538,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3746.663,468.0216,142.0742,0,0,0,100,0),
(@PATH,2,3489.741,512.316,142.0742,0,0,0,100,0),
(@PATH,3,3277.682,558.9236,142.0742,0,0,0,100,0),
(@PATH,4,3152.218,477.8159,142.0742,0,0,0,100,0),
(@PATH,5,3082.888,432.7688,142.0742,0,0,0,100,0),
(@PATH,6,3016.838,481.925,142.0742,0,0,0,100,0),
(@PATH,7,3033.647,560.426,142.0742,0,0,0,100,0),
(@PATH,8,3162.152,562.8186,142.0742,0,0,0,100,0),
(@PATH,9,3240.709,468.0213,142.0742,0,0,0,100,0),
(@PATH,10,3371.026,259.9583,142.0742,0,0,0,100,0),
(@PATH,11,3535.323,122.4076,142.0742,0,0,0,100,0),
(@PATH,12,3756.611,216.3398,142.0742,0,0,0,100,0);

-- Wyrmrest Temple Drake

DELETE FROM `creature` WHERE `guid` IN (100170,100206,100207,100208,100209,100210,100213,100215,100216,100226,130999,131000,131001,131002,131003,131006,131004,131005,131007,131008,131009);

UPDATE `creature_template` SET `speed_walk`=9/2,`speed_run`=17/7,`InhabitType`=4 WHERE `entry`=26925;

SET @NPC := 100170;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,26925,571,1,1,6376,0,3423.212,279.9993,128.0342,1.91463,120,0,0,1,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3423.212,279.9993,128.0342,0,0,0,100,0),
(@PATH,2,3452.103,334.373,128.0342,0,0,0,100,0),
(@PATH,3,3463.885,390.2345,128.0342,0,0,0,100,0),
(@PATH,4,3459.316,448.6561,128.0342,0,0,0,100,0),
(@PATH,5,3390.542,472.8465,128.0342,0,0,0,100,0),
(@PATH,6,3343.515,429.0621,128.0342,0,0,0,100,0),
(@PATH,7,3319.781,350.6016,128.0342,0,0,0,100,0),
(@PATH,8,3342.761,276.0052,128.0342,0,0,0,100,0),
(@PATH,9,3381.065,257.5826,128.0342,0,0,0,100,0);

SET @NPC := 100206;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,26925,571,1,1,6376,0,3662.692,328.2304,338.4197,1.91463,120,0,0,1,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3662.692,328.2304,338.4197,0,0,0,100,0),
(@PATH,2,3648.806,293.8063,321.0587,0,0,0,100,0),
(@PATH,3,3677.441,213.8859,320.1976,0,0,0,100,0),
(@PATH,4,3615.31,209.5691,324.1698,0,0,0,100,0),
(@PATH,5,3637.643,254.0089,332.7251,0,0,0,100,0),
(@PATH,6,3699.886,260.6509,327.8641,0,0,0,100,0),
(@PATH,7,3720.373,308.941,337.7808,0,0,0,100,0),
(@PATH,8,3691.676,352.0933,342.2254,0,0,0,100,0);

SET @NPC := 100207;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,26925,571,1,1,6376,0,3657.962,213.0957,169.3146,1.91463,120,0,0,1,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3657.962,213.0957,169.3146,0,0,0,100,0),
(@PATH,2,3667.34,194.262,169.3146,0,0,0,100,0),
(@PATH,3,3675.021,149.4151,169.3146,0,0,0,100,0),
(@PATH,4,3676.687,103.2968,169.3146,0,0,0,100,0),
(@PATH,5,3657.863,59.17426,169.3146,0,0,0,100,0),
(@PATH,6,3622.093,33.20833,169.3146,0,0,0,100,0),
(@PATH,7,3595.094,36.79308,169.3146,0,0,0,100,0),
(@PATH,8,3578.594,58.34657,169.3146,0,0,0,100,0),
(@PATH,9,3553.642,84.92133,169.3146,0,0,0,100,0),
(@PATH,10,3558.182,112.2144,169.3146,0,0,0,100,0),
(@PATH,11,3570.514,135.5537,169.3146,0,0,0,100,0),
(@PATH,12,3596.293,162.6956,169.3146,0,0,0,100,0),
(@PATH,13,3618.115,186.3872,169.3146,0,0,0,100,0),
(@PATH,14,3648.757,225.0738,169.3146,0,0,0,100,0);

SET @NPC := 100208;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,26925,571,1,1,6376,0,3606.596,396.9579,205.5612,1.91463,120,0,0,1,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3606.596,396.9579,205.5612,0,0,0,100,0),
(@PATH,2,3633.08,397.3744,205.5612,0,0,0,100,0),
(@PATH,3,3650.996,425.418,205.5612,0,0,0,100,0),
(@PATH,4,3610.396,457.8707,205.5612,0,0,0,100,0),
(@PATH,5,3510.082,450.9809,205.5612,0,0,0,100,0),
(@PATH,6,3435.127,411.1036,205.5612,0,0,0,100,0),
(@PATH,7,3388.161,429.3571,205.5612,0,0,0,100,0),
(@PATH,8,3406.552,481.8189,205.5612,0,0,0,100,0),
(@PATH,9,3518.298,499.1305,205.5612,0,0,0,100,0),
(@PATH,10,3568.027,418.6763,205.5612,0,0,0,100,0);

SET @NPC := 100209;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,26925,571,1,1,6376,0,3648.806,293.8063,321.0587,1.91463,120,0,0,1,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3648.806,293.8063,321.0587,0,0,0,100,0),
(@PATH,2,3677.441,213.8859,320.1976,0,0,0,100,0),
(@PATH,3,3615.31,209.5691,324.1698,0,0,0,100,0),
(@PATH,4,3637.643,254.0089,332.7251,0,0,0,100,0),
(@PATH,5,3699.886,260.6509,327.8641,0,0,0,100,0),
(@PATH,6,3720.373,308.941,337.7808,0,0,0,100,0),
(@PATH,7,3691.676,352.0933,342.2254,0,0,0,100,0),
(@PATH,8,3662.692,328.2304,338.4197,0,0,0,100,0);

SET @NPC := 100210;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,26925,571,1,1,6376,0,3452.103,334.373,128.0342,1.91463,120,0,0,1,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3452.103,334.373,128.0342,0,0,0,100,0),
(@PATH,2,3334.853,530.1229,197.2842,0,0,0,100,0),
(@PATH,3,3325.103,359.123,195.7842,0,0,0,100,0),
(@PATH,4,3499.853,334.623,195.0342,0,0,0,100,0),
(@PATH,5,3263.353,527.8729,197.2842,0,0,0,100,0),
(@PATH,6,3706.853,80.87296,195.7842,0,0,0,100,0),
(@PATH,7,3499.853,334.623,195.0342,0,0,0,100,0),
(@PATH,8,3495.603,493.623,197.2842,0,0,0,100,0),
(@PATH,9,3218.353,177.623,195.7842,0,0,0,100,0);

SET @NPC := 100213;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,26925,571,1,1,6376,0,3648.806,293.8063,321.0587,1.91463,120,0,0,1,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3648.806,293.8063,321.0587,0,0,0,100,0),
(@PATH,2,3588.806,84.30627,390.3087,0,0,0,100,0),
(@PATH,3,3827.556,468.8063,388.3087,0,0,0,100,0),
(@PATH,4,3731.556,38.55627,388.5587,0,0,0,100,0),
(@PATH,5,3454.556,53.30627,390.3087,0,0,0,100,0),
(@PATH,6,3756.306,434.3063,388.3087,0,0,0,100,0),
(@PATH,7,3503.556,54.30627,388.5587,0,0,0,100,0),
(@PATH,8,3795.056,64.55627,390.3087,0,0,0,100,0);

SET @NPC := 100215;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,26925,571,1,1,6376,0,3606.596,396.9579,205.5612,1.91463,120,0,0,1,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3606.596,396.9579,205.5612,0,0,0,100,0),
(@PATH,2,3688.846,165.4579,274.8112,0,0,0,100,0),
(@PATH,3,3601.846,450.2079,273.3112,0,0,0,100,0),
(@PATH,4,3585.346,505.2079,272.8112,0,0,0,100,0),
(@PATH,5,3602.096,174.2079,274.8112,0,0,0,100,0),
(@PATH,6,3446.596,562.4579,273.3112,0,0,0,100,0),
(@PATH,7,3585.346,505.2079,272.8112,0,0,0,100,0),
(@PATH,8,3500.346,153.9579,274.8112,0,0,0,100,0),
(@PATH,9,3571.096,180.2079,273.3112,0,0,0,100,0),
(@PATH,10,3585.346,505.2079,272.8112,0,0,0,100,0);

SET @NPC := 100216;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,26925,571,1,1,6376,0,3772.475,266.6113,254.1891,1.91463,120,0,0,1,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3772.475,266.6113,254.1891,0,0,0,100,0),
(@PATH,2,3887.975,92.86133,323.4391,0,0,0,100,0),
(@PATH,3,3532.475,436.8613,321.6891,0,0,0,100,0),
(@PATH,4,3798.725,252.1113,321.4391,0,0,0,100,0),
(@PATH,5,3886.225,81.11133,323.4391,0,0,0,100,0),
(@PATH,6,3636.975,32.11133,321.6891,0,0,0,100,0),
(@PATH,7,3798.725,252.1113,321.4391,0,0,0,100,0),
(@PATH,8,3747.725,77.61133,323.4391,0,0,0,100,0),
(@PATH,9,3772.475,165.6113,321.6891,0,0,0,100,0),
(@PATH,10,3798.725,252.1113,321.4391,0,0,0,100,0),
(@PATH,11,3899.725,81.86133,323.4391,0,0,0,100,0),
(@PATH,12,3936.975,216.1113,321.6891,0,0,0,100,0),
(@PATH,13,3798.725,252.1113,321.4391,0,0,0,100,0),
(@PATH,14,3755.975,93.86133,323.4391,0,0,0,100,0),
(@PATH,15,3785.475,362.1113,321.9391,0,0,0,100,0),
(@PATH,16,3798.725,252.1113,321.4391,0,0,0,100,0);

SET @NPC := 100226;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,26925,571,1,1,6376,0,3447.796,171.34,125.7842,1.91463,120,0,0,1,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3447.796,171.34,125.7842,0,0,0,100,0),
(@PATH,2,3456.033,100.7345,125.7842,0,0,0,100,0),
(@PATH,3,3388.28,76.85818,125.7842,0,0,0,100,0),
(@PATH,4,3360.649,126.0434,125.7842,0,0,0,100,0),
(@PATH,5,3368.991,199.87,125.7842,0,0,0,100,0),
(@PATH,6,3432.052,296.2538,125.7842,0,0,0,100,0),
(@PATH,7,3465.493,406.8654,125.7842,0,0,0,100,0),
(@PATH,8,3397.028,457.6761,125.7842,0,0,0,100,0),
(@PATH,9,3354.537,408.359,125.7842,0,0,0,100,0),
(@PATH,10,3384.226,319.0551,125.7842,0,0,0,100,0),
(@PATH,11,3433.646,226.0049,125.7842,0,0,0,100,0);

SET @NPC := 130999;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,26925,571,1,1,6376,0,3750.984,407.8766,254.1891,1.91463,120,0,0,1,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3750.984,407.8766,254.1891,0,0,0,100,0),
(@PATH,2,3786.711,439.0684,254.1891,0,0,0,100,0),
(@PATH,3,3830.952,442.1341,254.1891,0,0,0,100,0),
(@PATH,4,3862.503,430.8392,254.1891,0,0,0,100,0),
(@PATH,5,3882.549,422.6376,254.1891,0,0,0,100,0),
(@PATH,6,3890.228,394.8426,254.1891,0,0,0,100,0),
(@PATH,7,3871.091,383.1622,254.1891,0,0,0,100,0),
(@PATH,8,3860.575,369.1732,254.1891,0,0,0,100,0),
(@PATH,9,3840.769,340.5143,257.8279,0,0,0,100,0),
(@PATH,10,3832.232,320.8624,264.8557,0,0,0,100,0),
(@PATH,11,3801.307,290.9948,262.5502,0,0,0,100,0),
(@PATH,12,3775.203,268.874,254.1891,0,0,0,100,0),
(@PATH,13,3772.475,266.6113,254.1891,0,0,0,100,0),
(@PATH,14,3748.613,298.5957,254.1891,0,0,0,100,0),
(@PATH,15,3725.111,325.421,254.1891,0,0,0,100,0),
(@PATH,16,3718.476,358.75,254.1891,0,0,0,100,0),
(@PATH,17,3726.624,371.3951,254.1891,0,0,0,100,0);

-- Wyrmrest Guardian

DELETE FROM `creature` WHERE `guid` IN (100823,100824,100825,100826,131035,131036,131037,131038,131039,131040,131041,131042,131043,131044,131045,131046,131047,131048,131049,131050);
UPDATE `creature_template` SET `speed_walk`=7/2,`speed_run`=15/7,`InhabitType`=4 WHERE `entry`=26933;

SET @NPC := 100823;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,26933,571,1,1,0,0,3791.882,255.4148,152.3366,1.91463,120,0,0,1,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3791.882,255.4148,152.3366,0,0,0,100,0),
(@PATH,2,3834.405,230.3203,152.3366,0,0,0,100,0),
(@PATH,3,3876.825,233.7821,152.3366,0,0,0,100,0),
(@PATH,4,3900.443,242.9511,152.3366,0,0,0,100,0),
(@PATH,5,3916.114,280.9176,152.3366,0,0,0,100,0),
(@PATH,6,3906.543,328.6796,152.3366,0,0,0,100,0),
(@PATH,7,3897.018,362.4748,152.3366,0,0,0,100,0),
(@PATH,8,3881.718,402.3574,152.3366,0,0,0,100,0),
(@PATH,9,3858.27,431.4729,152.3366,0,0,0,100,0),
(@PATH,10,3816.65,448.8396,152.3366,0,0,0,100,0),
(@PATH,11,3767.092,457.8965,152.3366,0,0,0,100,0),
(@PATH,12,3720.177,443.4765,152.3366,0,0,0,100,0),
(@PATH,13,3699.901,410.0056,152.3366,0,0,0,100,0),
(@PATH,14,3723.531,374.0899,152.3366,0,0,0,100,0),
(@PATH,15,3739.026,327.0149,152.3366,0,0,0,100,0),
(@PATH,16,3762.99,312.7233,152.3366,0,0,0,100,0),
(@PATH,17,3774.031,299.9361,152.3366,0,0,0,100,0),
(@PATH,18,3786.234,277.9988,152.3366,0,0,0,100,0);

SET @NPC := 100824;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,26933,571,1,1,0,0,3559.792,412.912,244.8625,1.91463,120,0,0,1,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3559.792,412.912,244.8625,0,0,0,100,0),
(@PATH,2,3625.949,456.7731,244.8625,0,0,0,100,0),
(@PATH,3,3683.285,437.189,244.8625,0,0,0,100,0),
(@PATH,4,3727.341,385.3615,244.8625,0,0,0,100,0),
(@PATH,5,3786.656,388.9702,244.8625,0,0,0,100,0),
(@PATH,6,3811.097,463.1342,244.8625,0,0,0,100,0),
(@PATH,7,3769.007,516.1342,244.8625,0,0,0,100,0),
(@PATH,8,3685.209,493.7117,244.8625,0,0,0,100,0),
(@PATH,9,3589.482,475.7777,244.8625,0,0,0,100,0),
(@PATH,10,3491.84,496.9259,244.8625,0,0,0,100,0),
(@PATH,11,3406.895,485.8197,244.8625,0,0,0,100,0),
(@PATH,12,3370.333,427.0351,244.8625,0,0,0,100,0),
(@PATH,13,3411.417,366.7467,244.8625,0,0,0,100,0),
(@PATH,14,3479.214,376.5652,244.8625,0,0,0,100,0);

SET @NPC := 100825;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,26933,571,1,1,0,0,3424.446,300.7501,194.3189,1.91463,120,0,0,1,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3424.446,300.7501,194.3189,0,0,0,100,0),
(@PATH,2,3427.025,177.7048,194.3189,0,0,0,100,0),
(@PATH,3,3508.415,97.62153,194.3189,0,0,0,100,0),
(@PATH,4,3635.289,110.5046,194.3189,0,0,0,100,0),
(@PATH,5,3728.01,244.8104,194.3189,0,0,0,100,0),
(@PATH,6,3655.76,402.0861,194.3189,0,0,0,100,0),
(@PATH,7,3513.567,405.2664,194.3189,0,0,0,100,0);

SET @NPC := 100826;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,26933,571,1,1,0,0,3457.605,232.8917,280.631,1.91463,120,0,0,1,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3457.605,232.8917,280.631,0,0,0,100,0),
(@PATH,2,3414.099,307.4206,280.631,0,0,0,100,0),
(@PATH,3,3470.344,415.2286,280.631,0,0,0,100,0),
(@PATH,4,3607.002,418.6074,280.631,0,0,0,100,0),
(@PATH,5,3711.957,340.5557,280.631,0,0,0,100,0),
(@PATH,6,3720.49,226.3188,280.631,0,0,0,100,0),
(@PATH,7,3642.503,140.184,280.631,0,0,0,100,0),
(@PATH,8,3516.544,159.0889,280.631,0,0,0,100,0);

SET @NPC := 131035;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,26933,571,1,1,0,0,3559.792,412.912,244.8625,1.91463,120,0,0,1,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3559.792,412.912,244.8625,0,0,0,100,0),
(@PATH,2,3625.949,456.7731,244.8625,0,0,0,100,0),
(@PATH,3,3683.285,437.189,244.8625,0,0,0,100,0),
(@PATH,4,3727.341,385.3615,244.8625,0,0,0,100,0),
(@PATH,5,3786.656,388.9702,244.8625,0,0,0,100,0),
(@PATH,6,3811.097,463.1342,244.8625,0,0,0,100,0),
(@PATH,7,3769.007,516.1342,244.8625,0,0,0,100,0),
(@PATH,8,3685.209,493.7117,244.8625,0,0,0,100,0),
(@PATH,9,3589.482,475.7777,244.8625,0,0,0,100,0),
(@PATH,10,3491.84,496.9259,244.8625,0,0,0,100,0),
(@PATH,11,3406.895,485.8197,244.8625,0,0,0,100,0),
(@PATH,12,3370.333,427.0351,244.8625,0,0,0,100,0),
(@PATH,13,3411.417,366.7467,244.8625,0,0,0,100,0),
(@PATH,14,3479.214,376.5652,244.8625,0,0,0,100,0);

SET @NPC := 131036;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,26933,571,1,1,0,0,3438.608,283.5485,224.3952,1.91463,120,0,0,1,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3438.608,283.5485,224.3952,0,0,0,100,0),
(@PATH,2,3422.991,341.0565,224.3952,0,0,0,100,0),
(@PATH,3,3372.117,385.6395,224.3952,0,0,0,100,0),
(@PATH,4,3315.855,342.7029,224.3952,0,0,0,100,0),
(@PATH,5,3294.378,270.6668,224.3952,0,0,0,100,0),
(@PATH,6,3321.572,194.6726,224.3952,0,0,0,100,0),
(@PATH,7,3385.174,162.3308,224.3952,0,0,0,100,0),
(@PATH,8,3437.712,218.1042,224.3952,0,0,0,100,0);

SET @NPC := 131037;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,26933,571,1,1,0,0,3337.373,175.2911,169.6936,1.91463,120,0,0,1,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3337.373,175.2911,169.6936,0,0,0,100,0),
(@PATH,2,3292.872,421.84,169.6936,0,0,0,100,0),
(@PATH,3,3355.351,609.4697,169.6936,0,0,0,100,0),
(@PATH,4,3233.689,777.6954,207.249,0,0,0,100,0),
(@PATH,5,3049.014,721.6703,224.4991,0,0,0,100,0),
(@PATH,6,3044.268,566.5984,169.6936,0,0,0,100,0),
(@PATH,7,3142.397,481.2142,169.6936,0,0,0,100,0),
(@PATH,8,3328.336,435.8111,169.6936,0,0,0,100,0),
(@PATH,9,3583.232,539.7742,169.6936,0,0,0,100,0),
(@PATH,10,3799.81,460.638,169.6936,0,0,0,100,0),
(@PATH,11,3717.946,244.38,169.6936,0,0,0,100,0),
(@PATH,12,3542.247,134.1484,169.6936,0,0,0,100,0),
(@PATH,13,3378.177,251.381,169.6936,0,0,0,100,0),
(@PATH,14,3448.559,417.0887,169.6936,0,0,0,100,0),
(@PATH,15,3659.633,429.129,169.6936,0,0,0,100,0),
(@PATH,16,3726.806,236.8274,169.6936,0,0,0,100,0),
(@PATH,17,3554.261,69.58746,169.6936,0,0,0,100,0);

SET @NPC := 131038;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,26933,571,1,1,0,0,3738.288,310.6056,206.0655,1.91463,120,0,0,1,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3738.288,310.6056,206.0655,0,0,0,100,0),
(@PATH,1,3775.943,320.1521,206.0655,0,0,0,100,0),
(@PATH,1,3791.984,364.0035,206.0655,0,0,0,100,0),
(@PATH,1,3821.821,375.4122,206.0655,0,0,0,100,0),
(@PATH,1,3862.769,402.7154,206.0655,0,0,0,100,0),
(@PATH,1,3833.872,426.7561,206.0655,0,0,0,100,0),
(@PATH,1,3796.899,413.8476,206.0655,0,0,0,100,0),
(@PATH,1,3780.125,433.8598,206.0655,0,0,0,100,0),
(@PATH,1,3736.043,443.3744,206.0655,0,0,0,100,0),
(@PATH,1,3713.603,445.3026,206.0655,0,0,0,100,0),
(@PATH,1,3683.613,406.9387,206.0655,0,0,0,100,0),
(@PATH,1,3706.474,364.4982,206.0655,0,0,0,100,0),
(@PATH,1,3712.073,324.8767,206.0655,0,0,0,100,0);
-- Fix some Flying Stormpeaks Wyms
UPDATE `creature_addon` SET `bytes1`=50331648 WHERE `guid` IN (101109,101111,101112,101121,101123,101124);
-- Fix some Flying Wild Wyms
UPDATE `creature_addon` SET `bytes1`=50331648 WHERE `guid` IN (202972,202973,202974,202975,202976,202977);
-- remove some bad creature_addon records
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
-- Remove Brunnhildar Drakerider Spawns
DELETE FROM `creature` WHERE `guid` IN (97922,97923);
DELETE FROM `creature_addon` WHERE `guid` IN (97922,97923);

-- Pathing for Frigid Proto-Drake
SET @NPC := 97991;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,29460,571,1,1,0,0,7138.47,-2166.756,798.66,1.91463,120,0,0,1,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7138.47,-2166.756,798.66,0,0,0,100,0),
(@PATH,2,7137.982,-2206.665,805.7148,0,0,0,100,0),
(@PATH,3,7161.205,-2258.269,804.6854,0,0,0,100,0),
(@PATH,4,7192.208,-2308.688,803.2413,0,0,0,100,0),
(@PATH,5,7234.745,-2344.972,803.0753,0,0,0,100,0),
(@PATH,6,7274.754,-2385.471,791.2989,0,0,0,100,0),
(@PATH,7,7279.244,-2432.098,788.5766,0,0,0,100,0),
(@PATH,8,7287.073,-2487.045,787.2991,0,0,0,100,0),
(@PATH,9,7313.09,-2514.464,787.2991,0,0,0,100,0),
(@PATH,10,7371.793,-2525.992,787.2991,0,0,0,100,0),
(@PATH,11,7408.351,-2485.411,787.2991,0,0,0,100,0),
(@PATH,12,7420.525,-2414.975,787.2991,0,0,0,100,0),
(@PATH,13,7408.521,-2337.311,787.2991,0,0,0,100,0),
(@PATH,14,7349.138,-2289.91,787.2991,0,0,0,100,0),
(@PATH,15,7279.763,-2277.351,787.2991,0,0,0,100,0),
(@PATH,16,7206.917,-2239.987,787.2991,0,0,0,100,0),
(@PATH,17,7179.584,-2203.606,787.2991,0,0,0,100,0),
(@PATH,18,7160.147,-2169.823,787.2991,0,0,0,100,0),
(@PATH,19,7134.891,-2128.46,787.2991,0,0,0,100,0),
(@PATH,20,7122.673,-2069.597,787.2991,0,0,0,100,0),
(@PATH,21,7104.583,-2041.353,787.2991,0,0,0,100,0),
(@PATH,22,7060.176,-2045.798,787.2991,0,0,0,100,0),
(@PATH,23,7021.334,-2089.535,787.2991,0,0,0,100,0),
(@PATH,24,7021.683,-2123.516,787.2991,0,0,0,100,0),
(@PATH,25,7055.512,-2136.21,787.2991,0,0,0,100,0),
(@PATH,26,7096.39,-2139.124,787.2991,0,0,0,100,0),
(@PATH,27,7118.583,-2150.815,787.2991,0,0,0,100,0);

SET @NPC := 97992;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,29460,571,1,1,0,0,7368.505,-2205.943,843.7172,1.91463,120,0,0,1,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7368.505,-2205.943,843.7172,0,0,0,100,0),
(@PATH,2,7368.349,-2206.931,843.7172,0,0,0,100,0),
(@PATH,3,7370.282,-2210.494,847.4096,0,0,0,100,0),
(@PATH,4,7355.707,-2244.806,829.2711,0,0,0,100,0),
(@PATH,5,7331.636,-2263.269,812.4655,0,0,0,100,0),
(@PATH,6,7302.835,-2255.226,790.5214,0,0,0,100,0);

SET @NPC := 98025;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,29460,571,1,1,0,0,7139.471,-2158.159,806.128,1.91463,120,0,0,1,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7139.471,-2158.159,806.128,0,0,0,100,0),
(@PATH,2,7174.096,-2197.912,799.7397,0,0,0,100,0),
(@PATH,3,7207.944,-2233.231,799.7397,0,0,0,100,0),
(@PATH,4,7270.875,-2270.113,799.7397,0,0,0,100,0),
(@PATH,5,7326.976,-2290.712,799.7397,0,0,0,100,0),
(@PATH,6,7398.354,-2307.759,858.0721,0,0,0,100,0),
(@PATH,7,7492.969,-2338.019,913.3103,0,0,0,100,0),
(@PATH,8,7516.403,-2341.424,929.4471,0,0,0,100,0),
(@PATH,9,7533.13,-2350.423,930.8928,0,0,0,100,0),
(@PATH,10,7542.375,-2369.76,924.0596,0,0,0,100,0),
(@PATH,11,7540.795,-2388.042,900.4768,0,0,0,100,0),
(@PATH,12,7520.372,-2426.235,856.811,0,0,0,100,0),
(@PATH,13,7490.571,-2460.841,825.395,0,0,0,100,0),
(@PATH,14,7433.976,-2476.923,806.3961,0,0,0,100,0),
(@PATH,15,7363.505,-2480.186,799.9239,0,0,0,100,0),
(@PATH,16,7322.222,-2455.095,799.9239,0,0,0,100,0),
(@PATH,17,7296.217,-2406.509,799.9239,0,0,0,100,0),
(@PATH,18,7250.124,-2348.116,796.2858,0,0,0,100,0),
(@PATH,19,7199.447,-2308.098,791.8962,0,0,0,100,0),
(@PATH,20,7165.64,-2260.306,794.3141,0,0,0,100,0),
(@PATH,21,7126.358,-2218.408,792.2291,0,0,0,100,0),
(@PATH,22,7101.756,-2200.451,797.7845,0,0,0,100,0),
(@PATH,23,7071.807,-2185.584,808.8121,0,0,0,100,0),
(@PATH,24,7043.711,-2175.546,825.1454,0,0,0,100,0),
(@PATH,25,7016.538,-2153.01,825.1454,0,0,0,100,0),
(@PATH,26,7010.379,-2118.062,825.1454,0,0,0,100,0),
(@PATH,27,7031.11,-2081.328,825.1454,0,0,0,100,0),
(@PATH,28,7067.889,-2058.581,825.1454,0,0,0,100,0),
(@PATH,29,7109.583,-2060.563,825.1454,0,0,0,100,0),
(@PATH,30,7129.145,-2089.288,825.1454,0,0,0,100,0),
(@PATH,31,7133.573,-2119.781,811.7565,0,0,0,100,0);

SET @NPC := 98026;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,29460,571,1,1,0,0,7111.189,-2126.364,809.0059,1.91463,120,0,0,1,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7111.189,-2126.364,809.0059,0,0,0,100,0),
(@PATH,2,7112.182,-2126.484,809.0059,0,0,0,100,0),
(@PATH,3,7148.073,-2168.365,801.1813,0,0,0,100,0),
(@PATH,4,7179.175,-2226.085,785.2094,0,0,0,100,0),
(@PATH,5,7223.947,-2286.013,782.9871,0,0,0,100,0),
(@PATH,6,7299.682,-2304.846,784.2374,0,0,0,100,0),
(@PATH,7,7379.366,-2316.926,796.4037,0,0,0,100,0),
(@PATH,8,7415.913,-2373.976,798.6256,0,0,0,100,0),
(@PATH,9,7412.545,-2436.63,796.9036,0,0,0,100,0),
(@PATH,10,7357.321,-2469.256,801.1813,0,0,0,100,0),
(@PATH,11,7324.498,-2460.21,801.1813,0,0,0,100,0),
(@PATH,12,7299.582,-2416.601,796.1536,0,0,0,100,0),
(@PATH,13,7311.903,-2374.752,787.5981,0,0,0,100,0),
(@PATH,14,7312.228,-2301.718,778.1539,0,0,0,100,0),
(@PATH,15,7277.36,-2261.898,778.1539,0,0,0,100,0),
(@PATH,16,7223.409,-2240.653,778.1539,0,0,0,100,0),
(@PATH,17,7146.638,-2228.195,778.1539,0,0,0,100,0),
(@PATH,18,7063.594,-2217.223,802.7003,0,0,0,100,0),
(@PATH,19,7018.785,-2211.49,814.2276,0,0,0,100,0),
(@PATH,20,6971.935,-2170.058,834.7831,0,0,0,100,0),
(@PATH,21,6970.746,-2108.841,872.616,0,0,0,100,0),
(@PATH,22,6991.211,-2071.003,882.1439,0,0,0,100,0),
(@PATH,23,7035.753,-2048.345,872.0881,0,0,0,100,0),
(@PATH,24,7091.613,-2053.953,852.9218,0,0,0,100,0),
(@PATH,25,7120.529,-2096.423,830.6169,0,0,0,100,0),
(@PATH,26,7139.663,-2146.639,806.1729,0,0,0,100,0);

SET @NPC := 98027;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,29460,571,1,1,0,0,7325.084,-2259.102,789.8701,1.91463,120,0,0,1,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7325.084,-2259.102,789.8701,0,0,0,100,0),
(@PATH,2,7324.438,-2258.339,789.8701,0,0,0,100,0),
(@PATH,3,7303.33,-2256.314,797.6193,0,0,0,100,0),
(@PATH,4,7267.175,-2247.528,794.2031,0,0,0,100,0),
(@PATH,5,7214.491,-2258.535,801.3693,0,0,0,100,0),
(@PATH,6,7172.046,-2253.232,805.3967,0,0,0,100,0),
(@PATH,7,7131.951,-2229.063,811.4247,0,0,0,100,0),
(@PATH,8,7094.743,-2214.779,814.9513,0,0,0,100,0),
(@PATH,9,7037.284,-2220.873,816.9806,0,0,0,100,0),
(@PATH,10,7001.552,-2206.268,815.3693,0,0,0,100,0),
(@PATH,11,6987.444,-2184.004,809.9804,0,0,0,100,0),
(@PATH,12,6978.424,-2132.038,810.9526,0,0,0,100,0),
(@PATH,13,7004.174,-2094.79,805.2302,0,0,0,100,0),
(@PATH,14,7061.313,-2081.083,794.8694,0,0,0,100,0),
(@PATH,15,7106.668,-2099.052,785.4243,0,0,0,100,0),
(@PATH,16,7138.966,-2157.915,783.5634,0,0,0,100,0),
(@PATH,17,7148.676,-2194.204,790.7584,0,0,0,100,0),
(@PATH,18,7161.454,-2233.868,796.2581,0,0,0,100,0),
(@PATH,19,7177.563,-2267.763,796.2305,0,0,0,100,0),
(@PATH,20,7208.712,-2314.157,792.0358,0,0,0,100,0),
(@PATH,21,7273.909,-2345.979,783.6465,0,0,0,100,0),
(@PATH,22,7368.229,-2329.532,782.4529,0,0,0,100,0),
(@PATH,23,7446.557,-2387.249,792.8419,0,0,0,100,0),
(@PATH,24,7464.88,-2459.651,777.7035,0,0,0,100,0),
(@PATH,25,7426.007,-2508.458,777.7035,0,0,0,100,0),
(@PATH,26,7367.409,-2517.811,777.7035,0,0,0,100,0),
(@PATH,27,7315.153,-2476.871,777.7035,0,0,0,100,0),
(@PATH,28,7324.871,-2419.788,787.8976,0,0,0,100,0),
(@PATH,29,7343.577,-2356.954,789.7312,0,0,0,100,0),
(@PATH,30,7355.857,-2295.399,785.1757,0,0,0,100,0),
(@PATH,31,7324.438,-2258.339,789.8701,0,0,0,100,0);

SET @NPC := 97995;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,29460,571,1,1,0,0,7303.549,-2258.753,788.369,1.91463,120,0,0,1,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7303.549,-2258.753,788.369,0,0,0,100,0),
(@PATH,2,7302.752,-2258.148,788.369,0,0,0,100,0),
(@PATH,3,7289.952,-2257.048,791.1975,0,0,0,100,0),
(@PATH,4,7258.658,-2235.294,791.1975,0,0,0,100,0),
(@PATH,5,7210.906,-2223.988,791.1975,0,0,0,100,0),
(@PATH,6,7167.373,-2232.4,791.1975,0,0,0,100,0),
(@PATH,7,7124.27,-2224.081,791.1975,0,0,0,100,0),
(@PATH,8,7086.96,-2192.181,791.1975,0,0,0,100,0),
(@PATH,9,7087.704,-2145.958,791.1975,0,0,0,100,0),
(@PATH,10,7127.069,-2118.094,791.1975,0,0,0,100,0),
(@PATH,11,7164.674,-2135.464,793.8918,0,0,0,100,0),
(@PATH,12,7182.364,-2192.978,791.1975,0,0,0,100,0),
(@PATH,13,7182.774,-2277.733,805.3915,0,0,0,100,0),
(@PATH,14,7229.842,-2333.471,805.3915,0,0,0,100,0),
(@PATH,15,7308.383,-2345.623,805.3915,0,0,0,100,0),
(@PATH,16,7376.758,-2335.746,805.3915,0,0,0,100,0),
(@PATH,17,7427.352,-2382.805,805.3915,0,0,0,100,0),
(@PATH,18,7432.168,-2464.934,805.3915,0,0,0,100,0),
(@PATH,19,7370.238,-2513.568,805.3915,0,0,0,100,0),
(@PATH,20,7321.452,-2503.377,805.3915,0,0,0,100,0),
(@PATH,21,7291.445,-2456.148,800.0583,0,0,0,100,0),
(@PATH,22,7306.158,-2414.508,794.0861,0,0,0,100,0),
(@PATH,23,7331.817,-2357.911,790.9471,0,0,0,100,0),
(@PATH,24,7331.193,-2296.791,790.9471,0,0,0,100,0),
(@PATH,25,7305.381,-2260.717,790.9471,0,0,0,100,0);

SET @NPC := 98028;
SET @PATH := @NPC*10;  
DELETE FROM `creature` WHERE `guid`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@NPC,29460,571,1,1,0,0,7133.43,-2118.791,811.7565,1.91463,120,0,0,1,0,2);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`) VALUES (@NPC,@PATH,50331648);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7133.43,-2118.791,811.7565,0,0,0,100,0),
(@PATH,2,7133.573,-2119.781,811.7565,0,0,0,100,0),
(@PATH,3,7119.039,-2128.233,806.786,0,0,0,100,0),
(@PATH,4,7129.032,-2143.773,806.786,0,0,0,100,0),
(@PATH,5,7131.506,-2163.489,806.786,0,0,0,100,0),
(@PATH,6,7125.905,-2198.75,806.786,0,0,0,100,0),
(@PATH,7,7133.987,-2234.428,806.786,0,0,0,100,0),
(@PATH,8,7170.914,-2282.005,806.786,0,0,0,100,0),
(@PATH,9,7236.963,-2311.655,806.786,0,0,0,100,0),
(@PATH,10,7279.574,-2311.321,806.786,0,0,0,100,0),
(@PATH,11,7320.696,-2339.429,806.786,0,0,0,100,0),
(@PATH,12,7334.366,-2379.159,806.786,0,0,0,100,0),
(@PATH,13,7321.908,-2419.639,819.0636,0,0,0,100,0),
(@PATH,14,7294.696,-2461.332,841.8126,0,0,0,100,0),
(@PATH,15,7277.729,-2494.843,861.1736,0,0,0,100,0),
(@PATH,16,7245.194,-2587.365,911.9794,0,0,0,100,0),
(@PATH,17,7235.221,-2664.447,911.9794,0,0,0,100,0),
(@PATH,18,7267.375,-2723.981,911.9794,0,0,0,100,0),
(@PATH,19,7364.385,-2762.505,956.4234,0,0,0,100,0),
(@PATH,20,7439.538,-2775.097,990.1998,0,0,0,100,0),
(@PATH,21,7538.208,-2706.511,1012.088,0,0,0,100,0),
(@PATH,22,7575.65,-2563.215,985.2554,0,0,0,100,0),
(@PATH,23,7521.32,-2414.249,933.5882,0,0,0,100,0),
(@PATH,24,7438.214,-2348.566,884.2285,0,0,0,100,0),
(@PATH,25,7349.768,-2296.647,830.8118,0,0,0,100,0),
(@PATH,26,7288.613,-2264.192,802.2007,0,0,0,100,0),
(@PATH,27,7231.5,-2246.911,802.2007,0,0,0,100,0),
(@PATH,28,7160.201,-2264.728,829.4783,0,0,0,100,0),
(@PATH,29,7110.628,-2294.354,859.3112,0,0,0,100,0),
(@PATH,30,7061.597,-2313.25,865.6166,0,0,0,100,0),
(@PATH,31,7008.405,-2309.793,865.6166,0,0,0,100,0),
(@PATH,32,6977.473,-2277.743,865.6166,0,0,0,100,0),
(@PATH,33,6976.358,-2204.402,846.9778,0,0,0,100,0),
(@PATH,34,7022.063,-2142,828.7004,0,0,0,100,0),
(@PATH,35,7070.062,-2121.369,822.228,0,0,0,100,0),
(@PATH,36,7112.182,-2126.484,809.0059,0,0,0,100,0);
-- Remove dupe spawn from transport table
DELETE FROM `creature_transport` WHERE `guid`=35 AND `npc_entry`=30755;
SET @YANNI := 25459;
SET @CARPET := 25460;
SET @Q_CarpetRide := 11636;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@YANNI,@CARPET) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@CARPET*100,@CARPET*100+1) AND `source_type`=9;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`)VALUES
(@YANNI,0,0,0,62,0,100,0,9162,0,0,0,11,45600,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Yanni - Cast Call of the Carpet on player'),
(@YANNI,0,1,0,62,0,100,0,9162,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Yanni - On Gossip option - Close gossip'),

(@CARPET,0,0,0,25,0,100,0,0,0,0,0,80,@CARPET*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Amazing Carpet - Call actionlist 2546000 on spawn'),
(@CARPET,0,1,0,40,0,100,0,14,0,0,0,80,@CARPET*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Amazing Carpet - On WP reach - Call actionlist 2546001'),

(@CARPET*100,9,0,0,0,0,100,0,1000,1000,0,0,11,45603,0,0,0,0,0,23,0,0,0,0,0,0,0, 'Amazing Carpet - Cast Ride Carpet on summoner'),
(@CARPET*100,9,1,0,0,0,100,0,100,100,0,0,53,0,@CARPET,0,0,0,0,1,0,0,0,0,0,0,0, 'Amazing Carpet - Load waypath'),

(@CARPET*100+1,9,0,0,0,0,100,0,0,0,0,0,15,@Q_CarpetRide,0,0,0,0,0,23,0,0,0,0,0,0,0, 'Amazing Carpet - Give quest credit'),
(@CARPET*100+1,9,1,0,0,0,100,0,500,500,0,0,28,45602,0,0,0,0,0,23,0,0,0,0,0,0,0, 'Amazing Carpet - Remove aura 45602'),
(@CARPET*100+1,9,2,0,0,0,100,0,100,100,0,0,28,46598,0,0,0,0,0,23,0,0,0,0,0,0,0, 'Amazing Carpet - Remove aura 46598'),
(@CARPET*100+1,9,3,0,0,0,100,0,200,200,0,0,41,200,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Amazing Carpet - Despawn');

DELETE FROM `waypoints` WHERE `entry`=@CARPET;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@CARPET,1,2751.96,6133.514,214.3789, 'Start WP'),
(@CARPET,2,2728.81,6146.472,213.5733, ''),
(@CARPET,3,2634.248,6188.829,185.9068, ''),
(@CARPET,4,2597.958,6255.91,159.7123, ''),
(@CARPET,5,2538.717,6307.643,138.9901, ''),
(@CARPET,6,2393.912,6321.946,85.79566, ''),
(@CARPET,7,2420.326,6461.604,89.3512, ''),
(@CARPET,8,2439.194,6494.39,84.93455, ''),
(@CARPET,9,2496.371,6496.766,78.76788, ''),
(@CARPET,10,2567.008,6550.509,79.90676, ''),
(@CARPET,11,2652.553,6572.071,58.54562, ''),
(@CARPET,12,2725.122,6642.299,41.57339, ''),
(@CARPET,13,2773.236,6694.341,25.49007, ''),
(@CARPET,14,2797.658,6718.523,9.212306, 'Run SmartAI script 2546001');

DELETE FROM `creature_template_addon` WHERE `entry` IN (@CARPET,@YANNI);
INSERT INTO `creature_template_addon` (`entry`,`bytes2`,`auras`) VALUES
(@CARPET,257, '61307'),
(@YANNI,257,NULL);

-- Update gossip_menu to proper entry from sniff (delete wrong one 21233)
UPDATE `creature_template` SET `gossip_menu_id`=9162,`AiName`= 'SmartAI' WHERE `entry`=@YANNI;
UPDATE `creature_template` SET `exp`=2,`minlevel`=72,`maxlevel`=72,`unit_flags`=`unit_flags`|520,`speed_run`=1.42857,`VehicleId`=317,`AiName`='SmartAI',`InhabitType`=5 WHERE `entry`=@CARPET;

UPDATE `creature_model_info` SET `bounding_radius`=0.31,`combat_reach`=1,`gender`=2 WHERE `modelid`=28082; -- Amazing Flying Carpet

DELETE FROM `gossip_menu` WHERE `entry` IN (21233,9162);
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(9162,12417);

UPDATE `quest_template` SET `SpecialFlags`=`SpecialFlags`|2 WHERE `Id`=@Q_CarpetRide;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=9162;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=9162;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`Comment`) VALUES
(15,9162,0,0,9,@Q_CarpetRide,0,0,0,'Show gossip option 9162 if player has quest Carpet Ride');

DELETE FROM `spell_target_position` WHERE `id`=45601;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(45601,571,2753.64,6131.41,210.4463,2.892622);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=45602;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13,1,45602,0,0,31,0,3,@CARPET,0,0,0, '', 'Ride Carpet - Target Amazing Flying Carpet');

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=@CARPET;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(@CARPET,46598,1,0);
-- Add more Domesticated Felboar Spawns
SET @GUID := 43456;
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID AND @GUID+11;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@GUID,21195,530,1,1,0,0,-2547.195,1426.521,65.57381,1.465101,300,5,0,1,0,1),
(@GUID+1,21195,530,1,1,0,0,-2585.524,1448.067,53.78493,2.973133,300,5,0,1,0,1),
(@GUID+2,21195,530,1,1,0,0,-2513.349,1387.699,66.09725,4.945046,300,5,0,1,0,1),
(@GUID+3,21195,530,1,1,0,0,-2629.757,1453.611,47.29396,4.210276,300,5,0,1,0,1),
(@GUID+4,21195,530,1,1,0,0,-2582.189,1378.531,82.12544,6.054177,300,5,0,1,0,1),
(@GUID+5,21195,530,1,1,0,0,-2478.125,1412.92,25.51498,1.570796,300,5,0,1,0,1),
(@GUID+6,21195,530,1,1,0,0,-2543.231,1349.134,80.78722,5.94909,300,5,0,1,0,1),
(@GUID+7,21195,530,1,1,0,0,-2646.627,1379.277,87.30627,5.863042,300,5,0,1,0,1),
(@GUID+8,21195,530,1,1,0,0,-2611.153,1345.497,84.32706,2.073398,300,5,0,1,0,1),
(@GUID+9,21195,530,1,1,0,0,-2518.199,1318.885,70.41351,1.823595,300,5,0,1,0,1),
(@GUID+10,21195,530,1,1,0,0,-2597.69,1311.426,80.75146,3.249409,300,5,0,1,0,1),
(@GUID+11,21195,530,1,1,0,0,-2545.57,1278.59,82.01826,4.833836,300,5,0,1,0,1);
-- Misc db updates
DELETE FROM `creature_template_addon` WHERE `entry`=30476;
INSERT INTO `creature_template_addon` (`entry`,`auras`) VALUES (30476,'56852');
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|128 WHERE `entry` IN (30476,30599,30640,32193,30343);
-- fix Sholazar Tickbird InhabitType
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=28093;
-- OfferRewardText
UPDATE `quest_template` SET `OfferRewardText`='Ah yes, the delivery of herbs from Shadowglen.  It is a shame Porthannius could not bring it himself, for we have much to discuss, he and I.  But I am glad to get the herbs nonetheless, and I am glad you came.$B$BWhile you are here, please, rest yourself.  Heroes must keep their strength and spirits high, and must find rest and solace whenever they may.  For to neglect one''s peace of body and mind is a sure path to failure.$B$BSo... rest.' WHERE `Id`=2159; -- Dolanaar Delivery
UPDATE `quest_template` SET `OfferRewardText`='You saved my life up there, buddy.  Nice flying!' WHERE `Id`=12671; -- Reconnaissance Flight
UPDATE `quest_template` SET `OfferRewardText`='Wow...  S.T.O.U.T. didn''t break... Hmm... Who would have guessed?$b$bI mean, hey, you did it!  Your aim is true, or at least true enough to help guard the camp.  I think you''re ready now to take on the Dark Irons if they show up again.' WHERE `Id`=12191; -- Chug and Chuck!
UPDATE `quest_template` SET `OfferRewardText`='Not bad for a new overseer.  I''ve another task for you if you''re feeling brave today.' WHERE `Id`=12906; -- Discipline
UPDATE `quest_template` SET `OfferRewardText`='If I had any reservations regarding your commitment when you first arrived, I no longer have any.  With just a little more effort you could be a permanent member of my operation.' WHERE `Id`=12907; -- Examples to be Made
UPDATE `quest_template` SET `OfferRewardText`='I knew you''d be back!  Get me out of these shackles and I''ll help you find the goblin.' WHERE `Id`=12908; -- A Certain Prisoner
UPDATE `quest_template` SET `OfferRewardText`='You''re here -- good.  I think I know where your goblin is.' WHERE `Id`=12921; -- A Change of Scenery
UPDATE `quest_template` SET `OfferRewardText`='Well done, young one.  It looks like our deal has been satisfied on both our ends.' WHERE `Id`=12969; -- Is That Your Goblin?
UPDATE `quest_template` SET `OfferRewardText`='It''s settled then.  You will compete in the Hyldsmeet and with my help you''ll restore great Thorim to his rightful place.' WHERE `Id`=12970; -- The Hyldsmeet
UPDATE `quest_template` SET `OfferRewardText`='Ah, the furs I was expecting. Thank you.$B$BThese came faster than I had expected. They will make good blankets for anyone who wishes to stay here.$B$BPlease feel free to stay as long as you like. My inn is always open and all of our people are welcome here. And don''t underestimate a good night''s rest, it can make a great difference while you''re out traveling.' WHERE `Id`=1656; -- A Task Unfinished
UPDATE `quest_template` SET `OfferRewardText`='Ah, $n! I didn''t think you''d have much trouble finding the place, my directions are excellent, you know...$b$bLet me just finish up my report then.$b$b<He brings out some paper and scribbles on it momentarily.>$b$bThere! Well, haha, now this certainly is funny... I don''t suppose, $n, that you would mind doing one last favor for me?' WHERE `Id`=287; -- Frostmane Hold
UPDATE `quest_template` SET `OfferRewardText`='<Thassarian takes the crystal shards from you and speaks in a quiet voice.>$B$BI remember these...$B$BLesser men would easily crumble beneath their assault. You have done well in removing their threat.' WHERE `Id`=13339; -- Shatter the Shards
UPDATE `quest_template` SET `OfferRewardText`='You did it!  Our boys are back!' WHERE `Id`=12843; -- They Took Our Men!
UPDATE `quest_template` SET `OfferRewardText`='You''re definitely not with the Hyldnir... so what are you here for?  Ah... you must be looking for the new prisoner!' WHERE `Id`=12846; -- Leave No Goblin Behind
UPDATE `quest_template` SET `OfferRewardText`='I wasn''t sure you were coming back.  I dread to think what will happen to me if I stay here for much longer.' WHERE `Id`=12841; -- The Crone's Bargain
UPDATE `quest_template` SET `OfferRewardText`='I was expecting a replacement for one of my overseers.  It''s about time you showed up.$B$BLet''s put you to work.' WHERE `Id`=12905; -- Mildred the Cruel
UPDATE `quest_template` SET `OfferRewardText`='Dahlia was taken by the Scourge? This is a sad day for all of us.$B$BI will look to finding a new keeper once the shrine is retaken. Thank you for your efforts... the Ruby Dragonshrine is a sacred place to us, and the sacrifices your kind have made will not be easily forgotten.$B$BIt is good to know there are still heroes such as you - I will call upon you one day. Until that day comes, may your adventures be fruitful.' WHERE `Id`=12419; -- The Fate of the Ruby Dragonshrine
UPDATE `quest_template` SET `OfferRewardText`='<Another wave of euphoria, mixed with some pain, crashes through your mind as you approach the creature.>$B$BGood... good! So that you know I am being fair, I will first give you your reward as promised.$B$BAnd then you will willingly hand me the key.' WHERE `Id`=13308; -- Mind Tricks
UPDATE `quest_template` SET `OfferRewardText`='They''re being driven insane? Voices in their heads?$B$BVoices in your head?!$B$BI want you to clear your mind of the taint that has crept into that place, $g boy : girl;.$B$BWe''ll try to get the remainder of them out of there again tomorrow when you''ve had a chance to rest.' WHERE `Id`=13300; -- Slaves to Saronite
UPDATE `quest_template` SET `OfferRewardText`='Well done. Training against the other valiants is one of the best ways to prepare yourself for tournament competition. I know you''ll make Stormwind proud, $N.' WHERE `Id`=13665; -- The Grand Melee
UPDATE `quest_template` SET `OfferRewardText`='Well done, $N!  You demonstrated uncanny courage on the battlefield.  Our war against the Troggs will be won with efforts such as yours.  You have served King Magni well.$b$bIf you fancy yourself well-suited for this kind of adventuring, I suggest you speak with Mountaineer Gravelgaw.  The Captain has him assigned to a rough patrol that I am sure he can use some help with.  Check with Gravelgaw just inside the tower.' WHERE `Id`=224; -- In Defense of the King's Lands
UPDATE `quest_template` SET `OfferRewardText`='I am quite impressed, $N.  You have done the Dwarven race a great favor by defending our lands.  King Magni Bronzebeard himself would be proud!' WHERE `Id`=267; -- The Trogg Threat
UPDATE `quest_template` SET `OfferRewardText`='Hey, that wasn''t too bad... are you sure you''re not a dwarf?$b$bSo there''s plenty more racing to be had and it''s not just from me.  All over the Brewfest grounds you''ll find people in need of a decent ram racer.  So go and make yourself useful.$b$bOh and don''t forget, these rams were legally obtained.  I just want to make sure we''re clear.' WHERE `Id`=11409; -- Now This is Ram Racing... Almost.
UPDATE `quest_template` SET `OfferRewardText`='You are a kind and compassionate $r, friend.' WHERE `Id`=10804; -- Kindness
UPDATE `quest_template` SET `OfferRewardText`='My children have told me of your heroic deeds, $r. There is more that you can do.' WHERE `Id`=10811; -- Seek Out Neltharaku
UPDATE `quest_template` SET `OfferRewardText`='I am free! You have saved us, $N!' WHERE `Id`=10872; -- Zuluhed the Whacked
UPDATE `quest_template` SET `OfferRewardText`='You have proven yourself as an ally of the Netherwing. My mother is free and my brothers and sisters are saved!$B$BPerhaps someday, we will call for you again. When that day comes, know that you will be welcomed with open arms - a $g brother:sister; to the Netherwing Dragonflight.' WHERE `Id`=10871; -- Ally of the Netherwing
UPDATE `quest_template` SET `OfferRewardText`='You''ve done it, $N.  You''ve bested some of the fiercest fighters the Hyldnir race has to offer.' WHERE `Id`=12971; -- Taking on All Challengers
UPDATE `quest_template` SET `OfferRewardText`='Think we''ll give you your own bear just like that?  You''ll have to prove yourself before you get anything from us.$B$BDo not think too highly of yourself just because you bested a few challengers in the Hyldsmeet.' WHERE `Id`=12972; -- You'll Need a Bear
UPDATE `quest_template` SET `OfferRewardText`='You have shown yourself a capable combatant, $N and you will serve as an example to the rest of the aspirants who clamor to compete on behalf of the Alliance.' WHERE `Id`=13671; -- Training In The Field
UPDATE `quest_template` SET `OfferRewardText`='<Chief Rageclaw cries.>$B$BHad Ragemane since pup. Sad day for Rageclaw. First troll attack Rageclaw, then troll make Ragemane bad. Rageclaw never trade with troll again!' WHERE `Id`=12857; -- Wanted: Ragemane's Flipper
UPDATE `quest_template` SET `OfferRewardText`='You place the egg... distress beacon... inside the chicken... homing robot.$B$BHums and whirs are heard from inside the robot as it struggles to stand up.  After the robot comes to life, Oglethorpe''s voice is heard once more, but now from inside the robot:$B$B\"OOX-17/TN is working at least, but it needs major repairs!  It is much too heavy for you to carry it... but I think I have an idea.  Are you up for watching over it some more?\"' WHERE `Id`=351; -- Find OOX-17/TN!
UPDATE `quest_template` SET `OfferRewardText`='Excellent - the more water pouches we are able to reclaim, the further away from disaster we''ll all be!  Keep ''em coming, and I will be sure to reward you for every five water pouches you bring me.' WHERE `Id`=1707; -- Water Pouch Bounty
UPDATE `quest_template` SET `OfferRewardText`='Now that''s what I call efficiency!  You''ve helped thin out the nomad''s numbers enough now that we can start to think about how we can win back those water wells.$B$BThe Gadgetzan Water Company thanks you for your help, but we''re far from done in dealing with those foul nomads.  Listen close - here''s what we need next...' WHERE `Id`=1690; -- Wastewander Justice
UPDATE `quest_template` SET `OfferRewardText`='Finally - justice is served!  You have struck a mighty blow against those vile nomads!  With Scorpidsting''s demise, this might be just the thing to finally push those squatters off of Gadgetzan''s water wells!$B$BBy the authority of the Gadgetzan Water Company, I gladly award you with this bounty.  You''ve done a great service for us all.' WHERE `Id`=2781; -- WANTED: Caliph Scorpidsting
UPDATE `quest_template` SET `OfferRewardText`='$N! You are the $g man:woman;!!!$B$BI''m sure that the Cartel will ease up on me now that you''ve dealt with those Southsea scum. Let''s see, what can I give you as a reward? How about a little coin and you choose from one of these for your trouble?' WHERE `Id`=8366; -- Southsea Shakedown
UPDATE `quest_template` SET `OfferRewardText`='Ah, Andre''s head.  So I guess he''ll make his trial after all!$B$BMuch appreciated, $N.  Now if you''ll just sign here, I can issue you payment for services rendered.$B$BDon''t worry about the small print.  It''s harmless, and... I don''t think there''s a magnifying glass small enough to read it anyway.' WHERE `Id`=2875; -- WANTED: Andre Firebeard
UPDATE `quest_template` SET `OfferRewardText`='Great, thanks for the shipment!  Now MacKinley and I can finally settle our wager.' WHERE `Id`=2873; -- Stoley's Shipment
UPDATE `quest_template` SET `OfferRewardText`='You have my sincere thanks for your efforts, $N. Though much remains to be done, it gladdens me to know we have helped some find their long-deserved rest.' WHERE `Id`=10047; -- The Path of Glory
UPDATE `quest_template` SET `OfferRewardText`='Well, I must say, I am impressed, $N. I didn''t think you had the mettle for this mission. Well done. Well done, indeed. 
' WHERE `Id`=10394; -- Disruption - Forge Camp: Mageddon
UPDATE `quest_template` SET `OfferRewardText`='It worked!  You got the essence!  Well done, $N!  Well done!$B$BThis essence will be invaluable in my research.  I hope to one day learn how to capture living dragon whelps, or perhaps capture their eggs.  If I could find a way to do that, then I would be the envy of dragon scholars around the world!$B$BMy employer would also be happy, and as I said before, he''s someone you want to keep happy...' WHERE `Id`=4726; -- Broodling Essence
UPDATE `quest_template` SET `OfferRewardText`='There is no doubt, this is raw saronite. We''ve seen weapons made from it in the hands of the Lich King''s chosen before, but this is the first time it''s been used to arm anything else. The scale of that mining operation must be huge.' WHERE `Id`=13138; -- I'm Smelting... Smelting!
UPDATE `quest_template` SET `OfferRewardText`='<Crusader Olakin Sainrith listens solemnly to your report.>$B$BIt is not the burial they deserved, but it is better than nothing, and better for those who yet live. Thank you, $N.' WHERE `Id`=13211; -- By Fire Be Purged
UPDATE `quest_template` SET `OfferRewardText`='<Dakrider Arly throws her head back and laughs darkly.>$B$BA fitting end for the ''good'' doctor, wouldn''t you say?' WHERE `Id`=13152; -- A Visit to the Doctor
UPDATE `quest_template` SET `OfferRewardText`='You have proven yourself worthy of the title of champion, $N. You will compete at the tournament''s highest level on behalf of Stormwind, riding in the grand melee with your weapon at the ready and our mighty pennant at your back.' WHERE `Id`=13699; -- The Valiant's Challenge
UPDATE `quest_template` SET `OfferRewardText`='I welcome you as a champion of the tournament, $N. As a champion, you will be able to compete for the grand championship of the tournament. You may also choose to become a valiant with another Alliance city''s delegation and in time, a champion for that city as well.$B$BAll champions must have the assistance of a squire, $N, and you are no exception. Allow me to appoint one of ours to accompany you in battle. He will proudly carry the banner of any city that has named you a champion.' WHERE `Id`=13702; -- A Champion Rises
UPDATE `quest_template` SET `OfferRewardText`='Ah yes, these manes will work great!  You show a lot of grit, $C - I wager we''ll see great things from you.' WHERE `Id`=313; -- The Grizzled Den
UPDATE `quest_template` SET `OfferRewardText`='By Magni''s beard, you sure did a lot of hunting!!  Thank you, $N.' WHERE `Id`=317; -- Stocking Jetsteam
UPDATE `quest_template` SET `OfferRewardText`='Bellowfiz needs some of my Evershine?  Hm...all right.' WHERE `Id`=318; -- Evershine
UPDATE `quest_template` SET `OfferRewardText`='Thank you, $N.  It''ll be nice to work our crafts without hearing so many growls and snorts outside the village.' WHERE `Id`=319; -- A Favor for Evershine
UPDATE `quest_template` SET `OfferRewardText`='For me?  You''re a true hero, $N!' WHERE `Id`=308; -- Distracting Jarven
UPDATE `quest_template` SET `OfferRewardText`='Yes, this will do just fine.  I think I''ll open a bottle right now and have a taste...' WHERE `Id`=320; -- Return to Bellowfiz
UPDATE `quest_template` SET `OfferRewardText`='Not bad, $N!  Did you have a hard time getting past their guard?$B$BNo matter - many thanks, and if you''re ever in need of stout with a kick, don''t forget the Barleybrews!' WHERE `Id`=311; -- Return to Marleth
UPDATE `quest_template` SET `OfferRewardText`='Great!  I can''t wait to use these in some of my recipes.  There''s one in particular I think it''ll work great in...' WHERE `Id`=315; -- The Perfect Stout
UPDATE `quest_template` SET `OfferRewardText`='These Gyromechanic Gears and Restabilization Cogs are in perfect accordance with Ozzie''s schematics for the Recombobulation Device.  Once I add some hydrolubricant to the inner combustion pistons, adjust the crank-o-ratchet and increase of the viscosity of the electrogum gel, the gnomish race will be as good as new.' WHERE `Id`=412; -- Operation Recombobulation
UPDATE `quest_template` SET `OfferRewardText`='<Mountaineer Barleybrew tastes the Shimmer Stout...>$B$BOh.  Whoa!  This stuff really puts a shine in your eyes.  I feel like I can see in the dark!' WHERE `Id`=413; -- Shimmer Stout
UPDATE `quest_template` SET `OfferRewardText`='The horns of war will soon echo across this land, waking the dead and calling forth the Scourge war machine. Woe unto those that would stand in our way!$B$BYou and your brethren will lead the charge, $N. When next I look upon the Scarlet lands, my sight will be obscured by the legions of Acherus. The march upon New Avalon begins now.' WHERE `Id`=12657; -- The Might Of The Scourge
UPDATE `quest_template` SET `OfferRewardText`='The war has begun, death knight! I shall place you upon my finest gryphon and deliver you to Death''s Breach. Chaos, death, destruction! You will herald in all of this and more!
' WHERE `Id`=12850; -- Report To Scourge Commander Thalanor
UPDATE `quest_template` SET `OfferRewardText`='Do you smell it?$B$B<Valanar sniffs at the air.>$B$BFresh meat... The scent of Scarlet Crusader wafts through the air.$B$B<Valanar salivates.>$B$BApologies, death knight, I''m sure you''re not interested in my choice of fine cuisine. You are here to work! To lead the charge! Yes... I know. The Lich King has told me all that I need to know about you, $N.$B$BThe time for bloodshed is now.
' WHERE `Id`=12670; -- The Scarlet Harvest
UPDATE `quest_template` SET `OfferRewardText`='Do you feel it, $N? That sensation is raw power coursing through your body. Such a thing cannot exist for mortals.$B$BThe front lines are now dismantled. The geist will finish the job and prepare the grounds for Razuvious. We turn our attention now to more tactical targets.
' WHERE `Id`=12678; -- If Chaos Drives, Let Suffering Hold The Reins
UPDATE `quest_template` SET `OfferRewardText`='To the victor goes the glory, death knight! Well done! The Lich King looks favorably upon you on this day.
' WHERE `Id`=12733; -- Death's Challenge
UPDATE `quest_template` SET `OfferRewardText`='Glad to see the Reclaimers aren''t in short supply of work, or adventurers willing to help out.$B$BI''m Kreldig, $N. You''ve made a smart move helpin'' out the Reclaimers. Everyone needs something these days: they''ve lost a family heirloom, a magic item, a loved one. You never can tell. But with the Reclaimers around, there''s no reason, for the right price, everyone can''t find what they''ve lost. ' WHERE `Id`=1453; -- Reclaimers' Business in Desolace
UPDATE `quest_template` SET `OfferRewardText`='I have entered your name in the rolls, $N. As an aspirant you will train with others who wish to compete in the tournament and hone your mounted combat skills. Once you have proven yourself, you will be allowed to enter the lowest rank of competition on behalf of your capital city.' WHERE `Id`=13667; -- The Argent Tournament
UPDATE `quest_template` SET `OfferRewardText`='Commit Valis''s lesson to memory, $N. It will mean the difference between winning and losing your mounted combat matches.' WHERE `Id`=13835; -- Mastery Of The Shield-Breaker
UPDATE `quest_template` SET `OfferRewardText`='So you''re saying this knight''s story is a sham? Most suspicious. Dishonorable at the least, and murderous at the worst. Still, we can''t confront him until we know for certain whether he was involved in these murders.$B$BDo nothing to arouse his suspicions, $N. Discretion will serve us well as we continue to investigate.' WHERE `Id`=13633; -- The Black Knight of Westfall?
UPDATE `quest_template` SET `OfferRewardText`='So there is some truth to those old tales? It seems they did not lie about the quality of the blade. Well done, $N. The champion who wields it will be a lucky man, indeed.' WHERE `Id`=13666; -- A Blade Fit For A Champion
UPDATE `quest_template` SET `OfferRewardText`='So you say Lorien Sunblaze was done in by poison and Sir Wendell was burnt alive? Dreadful ways to die, both of them. Only Conall was killed by cold steel, and from your description, it was a coward''s strike, not honorable combat that laid him in his grave.$B$BAll three sparred with and were scheduled to fight the Black Knight. This cannot be a coincidence. Now, we must find a way to prove it was the Black Knight''s work.' WHERE `Id`=13643; -- The Stories Dead Men Tell
UPDATE `quest_template` SET `OfferRewardText`='<Crusader Rhydalla examines the bag''s contents with a look of disgust on her face.>$B$BIt''s all here, $N: the poison that killed Lorien, a collection of knives, torches, and oil. No man has cause to possess these things here and no squire would do so without orders from his knightly master. We''ve found our murderer, $N, but who is he working for?' WHERE `Id`=13654; -- There's Something About the Squire
UPDATE `quest_template` SET `OfferRewardText`='<Crusader Rhydalla''s face pales as she reads the orders.>$B$BThis can only mean one thing, $N. The Black Knight is a member of the Cult of the Damned and has been sent by Arthas to disrupt the tournament!$B$BThe Black Knight has proven himself a fearsome combatant, and you will need to be every bit as good if you wish to face him. When you are a champion, return to me and we''ll find a way to ensure his defeat.' WHERE `Id`=13663; -- The Black Knight's Orders
UPDATE `quest_template` SET `OfferRewardText`='Grrr. I knew it! He''s sooooo over-protective! This is just embarassing.$B$BNot that I''m not happy to see you... I am! We all are. We can use your help!' WHERE `Id`=11175; -- My Daughter
UPDATE `quest_template` SET `OfferRewardText`='Good job, though I think ye might be wanting a refresher course in basic piloting.$B$BWell, no matter, one warm body''s as good as another. Here''s yer haul for the day. ' WHERE `Id`=11390; -- I've Got a Flying Machine!
UPDATE `quest_template` SET `OfferRewardText`='<The explorer beams a smile as you tell him who sent you. He continues in hushed tones.>$B$BIrena was concerned about me?  She gets that from her father you know.' WHERE `Id`=11393; -- Where is Explorer Jaren?
UPDATE `quest_template` SET `OfferRewardText`='Without Thredd to lead them, hopefully the riots will be more controllable. We shall see.$B$BI must say, after a half hour, I hardly expected you to come out, but it seems I misjudged you.$B$BI''d guess, then, that you didn''t get much useful information out of him? But I know a thing or two that might be of interest to you about Thredd''s activities.' WHERE `Id`=391; -- The Stockade Riots
UPDATE `quest_template` SET `OfferRewardText`='So these bandanas -- filthy tokens of corruption -- are what my Mac had to die for?  Such a waste.  Such a tragic sacrifice. $b$bBut alas, I cannot return to the past.  Just know, $N, that you have brought my family justice through your deeds.' WHERE `Id`=388; -- The Color of Blood
UPDATE `quest_template` SET `OfferRewardText`='That''s right.  I have a task that I can''t do while I''m guarding.  In fact, it''ll take you far from Loch Modan.$B$BYour perfect chance for adventure!' WHERE `Id`=1339; -- Mountaineer Stormpike's Task
UPDATE `quest_template` SET `OfferRewardText`='You accomplished your mission well, $r.  The King himself would be proud.$b$bThe reinforcements promised to us never showed, however.  Apparently the Alliance front is a sea of crimson from the blood of our fallen brethren.  The news of the losses leaves a bitter taste in one''s mouth.  But we must not let their deaths go for naught.  We must rally in these grim times and bring glory back to the Alliance.$b$bSpeak with Mountaineer Wallbang for reassignment.  You''re needed now more than ever.' WHERE `Id`=237; -- In Defense of the King's Lands
UPDATE `quest_template` SET `OfferRewardText`='Congratulations are in order, $N. You have bested your challenger and earned the right to advance to the rank of valiant.' WHERE `Id`=13679; -- The Aspirant's Challenge
UPDATE `quest_template` SET `OfferRewardText`='Welcome aboard then, Valiant $N. The Stormwind delegation is proud to count you among its members.' WHERE `Id`=13684; -- A Valiant Of Stormwind
UPDATE `quest_template` SET `OfferRewardText`='My nephew said you aided him with his research in Dustwallow, and that you helped his associate out of a tight spot.  Well, we Sterns stick together and we don''t ignore our friends!$B$BSo wash your hands, $N, because we''re about to throw a party in your honor!' WHERE `Id`=1271; -- Feast at the Blue Recluse
UPDATE `quest_template` SET `OfferRewardText`='Thanks for helping out our miner back there, $n! I should be able to put together an antidote no problem.$B$BIf you stumble into Tore again, tell her that she''s a jerk for me, will ya?' WHERE `Id`=12832; -- Bitter Departure
UPDATE `quest_template` SET `OfferRewardText`='And it''s already well-done! I outdo myself sometimes.$B$BThanks much, friend!' WHERE `Id`=12828; -- Ample Inspiration
UPDATE `quest_template` SET `OfferRewardText`='Ha ha! Good to see you''re up for some dirty work.$B$BMuch appreciated there, pal!' WHERE `Id`=12829; -- Moving In
UPDATE `quest_template` SET `OfferRewardText`='Woo! That''s a ripe stench right there! You had to get hands-on with some of those snobolds, didn''t ya?$B$BI do appreciate it though!' WHERE `Id`=12830; -- Ore Repossession
UPDATE `quest_template` SET `OfferRewardText`='With the death of the Black Knight, the tournament may once again serve its purpose. The champions of the Horde and Alliance may demonstrate their skill at arms and train for the day when Arthas and his minions will no longer threaten us.$B$BYou have the thanks of the Argent Crusade, $N, and that of all who have answered our call.' WHERE `Id`=13664; -- The Black Knight's Fall
UPDATE `quest_template` SET `OfferRewardText`='<Crusader Rhydalla frowns.>$B$BDo you think they''ve been planning this? I suppose it doesn''t matter, but I don''t like the implication that we''ve been playing into their hands. Whatever is going on, we have to stop it.' WHERE `Id`=14016; -- The Black Knight's Curse
UPDATE `quest_template` SET `OfferRewardText`='The doctor will not have time to complete his work, but his plan is already in motion. From what you''ve reported, the Lich King''s servants have reanimated and empowered the Black Knight and there''s no telling what the knight''s master has in mind. You have done well in uncovering this plot. I will tell High Crusader Adelard of your findings and together, we will alert the tournament''s participants.' WHERE `Id`=14017; -- The Black Knight's Fate
UPDATE `quest_template` SET `OfferRewardText`='You are a true champion, $N, both inside the ring and on the field. We must all be vigilant against the Scourge and you are a great example to our brethren and your own people.' WHERE `Id`=13789; -- Taking Battle To The Enemy
UPDATE `quest_template` SET `OfferRewardText`='Well done. Training against the other champions is one of the best ways to prepare yourself for tournament competition. I know you''ll make the Alliance proud, $N.' WHERE `Id`=13790; -- Among the Champions
UPDATE `quest_template` SET `OfferRewardText`='It seems things are worse than we initially thought.  You still made a valiant effort and saved many of The Wavecrest''s crew''s lives.' WHERE `Id`=14152; -- Rescue at Sea
UPDATE `quest_template` SET `OfferRewardText`='Oh, hello there $N.  Marcia said you''d be coming by with that poor man''s missing arm.$b$bShe also gave me this bag to give you as a reward.  It smells horrible, and I''m anxious to make the trade if you don''t mind.' WHERE `Id`=13836; -- Disarmed!
UPDATE `quest_template` SET `OfferRewardText`='Just what I wanted to hear!  A victory in Lake Wintergrasp - even a temporary one - is crucial to our overall strategy against the Horde.' WHERE `Id`=13181; -- Victory in Wintergrasp
UPDATE `quest_template` SET `OfferRewardText`='How many of them could there possibly be? We''ve killed enough to fill ten graveyards and still they come. The situation looks grim, friend.' WHERE `Id`=13039; -- Defending The Vanguard
UPDATE `quest_template` SET `OfferRewardText`='Thank you, $N. I will begin the tests on these samples immediately. It is my hope that a cure will be found soon.' WHERE `Id`=13040; -- Curing The Incurable
UPDATE `quest_template` SET `OfferRewardText`='There are still many Argent Crusade soldiers out on that field and in Scourgeholme, $N. While your help is appreciated, there is still much left to be done.' WHERE `Id`=13008; -- Scourge Tactics
UPDATE `quest_template` SET `OfferRewardText`='<Penumbrius nods.>$B$BMy kin will help. Together we will battle the Lich King and his undead legions.
' WHERE `Id`=13044; -- If There Are Survivors...
UPDATE `quest_template` SET `OfferRewardText`='Arthas... He strikes recklessly - without care or caution. We have caught him off guard.$B$B<Highlord Tirion Fordring pauses, lost in thought for a moment.>$B$BWe will bolster our defenses and weather the storm.$B$BHow good are you with a cannon, $N?' WHERE `Id`=13045; -- Into The Wild Green Yonder
UPDATE `quest_template` SET `OfferRewardText`='My knowledge of Scourge tactics is without equal.$B$B<The Ebon Watcher peers at you.>$B$BBefore the battle for Light''s Hope Chapel, my knights and I served under the Lich King - his icy grasp controlling our every action. The light of dawn changed everything...' WHERE `Id`=13104; -- Once More Unto The Breach, Hero
UPDATE `quest_template` SET `OfferRewardText`='You have done well, $N. Keeping their numbers down will give the Argent Crusade the time that they need to set a foundation.' WHERE `Id`=13118; -- The Purging Of Scourgeholme
UPDATE `quest_template` SET `OfferRewardText`='A hard fought victory, $N! The lieutenants will be replaced, but at least for today the air about Scourgeholme stands still.' WHERE `Id`=13125; -- The Air Stands Still
UPDATE `quest_template` SET `OfferRewardText`='Heartwood by nature is resistant to disease, rot and plague. This heartwood, however, goes so far as to repel such things! The masonry, affected by the fallout of the Unbound Thicket, will work in much the same way.$B$BSoon we will break ground. ' WHERE `Id`=13130; -- The Stone That Started A Revolution
UPDATE `quest_template` SET `OfferRewardText`='Your assistance has been integral in securing the front. The first true victory of this war is close at hand - which is why our next step is the most crucial.$B$BRest assured, $N, the Scourge will not give up without a fight. Your most difficult challenge awaits.' WHERE `Id`=13139; -- Into The Frozen Heart Of Northrend
UPDATE `quest_template` SET `OfferRewardText`='Blessed Light! We have taken the pinnacle! Finally, construction of Justice Keep can begin. Highlord Fordring and the knights are already en route to our new base. You must meet them there, $N!' WHERE `Id`=13141; -- The Battle For Crusaders' Pinnacle
UPDATE `quest_template` SET `OfferRewardText`='A long and arduous journey awaits us as we make our way to the gates of Icecrown Citadel. I, and the soldiers of the Argent Crusade, wish to thank you for all that you have done. We rest easier knowing that you will fight alongside us in this cursed place.$B$B<Highlord Tirion Fordring salutes.>
' WHERE `Id`=13157; -- The Crusaders' Pinnacle
UPDATE `quest_template` SET `OfferRewardText`='Bridenbrad has contracted the plague? I cannot imagine a worse fate for one who has devoted his life to the ways of light, nor can I fathom leaving him to die without lifting a finger to help.$B$BNo, undeath shall not be his fate. We shall find a way to aid this hero.' WHERE `Id`=13072; -- A Hero Remains
UPDATE `quest_template` SET `OfferRewardText`='Hello child.$B$BI understand Tirion''s request and trust in his judgment, we will see what we can do for this Crusader Bridenbrad. What you ask is no simple task - the Scourge are not of this world, and many have failed in attempting to strip their corruption over the years.$B$BIn a being of nobility and light, all is not without hope.' WHERE `Id`=13073; -- The Keeper's Favor
UPDATE `quest_template` SET `OfferRewardText`='Tirion sent you to Remulos? I''m... I''m flattered. One does not call favors in with beings of such power idly, no matter how noble or altruistic they might be. You too are kind to have gone to such lengths on my behalf. You have my thanks.$B$BPlant the seed - I am ready.' WHERE `Id`=13075; -- The Boon of Remulos
UPDATE `quest_template` SET `OfferRewardText`='Greetings to you, $r.$B$BThe concern is clear on your face. Please tell me what troubles you.' WHERE `Id`=13077; -- The Touch of an Aspect
UPDATE `quest_template` SET `OfferRewardText`='The breath of Alexstrasza... you have gone to the dragon-queen herself? I''m extremely grateful.$B$BI understand the risks of such cleansing and I am prepared. Proceed, $c.' WHERE `Id`=13079; -- The Boon of Alexstrasza
UPDATE `quest_template` SET `OfferRewardText`='The Scourge plague is no simple foe to defeat. Alexstrasza''s words suggest that perhaps we can yet save our Bridenbrad from the unimaginable fate of the unliving should he fall, but I will not give him up so easily.$B$BThere is yet one more path of light I would like to pursue. One more being who might avert this horrible fate.' WHERE `Id`=13080; -- Hope Yet Remains
UPDATE `quest_template` SET `OfferRewardText`='<Thassarian listens as you describe your successful tests.>$B$BSo the acid worked? Good. We''ll need it when the army goes up against the reavers in force.' WHERE `Id`=13335; -- Before the Gate of Horror
UPDATE `quest_template` SET `OfferRewardText`='I was worried for a while there, $N. When he busted out the seals and penguins... Well, I didn''t know what to think to be honest. It looked pretty damn ridiculous.' WHERE `Id`=12935; -- The Amphitheater of Anguish: Tuskarrmageddon!
UPDATE `quest_template` SET `OfferRewardText`='Damn, I remember Korrak from way back in my younger days when I used to work for the Frostwolf Clan. He would never shut up! I think you just did the world a great service, $N.' WHERE `Id`=12936; -- The Amphitheater of Anguish: Korrak the Bloodrager!
UPDATE `quest_template` SET `OfferRewardText`='You did it, $N! That was the most exciting fight yet! What are you going to do with your winnings? Me? I''m going to Dalaran and blowing it all in the Underbelly. Lot of hot action going on down there!' WHERE `Id`=12948; -- The Champion of Anguish
UPDATE `quest_template` SET `OfferRewardText`='I hope they weren''t too hesitant to share the wealth. We''ve been pretty forgiving with them picking through our leftovers thus far.' WHERE `Id`=12827; -- Reclaimed Rations
UPDATE `quest_template` SET `OfferRewardText`='These will do nicely, thanks!$B$BDid you happen to see Dim out there? I sent him out a long while back and he never came back. I hope he''s alright.$B$BSpeaking of which... I wonder where Janks is...' WHERE `Id`=12818; -- Clean Up
UPDATE `quest_template` SET `OfferRewardText`='Thanks, $N!  We''ll see what we can do to salvage these parts!' WHERE `Id`=12844; -- Equipment Recovery
UPDATE `quest_template` SET `OfferRewardText`='I see that Skyhopper finally got around to sending help. And none too soon I might add!$B$BWelcome, $g brother : sister;, we need your help badly!' WHERE `Id`=11707; -- Distress Call
UPDATE `quest_template` SET `OfferRewardText`='Have you heard enough? Are you prepared to act?
' WHERE `Id`=3441; -- Divine Retribution
UPDATE `quest_template` SET `OfferRewardText`='$N, by my eternal soul, it is good to see you!  I don''t know why the Exodar crashed.  Only those of us that were in this part of the ship remain.$B$BThere''s not much time if we''re to save everyone that we can!' WHERE `Id`=9279; -- You Survived!
UPDATE `quest_template` SET `OfferRewardText`='Regrettable that those creatures had to die so that we might live - indiscriminate killing is not the draenei way.  However, the blood you gathered will replenish our healing crystals, so their deaths will not be in vain.' WHERE `Id`=9280; -- Replenishing the Healing Crystals
UPDATE `quest_template` SET `OfferRewardText`='I am Firmanvaar and you are wise to seek me out.  It is my calling to provide instruction to shaman, especially those who are just beginning to learn.$B$BShamanism is only now being relearned amongst the draenei, $N.  You are brave to follow its path as it is not popular amongst your kind.$B$BI will be here when you feel you are ready for further training.' WHERE `Id`=9421; -- Shaman Training
UPDATE `quest_template` SET `OfferRewardText`='Oh, thank goodness you''ve come.  We have much to do.' WHERE `Id`=9371; -- Botanist Taerix
UPDATE `quest_template` SET `OfferRewardText`='You''re finished? That''s good news. Hopefully, we can find a way to avoid the killing of these mutated beasts in the future.$b$bI believe I have formed a plan that might give us an alternative solution to this problem, but I will need your help.' WHERE `Id`=10302; -- Volatile Mutations
UPDATE `quest_template` SET `OfferRewardText`='These look like fine specimens.  Thank you for performing the field work.  Once I can find the time to analyze these, I should be able to tell what it will take to restore the fields.' WHERE `Id`=9799; -- Botanical Legwork
UPDATE `quest_template` SET `OfferRewardText`='These will do. Thank you, $c!$B$BWhile you were out, I managed to gather some equipment together to make an analysis of the samples.  This should only take a moment.' WHERE `Id`=9293; -- What Must Be Done...
UPDATE `quest_template` SET `OfferRewardText`='The Light be praised! You''ve done what only a true $g hero : heroine; could have done, $N! The draenei you saved owes their continued life to your selflessness!$B$BPlease, take this supply pouch. You look like you can use it more than I.' WHERE `Id`=9283; -- Rescue the Survivors!
UPDATE `quest_template` SET `OfferRewardText`='With many of the owlkin now inoculated, we can focus on getting out of here and not have to worry about wiping out the owlkin population in the area.$B$BHere, choose from these.  You''ve done good work, and you deserve to be rewarded!' WHERE `Id`=9303; -- Inoculation
UPDATE `quest_template` SET `OfferRewardText`='Let me take a look at those.$B$BYes, I think that these will do nicely; good job, $N. The emitter is rather complex so it may take some time to finish the repairs. I''ll let you know when it''s ready.$b$bIn the meantime, you might see if Vindicator Aldar has anything he could use you for.' WHERE `Id`=9305; -- Spare Parts
UPDATE `quest_template` SET `OfferRewardText`='You are bold to seek my wisdom after what your people have done to these islands, stranger!  Still, there is much to be said for your bravery, so I will impart to you some knowledge.$B$BThe earth beneath your feet forms the foundation for all things.  The sky, the waters, even great fire - all rest upon its shoulders.  While those others often form chaotic tempests, the earth abides.  It grants strength and fortitude to the core of your being.$B$BNow you will prove yourself, shaman.' WHERE `Id`=9449; -- Call of Earth
UPDATE `quest_template` SET `OfferRewardText`='You have done well.  By thinning out the restless spirits you have helped to heal the imbalance between the elements, which your people inadvertently caused.$B$BThroughout your journey as a shaman you must keep this in mind when calling upon our power.  The balance must be preserved.' WHERE `Id`=9450; -- Call of Earth
UPDATE `quest_template` SET `OfferRewardText`='You have done well, $N.  In helping to restore the balance of the elements at the grove, you have also created a balance between the earth element of this world and the draenei.  Perhaps this will help to bring understanding to those amongst us who do not approve of our ways?$B$BI will create for you a totem through which you will be able to call on the power of earth to do your bidding.  And with time, more of the mysteries of earth will be revealed to you.$B$BNow, take your totem, shaman.' WHERE `Id`=9451; -- Call of Earth
UPDATE `quest_template` SET `OfferRewardText`='Help... blood elves!  They... ambushed... me.  Don''t have... long.' WHERE `Id`=9309; -- The Missing Scout
UPDATE `quest_template` SET `OfferRewardText`='I thank you for dealing with the blood elf surveyor.  Surely she was their leader.  Rest assured, we will deal with whatever remnant of them is still nearby.$B$BPlease, take one of these weapons as a sign of my gratitude.' WHERE `Id`=9311; -- Blood Elf Spy
UPDATE `quest_template` SET `OfferRewardText`='I got it, I got it!  I think I managed to fix the emitter!  Here, I''ll just activate this last crystal and that should do it.$B$BTake a look at the emitter, $N.  It looks like it''s beginning to work... someone is appearing!' WHERE `Id`=9312; -- The Emitter
UPDATE `quest_template` SET `OfferRewardText`='Ah, good to see you again!  I''m glad that we were both able to get our emitters fixed or we might never have found one another.  And don''t worry, we''ll see to it that Ammen Vale gets help and supplies.$B$BSpeaking of assistance, now that you''re here, go around and introduce yourself to the others.  I know that there''s plenty to do.' WHERE `Id`=9313; -- Travel to Azure Watch
UPDATE `quest_template` SET `OfferRewardText`='Oh, you must be one of the survivors we''ve been hearing about!$b$bI''m glad that you came. Don''t worry, we will send someone to see to Aeun''s injured leg.$B$BI''m most interested in hearing all about your harrowing story of survival. You''re a brave one to have made it all the way here.' WHERE `Id`=9314; -- Word from Azure Watch
UPDATE `quest_template` SET `OfferRewardText`='Well done, $n, well done!$b$bHere, I cooked up some tenderloins while you were gone. Maybe you''d like the recipe, too?' WHERE `Id`=9454; -- The Great Moongraze Hunt
UPDATE `quest_template` SET `OfferRewardText`='Wonderful! You''re turning into quite the hunter, $n.$b$bHow would you like to look more like me? Well here is your chance! While you were out hunting, I fashioned these items out of some buck hides I had laying around. Take your pick!' WHERE `Id`=10324; -- The Great Moongraze Hunt
UPDATE `quest_template` SET `OfferRewardText`='Very good.  Your efforts do much to keep the Scourge at bay.  A commendation will be sent to my superior, Executor Zygand.' WHERE `Id`=356; -- Rear Guard Patrol
UPDATE `quest_template` SET `OfferRewardText`='Good, I see Ageron managed to find you, $n. Let us waste little time with small talk and pleasantries and focus on your training. There is still much you have to learn.' WHERE `Id`=1478; -- Halgar's Summons
UPDATE `quest_template` SET `OfferRewardText`='Very good, $N.  I will study this book and determine the identity of that lich.  You have served your Queen well.$B$B<Bethor opens the book and stares intently at its glowing pages...>$B$BAstonishing!  The book you retrieved belongs to no one other than Gunther Arcanus!$B$BGunther was a skilled Necromancer in life; he and I were friends and comrades-in-arms, before the Plague.  And judging from his book he has grown even more powerful in death.$B$BHis skills would be a great boon to us.' WHERE `Id`=357; -- The Lich's Identity
UPDATE `quest_template` SET `OfferRewardText`='Well done. Training against the other valiants is one of the best ways to prepare yourself for tournament competition. I know you''ll make us proud, $N.' WHERE `Id`=13750; -- The Grand Melee
UPDATE `quest_template` SET `OfferRewardText`='All of Azeroth is fortunate that Timear foresaw the Eredar lord''s arrival and that you were there in time to slay him.' WHERE `Id`=24589; -- Lord Jaraxxus Must Die!
UPDATE `quest_template` SET `OfferRewardText`='This is in better condition than I thought it''d be. Sure, it''s going to take some time to work off all the rust, the char, and the like, but I''ll not complain.' WHERE `Id`=10055; -- Waste Not, Want Not
UPDATE `quest_template` SET `OfferRewardText`='Very good.  I''m sure their loss will be felt in Hellfire Citadel.  Although that dark bastion looms over us and seems nigh insurmountable, it is only with bold moves like you have made that we will find victory over the fel orcs!' WHERE `Id`=10482; -- Fel Orc Scavengers
UPDATE `quest_template` SET `OfferRewardText`='You''ve come to help my tribe, $r?  How unusual.  There aren''t many that care about the fate of the Broken in this land.  ' WHERE `Id`=10403; -- Naladu
UPDATE `quest_template` SET `OfferRewardText`='Ah, this is very nice temper indeed!  And so much of it!  I''ll be at work for days before I use it all!$B$BThank you, $N.  Please, take this as payment.' WHERE `Id`=3042; -- Troll Temper
UPDATE `quest_template` SET `OfferRewardText`='You found it!  Well done, $N!  Did you have to fight Bly for it?  I hope you knocked him and his band down good and hard!' WHERE `Id`=2768; -- Divino-matic Rod
UPDATE `quest_template` SET `OfferRewardText`='What the vrykul did to our scouts was a gruesome display of savagery. It was a scare tactic, meant to weaken our resolve... to send us running in fear for our lives.$B$BIt failed.$B$BWe are going to show those monsters what it means to wage war against the Alliance!' WHERE `Id`=11244; -- Rescuing the Rescuers
UPDATE `quest_template` SET `OfferRewardText`='A bit worse for the wear but still functional.$B$B<Thoralius reaches into the pouch and removes some odd looking roots.>$B$BNow to place them in the fire and inhale!$B$B<Thoralius throws the roots into the smoldering incense burner.>$B$B<Thoralius inhales deeply. His body begins to quiver.>$B$BWha... What... It cannot be... I cannot...' WHERE `Id`=11333; -- Into the World of Spirits
UPDATE `quest_template` SET `OfferRewardText`='You''ve found Pulroy. A bit too late it seems.$B$BWhile looking over the corpse you see a journal clenched tightly in Pulroy''s death grip. Upon examining the journal you read what appears to be the scribbling of a dying dwarf.' WHERE `Id`=11273; -- The Human League
UPDATE `quest_template` SET `OfferRewardText`='You''ve found Zedd. You''re no doctor but the prognosis for Zedd is most assuredly negative.$B$BIt looks as if they were preparing to feed him to the worgs. Gruesome...' WHERE `Id`=11274; -- Zedd's Probably Dead
UPDATE `quest_template` SET `OfferRewardText`='About bloody time! Pulroy and Zedd are dead.$B$BAnd Daegarn...$B$B<Glorenfeld shakes his head.>$B$BTaken by the Dragonflayer chieftain into the depths of these catacombs. I overheard that oversized mongrel mention something ''bout a sacrifice to the \"Dread King.\"$B$BThe cipher is hidden away in Daegarn''s grimy beard.$B$BWhat? Dwarves hide things in their beards all the time!' WHERE `Id`=11276; -- And Then There Were Two...
UPDATE `quest_template` SET `OfferRewardText`='You feel compelled to place the sacred blade next to the body of Ares.$B$BUpon doing this you are once again blinded by light.' WHERE `Id`=11288; -- The Shining Light
UPDATE `quest_template` SET `OfferRewardText`='You''ve done well, mate. Now that we''ve secured the tablets we can try and save Daegarn''s life and recover the cipher that will help us decode the meaning behind these ancient relics!$B$BI''ll hold on to these tablets, you rescue Daegarn.

' WHERE `Id`=11277; -- The Depths of Depravity
UPDATE `quest_template` SET `OfferRewardText`='<Vice Admiral Keller glances over the plans.>$B$BOutstanding! By the looks of things, there are many more vrykul villages in the fjord. A different tribe of vrykul is preparing an assault on Westguard Keep. Hell, for all I know it may already be too late. We haven''t heard from Westguard in days. Either way, we must alert Westguard!' WHERE `Id`=11290; -- Dragonflayer Battle Plans
UPDATE `quest_template` SET `OfferRewardText`='<Zorek flips through the manual.>$B$BHrm, interesting...$B$BAccording to the manual, the vrykul have a special tool that allows them to control the harpoon guns with deadly accuracy. It looks a bit like the wheel of one of our ships. Furthermore, it''s portable and seems to plug into the harpoon guns like a key. We need to get our hands on one of those!' WHERE `Id`=11420; -- The Path to Payback
UPDATE `quest_template` SET `OfferRewardText`='Many men and women died to recover this blade. Alas, I fear valiant Ares will not be the last.$B$BBut you do the Light''s work, hero. This sacred blade will be wielded by Lord Tirion Fordring himself. Even now the Argent Crusade works toward Icecrown. Lord Fordring has vowed that he will tear down the walls of the cursed place himself! And with the blade, he just might stand a chance against the Lich King.$B$BLord Fordring remains our greatest hope.' WHERE `Id`=11289; -- Guided by Honor
UPDATE `quest_template` SET `OfferRewardText`='Nicely done, $g old chap : m''lady;!' WHERE `Id`=194; -- Raptor Mastery
UPDATE `quest_template` SET `OfferRewardText`='Thank you, $c... thank you!$B$BYou''ve given me the satisfaction of knowing that the coward who made me into this will rot for all eternity as surely as I will.$B$BNow leave before I lose control of myself and cut you down.' WHERE `Id`=13059; -- Revenge for the Vargul
UPDATE `quest_template` SET `OfferRewardText`='You discovered and put an end to the doctor''s machinations.$B$B<The banshee-controlled witch smiles and places a large hand gently upon your shoulder.>$B$BThat''s a fine poke in the eye for the Lich King, but I think we can do better.' WHERE `Id`=13043; -- The Sum is Greater than the Parts
UPDATE `quest_template` SET `OfferRewardText`='$N is my bestest little $r!' WHERE `Id`=12992; -- Crush Dem Vrykuls!
UPDATE `quest_template` SET `OfferRewardText`='<The duke looks at you a moment and nods.>$B$BYou''re inflicting horrible mental trauma on the Jotunheim vrykul. This is where they were first reawakened. It is a place of significant importance to them, second only to Ymirheim.$B$BYou must keep up the pressure there while I hold the vault from the assault of the Lich King.' WHERE `Id`=13084; -- Vandalizing Jotunheim
UPDATE `quest_template` SET `OfferRewardText`='You got both our foodstuff AND our research equipment back!  You''ve not only saved the expedition, you''ve also saved our lives.  I and the rest of my team can''t thank you enough; we just might make it here for a while now thanks to you.$B$BWhile we don''t have much, I''m certainly not going to leave you high and dry for the invaluable help you''ve given us.  Thank you, $N - you''ve got a friend in Marshal Expeditions!
' WHERE `Id`=3881; -- Expedition Salvation
UPDATE `quest_template` SET `OfferRewardText`='Yes, this will do nicely.  You''ve been a great help... I wish I could give you more than this, but being virtually stranded in the middle of a savage land does limit what I can and cannot give.  Rest assured though - the research done here would not have been possible without your assistance!' WHERE `Id`=3883; -- Alien Ecology
UPDATE `quest_template` SET `OfferRewardText`='This will do nicely, $N. It seems Lar''korwi eats well these days. Although, I wonder where he found a threshadon in this area. Odd.$B$BRegardless, I will hold onto this until you are ready for your confrontation with the beast. Do not worry for my safety--I am sure you''ve angered Lar''korwi enough that he will not kill me until after he''s tasted your flesh.' WHERE `Id`=4290; -- The Fare of Lar'korwi
UPDATE `quest_template` SET `OfferRewardText`='You did it!  You actually found it!$B$BI don''t know... I don''t know how to thank you!' WHERE `Id`=12624; -- It Could Be Anywhere!
UPDATE `quest_template` SET `OfferRewardText`='What a relief to hear that the Venture Company will trouble us no more. You have my thanks, and that of Hemet for dealing with this problem. A game hunter cannot, in good conscience, lift her weapon against another person.' WHERE `Id`=12525; -- Wipe That Grin Off His Face
UPDATE `quest_template` SET `OfferRewardText`='The professor sent you my way?  All right.' WHERE `Id`=12696; -- Aerial Surveillance
UPDATE `quest_template` SET `OfferRewardText`='Excellent!  ' WHERE `Id`=12699; -- An Embarassing Incident
UPDATE `quest_template` SET `OfferRewardText`='Thank you, this will go far to treat our soldiers'' wounds.' WHERE `Id`=13201; -- Healing with Roses
UPDATE `quest_template` SET `OfferRewardText`='You are a brave one, $N.  I hope you didn''t lose any extremities making your fishing spot.  If you''ve still got the fishing bug, come back tomorrow and we''ll talk some more.' WHERE `Id`=13833; -- Blood Is Thicker
UPDATE `quest_template` SET `OfferRewardText`='<Mariel accepts the orders and the captured seeing crystal and examines both.>$B$BGood work, $N, and quick thinking. I''m sure the theft of this trinket won''t slow them down for long, but I think you''ve bought us time to warn the leaders of the Horde and Alliance about the impending attacks.' WHERE `Id`=24442; -- Battle Plans Of The Kvaldir
UPDATE `quest_template` SET `OfferRewardText`='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE `Id`=8676; -- Wildmane the Elder
UPDATE `quest_template` SET `OfferRewardText`='Wonderful!  You found it!  And what''s just as important--Velratha no longer has it!  Thank you, $N.  I am forever in your debt!$B$BAnd if I sounded a little... mean before, pay it no mind.  You''ll find me a much nicer person to those who haven''t stolen from me.' WHERE `Id`=2846; -- Tiara of the Deep
UPDATE `quest_template` SET `OfferRewardText`='Ah!  Longbeard sent you with a load of helmets!  Hooray!$B$BNow maybe we can talk a pilot into driving our car...' WHERE `Id`=1179; -- The Brassbolts Brothers
UPDATE `quest_template` SET `OfferRewardText`='<A fierce glow emanantes from all of Kilix''s eyes as he stares at the husk.>$b$bIt is DONE!$b$b$R! Your name shall be recorded in the history of our people.$b$bI am in your debt....' WHERE `Id`=13167; -- Death to the Traitor King
UPDATE `quest_template` SET `OfferRewardText`='<A gentle ringing fills your head as you approach the naaru.>$B$BI know why you have come.' WHERE `Id`=13081; -- The Will of the Naaru
UPDATE `quest_template` SET `OfferRewardText`='<As you approach Crusader Bridenbrad, you cannot help but notice that his skin has taken on a pale hue and his breaths are shallow. It is clear that he has little time left.>$B$BYou have returned to me, $c. I must admit... it is good to see you again... your face renews my hope that this land will be free of Arthas''s grasp one day soon. I''m proud to have met you...$B$B<Bridenbrad''s words trail off, a dim smile on his face. As life seems to slip from him, a gentle ringing fills your ears.>' WHERE `Id`=13082; -- The Boon of A'dal
UPDATE `quest_template` SET `OfferRewardText`='<Captain Bartlett salutes.>$B$BHe was a damn fine soldier. Damn the Horde and damn the Scourge!' WHERE `Id`=13225; -- The Skybreaker
UPDATE `quest_template` SET `OfferRewardText`='Really, $c?$b$bNothing notable to report?$b$b<Thassarian notices the abomination remains splattered across your clothes and smiles.>$b$bI beg to differ...' WHERE `Id`=13287; -- Poke and Prod
UPDATE `quest_template` SET `OfferRewardText`='Yes, yes, yes!  A thousand times, hello!' WHERE `Id`=13383; -- Killohertz
UPDATE `quest_template` SET `OfferRewardText`='I could hear your explosions from here, $N.  How did the shields work?  Did they keep your bomber intact?$B$BI hope they did, because now I have more missions for you....' WHERE `Id`=13380; -- Leading the Charge
UPDATE `quest_template` SET `OfferRewardText`='Welcome to hell, soldier.$B$BMy men are leading the assault on the gate from this position, and we''re dropping some infiltrators in the city via air - we need more people on both fronts. I have a feeling that this attack will be going on for some time.' WHERE `Id`=13341; -- Joining the Assault
UPDATE `quest_template` SET `OfferRewardText`='Hail, $N.  Thassarian mentioned you''d be dropping by.  Any friend of Thassarian''s is my friend.  Well, any living friend of Thassarian, that is...  He does keep odd company.' WHERE `Id`=13386; -- Exploiting an Opening
UPDATE `quest_template` SET `OfferRewardText`='You''re as good as Thassarian said.  Good job!' WHERE `Id`=13387; -- Securing the Perimeter
UPDATE `quest_template` SET `OfferRewardText`='These bombs look pretty potent.  They should at least put a dent in the surrounding structure.' WHERE `Id`=13388; -- Set it Off!
UPDATE `quest_template` SET `OfferRewardText`='This pulsing object is covered in a thick layer of ice.  It shimmers strangely beneath the water.' WHERE `Id`=13389; -- A Short Fuse
UPDATE `quest_template` SET `OfferRewardText`='I saw him get rid of it, you know?  He threw it all the way down here.$B$BSaid he wouldn''t need it anymore.  Said it made him weak.' WHERE `Id`=13390; -- A Voice in the Dark
UPDATE `quest_template` SET `OfferRewardText`='What are you waiting for?  You have to rub it on you!$B$BQuick!  Or he''ll see you!' WHERE `Id`=13391; -- Time to Hide
UPDATE `quest_template` SET `OfferRewardText`='It''s you, $N!  We thought you were a goner.$B$BThat explosion of yours put quite a bit of hurt on the Scourge.  Nearly took Captain''s Kendall''s eyebrows off in the process...' WHERE `Id`=13392; -- Return to the Surface
UPDATE `quest_template` SET `OfferRewardText`='The demolisher has seen better days, but the structure hasn''t suffered any permanent damage.  The parts you obtained should be enough to get it running again, at least temporarily.' WHERE `Id`=13393; -- Field Repairs
UPDATE `quest_template` SET `OfferRewardText`='You see?  You killed your fair share, but for every one you destroyed, another rose from the dirt to take its place.$B$BYou don''t know what you''re up against, $N.  Let me show you.' WHERE `Id`=13394; -- Do Your Worst
UPDATE `quest_template` SET `OfferRewardText`='The prince''s true power wasn''t his ability to make armies out of corpses... that was easy.$B$BBut killing his own men, with whom he''d shared many battles... the prince''s true power was his ability to do what had to be done.' WHERE `Id`=13395; -- Army of the Damned
UPDATE `quest_template` SET `OfferRewardText`='Nice shooting, $N.  The Scourge never had a chance.$B$BAre you feeling okay?  You look like you''ve seen a ghost.  Not that it would be an unusual thing around these parts, now that I think about it.' WHERE `Id`=13396; -- Futility
UPDATE `quest_template` SET `OfferRewardText`='Nice job, $N.  You make the rest of us look bad!' WHERE `Id`=13397; -- Sindragosa's Fall
UPDATE `quest_template` SET `OfferRewardText`='Nothing to it, eh? Any intelligent being should have little trouble controlling lesser undead. I suspect only the likes of a true necromancer could use these to sieze control of any of the more powerful undead. That won''t be a problem though - I can already think of quite a variety of destruction we can wreak with even the most paltry minions.$B$BShall we have at it then?' WHERE `Id`=13168; -- Parting Gifts
UPDATE `quest_template` SET `OfferRewardText`='Quiet!  I''m in a delicate juncture and mustn''t be disturbed!$B$BOne moment...' WHERE `Id`=1947; -- Journey to the Marsh
UPDATE `quest_template` SET `OfferRewardText`='Ah, so you''ve been speaking with MacKinley, have you?$B$BIt''s not what he thinks!  I''m not afraid to give him some Steamwheedle Bilge Rum...$B$BI just don''t have any rum to give him!' WHERE `Id`=2872; -- Stoley's Debt
UPDATE `quest_template` SET `OfferRewardText`='Out-frikkin-standing!  As of right now $T Civvy : Civvy; $N, you are my favorite person on the sorry remains of this sorry planet!$B$BI''m sure that the eggheads are going to wet themselves when I hand that blood over to them for study.  Who knows, maybe we''ll find a new weapon in the fight against those damned fel orcs?' WHERE `Id`=9589; -- The Blood is Life
UPDATE `quest_template` SET `OfferRewardText`='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE `Id`=8619; -- Morndeep the Elder
UPDATE `quest_template` SET `OfferRewardText`='Wonderful!  We thank you for your generous donation, $N!' WHERE `Id`=7807; -- A Donation of Wool
UPDATE `quest_template` SET `OfferRewardText`='Wonderful!  We thank you for your generous donation, $N!' WHERE `Id`=7808; -- A Donation of Silk
UPDATE `quest_template` SET `OfferRewardText`='Vanira''s frogs be tellin'' de truth, den? Dis tiger be a druid and an ally? We couldn''t be hopin'' for a better outcome. Dis be a good omen for de coming battle.' WHERE `Id`=25470; -- Lady Of Da Tigers
UPDATE `quest_template` SET `OfferRewardText`='$n, you''d be a mighty warrior and a fierce commrade to da Darkspear trolls.  De Echo Isles are OURS now and we couldn''ta done it wit''out ya.$B$BTake dis cloak. Wear it wit pride.  You''d be a member of da tribe now!$B$BIn no time, da trolls will have a home again and we have you to thank for dat.' WHERE `Id`=25445; -- Zalazane's Fall
UPDATE `quest_template` SET `OfferRewardText`='15.9 pounds! That may be a new record for blood and gut weight on apparel! Congratulations, $c!' WHERE `Id`=7729; -- JOB OPPORTUNITY: Culling the Competition
UPDATE `quest_template` SET `OfferRewardText`='Ye''re a good $g lad:lass;, ye are. I got ye a lil'' present fer yer troubles.' WHERE `Id`=7723; -- Curse These Fat Fingers
UPDATE `quest_template` SET `OfferRewardText`='I never thunk I''d be lookin'' at thish ugly mug again!$B$BHe acshually looksh better without the resht o'' him attached.$B$BHere''s yer reward *hic*, $r.' WHERE `Id`=7701; -- WANTED: Overseer Maltorius
UPDATE `quest_template` SET `OfferRewardText`='Wonderful! Those sleepy Dark Irons will head back to their homes in the Depths to get some rest, greatly slowing down the productivity of the Slag Pit.' WHERE `Id`=7702; -- Kill 'Em With Sleep Deprivation
UPDATE `quest_template` SET `OfferRewardText`='There is one final task that you must complete.
' WHERE `Id`=3453; -- The Torch of Retribution
UPDATE `quest_template` SET `OfferRewardText`='Are you prepared to make your strike?
' WHERE `Id`=3462; -- Squire Maltrake
UPDATE `quest_template` SET `OfferRewardText`='It is glorious! Is it not glorious master? ' WHERE `Id`=3463; -- Set Them Ablaze!
UPDATE `quest_template` SET `OfferRewardText`='Oh, this is great! Nice feel to it too!$B$BWhat? Oh, yeah... geologists. Got ''em good, did ya? I can''t thank ya enough, $N. That''ll give me some time to finish up in here... Thanks again, $N.' WHERE `Id`=4449; -- Caught!
UPDATE `quest_template` SET `OfferRewardText`='Keep the residue pouring in!' WHERE `Id`=13662; -- Gaining Acceptance
UPDATE `quest_template` SET `OfferRewardText`='You have struck a decisive blow against the Undermarket. Their leaders will think twice before sending more cronies into the gorge.$B$BOh, and I also found nothing of use in the trader''s satchel. You may keep whatever you find inside.' WHERE `Id`=3385; -- The Undermarket
UPDATE `quest_template` SET `OfferRewardText`='Perfect!  I just hope the Dalaran Destroyers finally win one!' WHERE `Id`=13107; -- Mustard Dogs!
UPDATE `quest_template` SET `OfferRewardText`='<Bouldercrag reaches out to take the ore, but then recoils.>$B$BThat ore... I can''t touch it. It seethes with unnatural energy. No creature of stone can handle it. What do they mean to do with this?' WHERE `Id`=12964; -- The Dark Ore
UPDATE `quest_template` SET `OfferRewardText`='<Bouldercrag nods grimly.>$B$BYou''ve weakened the stormforged considerably, but they''ll keep fighting. Their casualties matter nothing to them, while our defenders continue to fall. Even if it costs them a hundred or a thousand iron corpses, they''ll keep fighting until we''ve been pounded to gravel.' WHERE `Id`=12965; -- The Gifts of Loken
UPDATE `quest_template` SET `OfferRewardText`='Ruined? What d''you mean, the camp''s been ruined?$B$B<Brann clenches his fists in anger.>$B$BThose iron dwarves will pay for this! There''s little we can do now, and we have to focus on finishing the key. But once I get into the halls of Ulduar, the irons and their masters will answer for what they''ve done!' WHERE `Id`=13273; -- Going After the Core
UPDATE `quest_template` SET `OfferRewardText`='<Boktar nods in approval as you tell him how you helped Brann recover the pieces of the keystone and combine them.>$B$BBrann may prove to be just the ally we need to discover what is truly happening in Ulduar. You''ve done well in aiding him. We need all the help we can get against this Loken and his iron dwarf minions.' WHERE `Id`=13285; -- Forging the Keystone
UPDATE `quest_template` SET `OfferRewardText`='The Sons of Hodir accept your tribute, small one.  You continue to prove your worth as an ally in more ways than one.' WHERE `Id`=13559; -- Hodir's Tribute
UPDATE `quest_template` SET `OfferRewardText`='Yes... these will do.  Let us hope my plan works, $N.$B$BVeranus is a great drake.  I''d hate to have to settle for a lesser one.' WHERE `Id`=13050; -- Veranus
UPDATE `quest_template` SET `OfferRewardText`='It''s good to have my old friend back.  It appears that my luck is finally starting to change... and it''s all thanks to you, little friend.' WHERE `Id`=13051; -- Territorial Trespass
UPDATE `quest_template` SET `OfferRewardText`='So it is done.$b$bWe have heard the screams of Jormuttar as they echoed from across the valley.$b$bYou have done our people a service this day, little $r.' WHERE `Id`=13011; -- Jormuttar is Soo Fat...
UPDATE `quest_template` SET `OfferRewardText`='We''re here, $N.  My brother''s forces will learn the meaning of defeat today.' WHERE `Id`=13057; -- The Terrace of the Makers
UPDATE `quest_template` SET `OfferRewardText`='It''s a good start.  But my brother''s forces will not take long to regroup.  We must make our victory a decisive one.' WHERE `Id`=13005; -- The Earthen Oath
UPDATE `quest_template` SET `OfferRewardText`='One by one, my brother''s servants have fallen.  Loken''s insurrection will soon come to an end.' WHERE `Id`=13035; -- Loken's Lackeys
UPDATE `quest_template` SET `OfferRewardText`='No... it cannot be...$B$BNo one can defeat Thorim in single combat.  Not a giant, nor a beast... no one!  Especially not that coward of a brother of his.$B$BOn my forefathers'' names, this I swear...$B$BLoken will pay for this!' WHERE `Id`=13047; -- The Reckoning
UPDATE `quest_template` SET `OfferRewardText`='The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth?' WHERE `Id`=8727; -- Farwhisper the Elder
UPDATE `quest_template` SET `OfferRewardText`='Human children born of vrykul? And Ymiron ordered the deaths of all human born offspring?$B$B<Thoralius goes silent for a moment.>$B$BAs much as I wish to deny what is so plainly presented to me, I cannot. There is no extinct \"missing link\" to humans as the Explorers'' League proposed. The vrykul are the missing link. They are the progenitors of humanity.' WHERE `Id`=11344; -- Anguish of Nifflevar
UPDATE `quest_template` SET `OfferRewardText`='This is quite a find, $N.  I can''t have you selling this to anyone else, so I''m willing to offer generously.' WHERE `Id`=24431; -- Waterlogged Recipe
UPDATE `quest_template` SET `OfferRewardText`='You have rescued the sacred text!$b$bYour journey was long and acquiring the book was undoubtedly no easy task. But  the dwarves of Ironforge stand to benefit from your success.$b$bThank you, $n, on behalf of the Explorers'' League.' WHERE `Id`=1050; -- Mythology of the Titans
UPDATE `quest_template` SET `OfferRewardText`='So Stormpike sent you, did he?  Good.$B$BI have a big task for you...' WHERE `Id`=707; -- Ironband Wants You!
UPDATE `quest_template` SET `OfferRewardText`='Fantastic, I thought you looked to be the heroic type!  We''ve got our work cut out for us $N, I''m not going to lie to you.  If we stay focused on the task at hand, we should be able to come out on top.$B$BNow, let me bring you up to speed on what''s been going on...' WHERE `Id`=3523; -- Scourge of the Downs
UPDATE `quest_template` SET `OfferRewardText`='You have my thanks.$B$BThis has been a brutal operation, but we haven''t had any great options otherwise - they''re being equally as unforgiving to our aerial assault. We need to rout these vrykul if we''re going to stand any chance of pressing on in Icecrown.$B$BWe''re likely to need more help later. Please lend yourself to the battle again should the chance present itself.' WHERE `Id`=13284; -- Assault by Ground
UPDATE `quest_template` SET `OfferRewardText`='Let''s see here... what do we have...$B$B<Keritose buries his head in the papers for a bit, seemingly gleaning little that he did not already know. Suddenly he finds what he is looking for...>$B$BMalykriss! The Vile Hold. It seems Arthas did not take the loss of his death knights so well... I''m not exactly sure what he''s doing with all of that saronite, but I have a feeling he might be overcompensating for something.$B$BThat boy is not used to losing.' WHERE `Id`=13174; -- Amidst the Confusion
UPDATE `quest_template` SET `OfferRewardText`='I''ve chained the wretch to the post over there and I''ll look into getting my hands on more of them.$B$BNow let''s make some use of that eye.' WHERE `Id`=13143; -- New Recruit
UPDATE `quest_template` SET `OfferRewardText`='Excellent work. It seems more death knights remained loyal to Arthas than I initially thought.$B$BHe certainly is sparing nothing in his attempt to replace Acherus. A pure saronite citadel would be hard to destroy indeed. There''s no need to destroy it though... we can halt production and put down these death knight leaders here and now, before they become a real threat.$B$BMost importantly, we need to disrupt them enough to get those death knights away from from the leaders so that we can make our strike.' WHERE `Id`=13145; -- The Vile Hold
UPDATE `quest_template` SET `OfferRewardText`='Yay, yay! $N is best proto-drake stealer.$B$BYou come back tomorrow and we make more fire!!!' WHERE `Id`=13071; -- Vile Like Fire!
UPDATE `quest_template` SET `OfferRewardText`='Well done, $N. Let them see the desecrated corpses of their fallen comrades and think twice about striking at us!$B$BIf you come back tomorrow, I will make certain to have more banners prepared for you.' WHERE `Id`=12995; -- Leave Our Mark
UPDATE `quest_template` SET `OfferRewardText`='You are a true champion for the cause, $N!$B$BWon''t you please come speak to me again tomorrow? I''m certain that there will be more of those nasty proto-drakes to shoot down.' WHERE `Id`=13069; -- Shoot 'Em Up
UPDATE `quest_template` SET `OfferRewardText`='<Thassarian nods.>$B$BGood. It''s not much protection, but it''s better than nothing. That gate is still the perfect choke point if the Scourge commanders know what they''re doing. We must gain control of as much of the surrounding area as possible.' WHERE `Id`=13332; -- Raise the Barricades
UPDATE `quest_template` SET `OfferRewardText`='Words cannot describe what I''m feeling at the moment, $N. My revenge is complete and there is naught else for me to do.$B$BIf only I could be there when the Lich King is finally taken down.$B$BDon''t fool yourself though, Jotunheim is far from ''dealt'' with. I will remain in possession of this witch until such time as the vrykul are no longer a threat.$B$BLook around, there are many items of value in this cave. Take your pick.' WHERE `Id`=13142; -- Banshee's Revenge
UPDATE `quest_template` SET `OfferRewardText`='You have bested our finest warriors. Your name is renowned, $N.$B$BPerhaps you think that this concerns me: it does not. If they can fall to you then they are not worthy and should be nothing but lowly vargul!$B$BBut perhaps I can give you and your friends different sport. Valhalas is also a place for combat of all types with many different kinds of foes.$B$BSpeak to me again when you and your friends are ready to proceed. We shall see if you are truly worthy.' WHERE `Id`=13213; -- Battle at Valhalas
UPDATE `quest_template` SET `OfferRewardText`='It''s good to have someone competent running missions, $N. If only we had an army of $cs like you, we could show the Horde what we''re made of. These captured reports will help us to maintain the upper hand in this fight. We may be down, but we''re far from out.' WHERE `Id`=13314; -- Get the Message
UPDATE `quest_template` SET `OfferRewardText`='New blood.$B$B<The vrykul death knight spits on the ground at your feet.>$B$BYou all think that you have what it takes to fight here.$B$BYou are nothing before the might of the vrykul and the Scourge!$B$BStill, you did manage to defeat six incompetent corpses, so you must have some skill in you. Not likely enough for the next challenge though.' WHERE `Id`=13214; -- Battle at Valhalas: Fallen Heroes
UPDATE `quest_template` SET `OfferRewardText`='You want me to be impressed by the fact that you and your friends were able to bring down a lone Nerubian priest?$B$BGet out of my sight before I summon my ghouls upon you!' WHERE `Id`=13215; -- Battle at Valhalas: Khit'rix the Dark Master
UPDATE `quest_template` SET `OfferRewardText`='The defeat of one of the hyldnir is mildly impressive, $r, but you did have the help of your friends.$B$BYou''re lucky that her drake didn''t get involved.' WHERE `Id`=13216; -- Battle at Valhalas: The Return of Sigrid Iceborn
UPDATE `quest_template` SET `OfferRewardText`='I''m starting to respect your prowess in the ring, $N. Now I really don''t like you.$B$BI would much rather have preferred to see you and your friends stuck to the bottom of that flesh giant''s foot!' WHERE `Id`=13217; -- Battle at Valhalas: Carnage!
UPDATE `quest_template` SET `OfferRewardText`='I don''t know what trickery it was that you used to bring down the thane -- I couldn''t see it from this angle -- but I can assure you that you will not survive your next match.$B$BYes, I know who it is. Run, little $r. Flee to the far corners of the world.$B$BOr stay and die. It matters little to me.' WHERE `Id`=13218; -- Battle at Valhalas: Thane Deathblow
UPDATE `quest_template` SET `OfferRewardText`='Your defeat of Prince Sandoval sickens me. An unwashed peasant such as yourself should have willingly given over $g his : her; life simply for the chance to meet him and kneel at his feet.$B$BYou''ve earned your damned reward. Be quick about your choosing.' WHERE `Id`=13219; -- Battle at Valhalas: Final Challenge
UPDATE `quest_template` SET `OfferRewardText`='This will allow us to patch up more of the fallen. Thank you, $N, on behalf of all who defend the refuge.' WHERE `Id`=12930; -- Rare Earth
UPDATE `quest_template` SET `OfferRewardText`='You''ve done well, $N!' WHERE `Id`=192; -- Panther Mastery
UPDATE `quest_template` SET `OfferRewardText`='So the great Bhag''thera is dead!  Cheers to you, $N.  You are a mighty $c indeed!' WHERE `Id`=193; -- Panther Mastery
UPDATE `quest_template` SET `OfferRewardText`='Ho ho!! We have ourselves a true raptor slayer!  Nicely done, $g old chap : fair lady;!' WHERE `Id`=196; -- Raptor Mastery
UPDATE `quest_template` SET `OfferRewardText`='$G Master : Mistress; $N, the raptor slayer!$b$bHas a nice ring to it, eh?' WHERE `Id`=197; -- Raptor Mastery
UPDATE `quest_template` SET `OfferRewardText`='Bloody well done!  Right-o!  Congratulations, $N, for succeeding where others have failed.$b$bI am honored to count you as a comrade of our great hunting party here.  No one will ever doubt your expertise in hunting and tracking!$b$bCheers to you, I say!  Cheers!' WHERE `Id`=208; -- Big Game Hunter
UPDATE `quest_template` SET `OfferRewardText`='You''re a good $g man : woman;, $N. We''re fortunate that you happened to stop by.$B$BStick around a while. I''m sure that we have much that a capable $c such as yourself can do.' WHERE `Id`=12740; -- Parachutes for the Argent Crusade
UPDATE `quest_template` SET `OfferRewardText`='<The dwarf sergeant warily eyes the orders in your hand.>$B$BAre those new orders for me, $g mister : miss;?' WHERE `Id`=12505; -- New Orders for Sergeant Stackhammer
UPDATE `quest_template` SET `OfferRewardText`='Perfect!  I just hope the Dalaran Destroyers finally win one!' WHERE `Id`=13116; -- Mustard Dogs!
UPDATE `quest_template` SET `OfferRewardText`='Good. $n, I know of you. You''ll be perfect for these tasks.$B$BWe''ve been afforded a rare chance to delve into Icecrown Citadel, but we must move quickly if we''re to avoid Arthas'' notice.' WHERE `Id`=24506; -- Inside the Frozen Citadel
UPDATE `quest_template` SET `OfferRewardText`='Well done, $N. Mounted combat is often hard to pick up for those accustomed to fighting on foot. I have no doubt that you''ll continue to improve with practice, which is more than I can say for some warriors.' WHERE `Id`=13677; -- Learning The Reins
UPDATE `quest_template` SET `OfferRewardText`='You have shown yourself a capable combatant, $N and you will serve as an example to the rest of the aspirants who clamor to compete on behalf of the Horde.' WHERE `Id`=13676; -- Training In The Field
UPDATE `quest_template` SET `OfferRewardText`='So you''re saying this knight''s story is a sham? Most suspicious. Dishonorable at the least, and murderous at the worst. Still, we can''t confront him until we know for certain whether he was involved in these murders.$B$BDo nothing to arouse his suspicions, $N. Discretion will serve us well as we continue to investigate.' WHERE `Id`=13634; -- The Black Knight of Silverpine?
UPDATE `quest_template` SET `OfferRewardText`='Welcome to Orgrim''s Hammer.$B$BFrom here we are laying our groundwork for the assault on Arthas. There''s a lot of preparation to be done, but before we can get into the real meat of it, we want to make sure that the Argent Crusade is adequately reinforced - we''re going to need their help later.$B$BIf you have not already, speak to Brother Keltan on the main deck.' WHERE `Id`=13419; -- Preparations for War
UPDATE `quest_template` SET `OfferRewardText`='Perhaps now we can really get something done. Don''t be fooled though, the Lich King can still ''see'' through his Scourge minions.$B$BThat''s why you''re here.' WHERE `Id`=12892; -- It's All Fun and Games
UPDATE `quest_template` SET `OfferRewardText`='Quickly, hand them to me and stay out of sight!$B$BThe rod, the hook, and the rope are all very self-evident in their usage when combined. I just need to infuse the result with the essences and we''ll be ready to proceed.$B$BIt''s all very mundane in its composition, but extraordinary in its application!' WHERE `Id`=12891; -- I Have an Idea, But First...
UPDATE `quest_template` SET `OfferRewardText`='We will put those three to good use once we finally take the vault.$B$BSpeaking of which....' WHERE `Id`=12893; -- Free Your Mind
UPDATE `quest_template` SET `OfferRewardText`='Careful, now. Keep that plate as far away from me as you can. Even being in its presence is enough to inflict pain.$B$BBut you''re right, $N, these are gigantic armor plates for a war golem of normal size. What would the stormforged be doing with them? There''s only one way to find out.' WHERE `Id`=12979; -- Armor of Darkness
UPDATE `quest_template` SET `OfferRewardText`='There may be hope for victory, $N. We have never been able to sustain an attack on the stormforged, but with your efforts, Valduran may yet fall!' WHERE `Id`=12978; -- Facing the Storm
UPDATE `quest_template` SET `OfferRewardText`='Always more questions than answers, eh, $g lad:lass;?
' WHERE `Id`=13207; -- Halls of Stone
UPDATE `quest_template` SET `OfferRewardText`='So... here I sat, basking in the awesomeness that is me, and in the distance, I hear a pop! Then another! Then a dozen more! And a smile crept onto my face at the thought of all those magnataur and snobolds eagerly rushing to their own deaths.$B$BWas it glorious?' WHERE `Id`=12820; -- A Delicate Touch
UPDATE `quest_template` SET `OfferRewardText`='Excellent!$B$B<A fierce grin creeps onto Ricket''s face.>$B$BLet the destruction begin!' WHERE `Id`=12821; -- Opening the Backdoor
UPDATE `quest_template` SET `OfferRewardText`='I know that we Forsaken appear monstrous to your eyes, but I assure you we mean your people no harm. We are here because of a common enemy: Dar''Khan the traitor! He has returned and now commands the Scourge that are invading this land from his steadfast, Deatholme, to the south.$B$BOur leader, Lady Sylvanas Windrunner, originally hails from these lands, and in fact used to be an elf. She has a history with Dar''Khan and wants him dead as much as your people do.$B$BWe will defeat him together, $c!' WHERE `Id`=9327; -- The Forsaken
UPDATE `quest_template` SET `OfferRewardText`='Oh good, there you are!  And just in time... there is much to be done!' WHERE `Id`=9758; -- Return to Arcanist Vandril
UPDATE `quest_template` SET `OfferRewardText`='Very well, these will have to do.  No, don''t describe them crawling around, I don''t want to know!  I''ll work my magic upon these legs and they''ll turn out quite tasty.  A little spice here, a pinch of herb there, and then of course some arcane ingredients, and voila, a meal fit for a queen... or in this case, a dame.$B$BYour service has been adequate, $c.  Here, take this recipe and some samples.' WHERE `Id`=9171; -- Culinary Crunch
UPDATE `quest_template` SET `OfferRewardText`='My family... What have I done... What could I have done?$b$bWhy must I be punished so?' WHERE `Id`=10428; -- The Missing Fisherman
UPDATE `quest_template` SET `OfferRewardText`='[Furbolg] The prophecy spoke of one that would rise and deliver us from the oppressive grasp of Bristlelimb -- that the spirits themselves would herald the arrival of this hero.$B$BAnd now, you have come.$B$BI humble myself before you, great one.' WHERE `Id`=9544; -- The Prophecy of Akida
UPDATE `quest_template` SET `OfferRewardText`='You''re a resourceful one! With our navigation gear, we can figure out just how far we''ve veered off course.$b$bBut wait, what''s this? There''s something rolled up in the map. Let me see...$b$bThese are orders from Mogul Razdunk of the Venture Company. According to these plans, they''re here to strip-mine the island of the crystal wreckage, then hijack our ships once they''re finished.$b$bBy Bronzebeard''s bushy brow! This is why they forced us to land? How could they know of our plans?$b$bI smell a traitor...' WHERE `Id`=9506; -- A Small Start
UPDATE `quest_template` SET `OfferRewardText`='Bless yer heart, stranger. This''ll go a long ways in liftin'' the morale o'' the crew.
' WHERE `Id`=9512; -- Cookie's Jumbo Gumbo
UPDATE `quest_template` SET `OfferRewardText`='My pappy would be proud! His boy strikes it big at the first set of night elf ruins he comes across... With your help, of course. Yes, don''t worry, I won''t leave you out of the discovery. Your name is $N, right? They''ll learn all about you in Ironforge.
' WHERE `Id`=9523; -- Precious and Fragile Things Need Special Handling
UPDATE `quest_template` SET `OfferRewardText`='<Gurf spits on the clump of fur and tries to affix it to the hairless patch on his backside.>$B$BThis will have to do for now! Hopefully one of the shaman will be able to repair the damage.' WHERE `Id`=9564; -- Gurf's Dignity
UPDATE `quest_template` SET `OfferRewardText`='You place the gem inside the essence font.$B$B\"Thank you mortal, you have - no... this, this cannot be! No!  The corruption of this accursed god even taints the sanctity of a Green Dragonflight essence font!  No please, I feel my essence ripping from me!  THE PAIN!  I feel the grip of an eternal nightmare taking hold on me...\"$B$B\"Mortal, I implore you!  Find one of the Green Dragonflight to stop this... help me... I am chained in darkness... forever in agony... please do not torture...\"' WHERE `Id`=3373; -- The Essence of Eranikus
UPDATE `quest_template` SET `OfferRewardText`='Well done, $N. I am pleased. You have done a great thing here today.$B$BU''cha was one of the greatest apes I had ever seen. The fact that you have bested his strength speaks well of your own strength... and courage.$B$BIt is only fitting that I give you this as a sign of respect. You have earned it.' WHERE `Id`=4301; -- The Mighty U'cha
UPDATE `quest_template` SET `OfferRewardText`='The Earth Mother be praised! You''ve done it! Fair play to you, $N. You have proven to be a great hunter in your own right. Your spirit is strong. Your bravery unmatched. And your strength has been fortified. I bow down to your skills.$B$BOnly the greatest of my ancestors could have accomplished something so incredible. Congratulations.' WHERE `Id`=4292; -- The Bait for Lar'korwi
UPDATE `quest_template` SET `OfferRewardText`='I''ll need one vial to make sure that this is truly the elixir... Yes... This is the stuff. ' WHERE `Id`=3909; -- The Videre Elixir
UPDATE `quest_template` SET `OfferRewardText`='Thanks so much, $N! Now I can get back to work here.$B$BDid you find anything of interest at the Winterfall camp?' WHERE `Id`=5082; -- Threat of the Winterfall
UPDATE `quest_template` SET `OfferRewardText`='This thing... it is in the shape of a Winterfall Ritual Totem, but it has been twisted by forces I cannot begin to comprehend.  Whatever taint that has set the Winterfall against us is surely present in this object.$B$BDivine wisdom has brought both this and you to us, $N.  We will study this object intently; perhaps one day, the Winterfall will rage against us no longer.$B$BThank you, friend - please accept these offerings in exchange for your benevolence.' WHERE `Id`=8471; -- Winterfall Ritual Totem
UPDATE `quest_template` SET `OfferRewardText`='Thank you again, $C, for rescuing me from Baltharus''s clutches!$B$BThere is still much work to be done, however....' WHERE `Id`=26013; -- Assault on the Sanctum
UPDATE `quest_template` SET `OfferRewardText`='It''s locked, isn''t it?  It looks pretty ordinary.$B$B<Lieutenant Dumont Shakes the chest, producing a rattling wooden sound.>$B$BNo matter, I suppose.  If this gets us the edge we need against the Horde, then I could care less if the cure for the Plague was in there. ' WHERE `Id`=12292; -- Local Support
UPDATE `quest_template` SET `OfferRewardText`='With Malygos defeated, the Nexus War should come to a swift conclusion. You have the gratitude of the Kirin Tor, $N.' WHERE `Id`=24584; -- Malygos Must Die!
UPDATE `quest_template` SET `OfferRewardText`='Shiver me timbers and timber me shivers!  Ye found me beautiful eye!  Let''s see if she still fits.$b$b$n ho!  Blimey, I can see!!' WHERE `Id`=576; -- Keep An Eye Out
UPDATE `quest_template` SET `OfferRewardText`='Good show, $n!  And just before I need to ship out too!  Can''t thank you enough, old friend.' WHERE `Id`=587; -- Up to Snuff
UPDATE `quest_template` SET `OfferRewardText`='Perfect, $n.  Now that we know their plan, it''s just a matter of time.$b$bAnd to think the fools have dropped anchor just off the cape....' WHERE `Id`=604; -- The Bloodsail Buccaneers
UPDATE `quest_template` SET `OfferRewardText`='Witch Doctor Unbagwa like Gorilla Fangs!  For you I talk to spirits.  Make Mokk the Savage come.$b$bYou protect Witch Doctor Unbagwa from other Gorilla-beast though or no Mokk for you!' WHERE `Id`=349; -- Stranglethorn Fever
UPDATE `quest_template` SET `OfferRewardText`='Ack!  Where''d you get these?  No, don''t tell me. I don''t want to know!$B$BWho sent you?  Sea Wolf?' WHERE `Id`=606; -- Scaring Shaky
UPDATE `quest_template` SET `OfferRewardText`='Ah, very good!  Here is your pay.$B$BAnd here is a little something extra... for your discretion.' WHERE `Id`=621; -- Zanzil's Secret
UPDATE `quest_template` SET `OfferRewardText`='Ah, what a great day for the Blackwater Raiders!  Three cheers to you, $n!' WHERE `Id`=608; -- The Bloodsail Buccaneers
UPDATE `quest_template` SET `OfferRewardText`='Heh heh, well done!  And when you showed Shaky those giblets, how hard did he shake?$B$BHah!  He''s so easy to read, when I play cards with him I can''t help but win!$B$BThanks for your help, $N.  Now it''s your turn to get paid...' WHERE `Id`=607; -- Return to MacKinley
UPDATE `quest_template` SET `OfferRewardText`='...feel strength returning....$b$bWhere might be?  Booty Bay?  Oh my!  I had the strangest dream...$b$b...the weakness has not completely left me....' WHERE `Id`=348; -- Stranglethorn Fever
UPDATE `quest_template` SET `OfferRewardText`='What?! I got a lot better things to do then talk to the likes of you, $c. Make it worth my while or get outta my face.$B$BHuh? Bloads sent ya, huh? Well, whaddaya got for me?$B$B<Privateer Groy looks over the bundle carefully.>$B$BNot bad, not bad at all. Another bundle will make my client quite happy.$B$BI suppose yer next question''s gonna be about money, huh, $c? Of course it is!$B$BHere, take this coin and some advice: get off my docks.' WHERE `Id`=623; -- Akiris by the Bundle
UPDATE `quest_template` SET `OfferRewardText`='James Hyal, James Hyal... Why does that name sound so familiar?$b$bOf course! The Shady Rest Inn incident. If you have any information about what happened there, I would urge you to speak with Captain Vimes about it. He''s handling the investigation.' WHERE `Id`=1302; -- James Hyal
UPDATE `quest_template` SET `OfferRewardText`='What''s this?  Ah!  It smells like Dark Iron Ale!  Drink has blurred my sight, but I can tell that you, $gsir:my lady;, are a real friend!' WHERE `Id`=4295; -- Rocknot's Ale
UPDATE `quest_template` SET `OfferRewardText`='You have the heart!  Amazing!  It is even more beautiful than I imagined!$B$BPlease, $N, take this as payment!' WHERE `Id`=4123; -- The Heart of the Mountain
UPDATE `quest_template` SET `OfferRewardText`='Ah, you found the tablet!  And your transcription is superb!  Are you sure you''re a $c and not a scribe?$B$BHere you are, $N.  Here is the payment I promised.' WHERE `Id`=4296; -- Tablet of the Seven
UPDATE `quest_template` SET `OfferRewardText`='Oh my goodness, you made it! I was uncertain.$B$BYou flickered in and out of the time stream there for a moment during the fight! I thought for sure that we''d lost you!$B$BBut here you are safe and sound, with your past self rescued, on the other side of the time loop you were in.$B$BYou''re quite the temporal $g hero : heroine;, $N!' WHERE `Id`=13343; -- Mystery of the Infinite, Redux
UPDATE `quest_template` SET `OfferRewardText`='<Gerk is dying.>$B$BTh... They say these Vargul are the... the ones that weren''t found worthy by the Lich King. Can... Can you im... imagine it? Just th... think how powerful the... the... worthy must be...$B$BI''ll say a prayer for you in the hereafter, hero... May you never have to face them in number.' WHERE `Id`=12904; -- Light Won't Grant Me Vengeance
UPDATE `quest_template` SET `OfferRewardText`='A... A storm giant? I don''t know about this, $N. That sounds risky. On the other hand, I don''t think we have too many other options.$B$BIf I do this you have to promise me that you will get your giant friend to help us deal with Navarius and his cronies.' WHERE `Id`=12912; -- A Great Storm Approaches
UPDATE `quest_template` SET `OfferRewardText`='Excellent work, $n. The tremors have already begun to subside.$b$bWith any luck, your efforts have granted us sufficient time to find a way to thwart Malygos'' efforts.' WHERE `Id`=11905; -- Postponing the Inevitable
UPDATE `quest_template` SET `OfferRewardText`='Ah, that''s the spice!  Now here''s some swampy good stew.' WHERE `Id`=1218; -- Marsh Frog Legs
UPDATE `quest_template` SET `OfferRewardText`='A report from an orc spy!  How did you find this?  No matter -- let''s see what it says...' WHERE `Id`=1220; -- Captain Vimes
UPDATE `quest_template` SET `OfferRewardText`='The freed captives have already begun returning from Blackhoof Village. The information the captain is receiving from the prisoners will give us an advantage in our next battle against the Grimtotems.$B$BYou have my thanks and that of the men. ' WHERE `Id`=11145; -- Prisoners of the Grimtotems
UPDATE `quest_template` SET `OfferRewardText`='Hm, I''m no expert with the construction of arms and armor. Their use, yes, but not their making.$b$bThis shield seems as ordinary as any, excepting the damage from the fire that engulfed the inn.' WHERE `Id`=1253; -- The Black Shield
UPDATE `quest_template` SET `OfferRewardText`='Hoofprints, eh? It is true that there is an extraordinary amount of centaur activity in the lands near the Dustwallow Marsh. In brief excursions into the Barrens, we found their camps and holdings dotting the area.$b$bI''ll send out Falgran Hastil, one of our trackers, to see if he can find where the tracks lead.' WHERE `Id`=1284; -- Suspicious Hoofprints
UPDATE `quest_template` SET `OfferRewardText`='It''s never good news when a guard''s badge is brought to me.$b$bSometimes it''s a man or woman who''s fallen in battle, and I''m left to bring the news to the grieving family. Other times we never find out what happened to them. And other times it''s even worse than that.' WHERE `Id`=1252; -- Lieutenant Paval Reethe
UPDATE `quest_template` SET `OfferRewardText`='Hello, $n. You''d like information about a specific member of the Theramore guard? Reethe, was it?$b$bJust give me a moment to find the right book.' WHERE `Id`=1259; -- Lieutenant Paval Reethe
UPDATE `quest_template` SET `OfferRewardText`='Missing? That would be Tesoran''s kind way of saying traitor.$b$bNo doubt he''s one of those fools so blindly loyal to Admiral Daelin that he turned traitor.  Isn''t that a delicious irony? The deserters accuse us of betraying the Alliance.' WHERE `Id`=1285; -- Daelin's Men
UPDATE `quest_template` SET `OfferRewardText`='Mr. Ignatz was just here with the bogbean leaves, and he told me you helped him out of some real trouble.$B$BThank you, $N.  I will ask my uncle to treat you to a feast the next time you visit the Blue Recluse in Stormwind.' WHERE `Id`=1222; -- Stinky's Escape
UPDATE `quest_template` SET `OfferRewardText`='You and Renn have done excellent work in bringing this information to light and reporting it immediately. Now, we must confirm your findings. The implications are too great if we are wrong.' WHERE `Id`=11141; -- Jaina Must Know
UPDATE `quest_template` SET `OfferRewardText`='<Lady Jaina listens intently as you report the results of your aerial survey.>$B$BA rune circle, dragonkin? The Defias have allied themselves with HER? The traitor?$B$B<Lady Jaina composes herself and prepares to explain.>' WHERE `Id`=11142; -- Survey Alcaz Island
UPDATE `quest_template` SET `OfferRewardText`='Excellent news, $c!  If our tactical deployments continue to be this successful, the Horde will be in full retreat before long.' WHERE `Id`=24220; -- Call to Arms: Arathi Basin
UPDATE `quest_template` SET `OfferRewardText`='You''ve done well!  That''s less Templars for me to worry about.$B$BHere you go, $N.  Hope there''s something useful in there for you.' WHERE `Id`=8362; -- Abyssal Crests
UPDATE `quest_template` SET `OfferRewardText`='What Huum says is true.  I believe I know how to summon a lord of the Abyssal Council!  Listen on, and I will explain...' WHERE `Id`=8343; -- Goldleaf's Discovery
UPDATE `quest_template` SET `OfferRewardText`='This wine is quite amazing!  I must know where it''s from.' WHERE `Id`=13115; -- Cheese for Glowergold
UPDATE `quest_template` SET `OfferRewardText`='I never cease to be amazed by the horrors that can be created through the use of technology.' WHERE `Id`=24585; -- Flame Leviathan Must Die!
UPDATE `quest_template` SET `OfferRewardText`='<Saurfang grins.>$B$BIt looks familiar... The Might of Kalimdor trampled a thousand bugs like this one in the desert of Silithus.$B$BThis is a different place - a different environment - but the result will be the same.$B$B<Saurfang looks you over.>$B$BYou will bring pride and honor to the Horde in Northrend, $N.$B$B<Saurfang nods.>' WHERE `Id`=11632; -- What the Cold Wind Brings...
UPDATE `quest_template` SET `OfferRewardText`='<Gort takes the tome from you and begins reading.>$B$BWHAT! This can''t be right. I''ve known some of these orcs for years!$B$BLeave me, $N. I have much work to do and many traitors to execute.$B$BTake one of these items for your trouble. You''ve done a great service for the Horde this day.' WHERE `Id`=12136; -- The Translated Tome
UPDATE `quest_template` SET `OfferRewardText`='Icefist, eh?  I''ve heard his name before.  Dat''s some good work, mon.  Hopefully we Darkspear can turn our attention back to dat dragon menace now.  ' WHERE `Id`=12145; -- Canyon Chase
UPDATE `quest_template` SET `OfferRewardText`='There is risk in dispelling the evil from a scourgestone, for it attracts the attention of undead for countless miles.  But you are strong in the Light, $n, and I do not fear for you...' WHERE `Id`=8414; -- Dispelling Evil
UPDATE `quest_template` SET `OfferRewardText`='You have done as I asked without question, $n.$b$bTrust is achieved, it seems.  Perhaps I can reveal our plan in more detail to you now.' WHERE `Id`=8416; -- Inert Scourgestones
UPDATE `quest_template` SET `OfferRewardText`='It''s good to see fresh troops here, $N, but with a little luck you''ll get into some action and won''t be fresh for long!$B$BSpeak with me again.  I have tasks I must discuss with you....' WHERE `Id`=7121; -- The Quartermaster
UPDATE `quest_template` SET `OfferRewardText`='<The deathguard rubs his hands together in anticipation.>$B$BExcellent. Their loss is my... our gain!$B$BYou didn''t have trouble with any of these along the way? Some of them look rather unstable. I may be undead, but I value my existence!' WHERE `Id`=12230; -- Stealing from the Siegesmiths
UPDATE `quest_template` SET `OfferRewardText`='Excellent work, $g sir : ma''am;!$B$BI''ll see to it that the commander is apprised of your mission results.' WHERE `Id`=12562; -- The Drakkari Do Not Need Water Elementals!
UPDATE `quest_template` SET `OfferRewardText`='<Stefan reads the missive, then crumples it up and tosses it into the fire.>$B$BOld news. The Argent Crusade is - once again - late to the party. We''ve been tracking Drakuru since Grizzly Hills. He is slated for eradication.
' WHERE `Id`=12884; -- The Ebon Watch
UPDATE `quest_template` SET `OfferRewardText`='Saved them all, did you? Outstanding!$b$bMaybe you''d consider sticking around the post here? We could sure use someone like you....' WHERE `Id`=12512; -- Leave No One Behind
UPDATE `quest_template` SET `OfferRewardText`='Fine specimens, $n.$b$bOn behalf of my soldiers, I thank you for your efforts today.$b$bCaptain Rupert is likely the next stop on your patrol. He''s stationed at the wall just east of here.' WHERE `Id`=12564; -- Troll Patrol: Something for the Pain
UPDATE `quest_template` SET `OfferRewardText`='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE `Id`=13017; -- Jarten the Elder
UPDATE `quest_template` SET `OfferRewardText`='Just what I wanted to hear!  A victory in Alterac Valley - even a temporary one - is crucial to our overall strategy against the Horde.' WHERE `Id`=11336; -- Call to Arms: Alterac Valley
UPDATE `quest_template` SET `OfferRewardText`='The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth?' WHERE `Id`=8715; -- Bladeleaf the Elder
UPDATE `quest_template` SET `OfferRewardText`='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE `Id`=8680; -- Windtotem the Elder
UPDATE `quest_template` SET `OfferRewardText`='Thank you for heeding Rhonin''s call, brave adventurer.$B$BLet me share with you what we know regarding recent events, and any assistance you might offer would be greatly appreciated.' WHERE `Id`=26012; -- Trouble at Wyrmrest
UPDATE `quest_template` SET `OfferRewardText`='To atone for the sins I committed as one of the Lich King''s Death Knights, I''ve dedicated myself to creating rings of great power for our brothers and sisters to use in the struggle.$B$BYou''ve proven yourself as a valuable ally in the fight against the Scourge, $N.  As your dedication continues I can improve on the ring''s original design.$B$BChoose your path carefully.  A change of heart will come at a price.' WHERE `Id`=24815; -- Choose Your Path
UPDATE `quest_template` SET `OfferRewardText`='You have seen the Chamber of Khaz''mul?  Amazing!  Baelog was sure it existed, but I must admit that I had my doubts.$B$BThank you, $N.  With luck your finding will incite our leaders to renew their efforts to retake Uldaman.  And if it is ever again under Ironforge control, then the secrets of the Chamber of Khaz''mul will be ours!' WHERE `Id`=2240; -- The Hidden Chamber
UPDATE `quest_template` SET `OfferRewardText`='Well done, $N.  Your actions in the field are instrumental in our battle for Hellfire Peninsula.' WHERE `Id`=13408; -- Hellfire Fortifications
UPDATE `quest_template` SET `OfferRewardText`='I have to hand it to you, $N, you''re a fighter born! Those Horde yokels may never know how close they came to the end. It takes real character to step in harm''s way on behalf of your enemies. That''s the kind of honor and commitment that holds the Alliance together!  $B$B<Field Marshal Brock salutes you crisply.>
' WHERE `Id`=10396; -- Enemy of my Enemy...
UPDATE `quest_template` SET `OfferRewardText`='It is fortuitous that you intercepted this missive when you did, $N. Though it will take me some time to decipher, I can already sense the hatred and urgency woven into this scroll. I fear the Legion''s true motives in this land will soon be made evident...$B$BGive me a moment to decipher this script. $B$B<Warp-Scryer Kryv begins to read the demonic missive>    
' WHERE `Id`=10395; -- The Dark Missive
UPDATE `quest_template` SET `OfferRewardText`='Are you certain of your choice, $N?  The Aldor will welcome you as an ally, but the Scryers will not easily forgive your decision.' WHERE `Id`=10551; -- Allegiance to the Aldor
UPDATE `quest_template` SET `OfferRewardText`='Welcome back from your exercises, $N. I''m confident that you will make us proud when the competition starts.' WHERE `Id`=13749; -- A Valiant's Field Training
UPDATE `quest_template` SET `OfferRewardText`='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE `Id`=8654; -- Primestone the Elder
UPDATE `quest_template` SET `OfferRewardText`='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE `Id`=8681; -- Thunderhorn the Elder
UPDATE `quest_template` SET `OfferRewardText`='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE `Id`=8671; -- Ragetotem the Elder
UPDATE `quest_template` SET `OfferRewardText`='$N, you and your allies have spared the tournament from a devastating attack. Though our skytalon riders are brave, they  have their hands full keeping the peace on the tournament grounds and would be hard-pressed to defend the skies against the cult''s attack. You have the thanks of the Argent Crusade and all who have gathered here to compete.' WHERE `Id`=13682; -- Threat From Above
UPDATE `quest_template` SET `OfferRewardText`='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE `Id`=13015; -- Fargal the Elder
UPDATE `quest_template` SET `OfferRewardText`='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE `Id`=13028; -- Graymane the Elder
UPDATE `quest_template` SET `OfferRewardText`='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE `Id`=13020; -- Stonebeard the Elder
UPDATE `quest_template` SET `OfferRewardText`='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE `Id`=13032; -- Muraco the Elder
UPDATE `quest_template` SET `OfferRewardText`='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE `Id`=13027; -- Tauros the Elder
UPDATE `quest_template` SET `OfferRewardText`='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE `Id`=13013; -- Beldak the Elder
UPDATE `quest_template` SET `OfferRewardText`='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE `Id`=13025; -- Lunaro the Elder
UPDATE `quest_template` SET `OfferRewardText`='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE `Id`=13030; -- Whurain the Elder
UPDATE `quest_template` SET `OfferRewardText`='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE `Id`=13019; -- Thoim the Elder
UPDATE `quest_template` SET `OfferRewardText`='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE `Id`=13014; -- Morthie the Elder
UPDATE `quest_template` SET `OfferRewardText`='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE `Id`=13031; -- Skywarden the Elder
UPDATE `quest_template` SET `OfferRewardText`='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE `Id`=13012; -- Sardis the Elder
UPDATE `quest_template` SET `OfferRewardText`='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE `Id`=13033; -- Arp the Elder
UPDATE `quest_template` SET `OfferRewardText`='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE `Id`=13029; -- Pamuya the Elder
UPDATE `quest_template` SET `OfferRewardText`='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE `Id`=13016; -- Northal the Elder
UPDATE `quest_template` SET `OfferRewardText`='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE `Id`=13018; -- Sandrene the Elder
UPDATE `quest_template` SET `OfferRewardText`='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE `Id`=13024; -- Wanikaya the Elder
UPDATE `quest_template` SET `OfferRewardText`='Here is your Dalaran Jewelcrafter''s Token as promised.  Come back tomorrow and I am sure I will have another item I need from you!' WHERE `Id`=12961; -- Shipment: Intricate Bone Figurine
UPDATE `quest_template` SET `OfferRewardText`='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE `Id`=8684; -- Dreamseer the Elder
UPDATE `quest_template` SET `OfferRewardText`='You did it! $N, you are the champion of Zul''Drak!$B$BWe will never be able to repay the debt that we owe to you, but the Zandalari have given into my trust a number of objects they believe you might have an interest in.$B$BPlease, I want you to have a token of our appreciation, but hurry. I sense another issue of urgency!' WHERE `Id`=12730; -- Convocation at Zol'Heb
UPDATE `quest_template` SET `OfferRewardText`='Ay, mon. I been expectin'' you.$B$B<To''bor points west.>$B$BTake a peek. Across dat tundra be death, mon... death.' WHERE `Id`=11634; -- Wind Master To'bor
UPDATE `quest_template` SET `OfferRewardText`='NO MERCY FOR THE DEAD!$B$BNone of ''em had the guts to stay behind to defend our glorious tanks after Hellscream deemed the coast ''condemned.'' It''s mostly quiet here, seein'' as how the Scourge are formin'' up ranks to assault Warsong Hold. Sometimes I get a stray zombie or ghoul, but they don''t last very long.$B$B<Gorge strokes his axe.>$B$B''Course, there''s the mist...$B$B<Gorge shudders.>
' WHERE `Id`=11636; -- Magic Carpet Ride
UPDATE `quest_template` SET `OfferRewardText`='You''re the new tank driver, buddy? Fine by me! We just need to get these things up and running again. Yea, you try to go out into the Plains of Nasam without a tank and you''re as good as dead.' WHERE `Id`=11642; -- Tank Ain't Gonna Fix Itself
UPDATE `quest_template` SET `OfferRewardText`='Great work, buddy! Now where''d I put that pneumatic tank transjigamarig.
' WHERE `Id`=11644; -- Super Strong Metal Plates!
UPDATE `quest_template` SET `OfferRewardText`='<Sadness overcomes Waltor.>$B$BRuin... That is all they leave in their wake. They must be taught a lesson.' WHERE `Id`=11655; -- Into the Mist
UPDATE `quest_template` SET `OfferRewardText`='Great work, buddy! Now where''d I put those spare parts...' WHERE `Id`=11643; -- Mobu's Pneumatic Tank Transjigamarig
UPDATE `quest_template` SET `OfferRewardText`='It seems that the loss of their lieutenant has only stirred the nest. They are more angry and aggressive than before!$B$B<Waltor sighs.>$B$BYou''ve done what you can here, friend. At the very least you deserve some form of compensation for thinning their numbers.
' WHERE `Id`=11661; -- Orabus the Helmsman
UPDATE `quest_template` SET `OfferRewardText`='This is it? Hellscream sent a single $r $g boy:girl;?$B$BIf I still had a jaw it would be on the floor right now.' WHERE `Id`=11618; -- Reinforcements Incoming...
UPDATE `quest_template` SET `OfferRewardText`='Most of them made it back. The ones smart enough to know that we''re inside the gigantic metal and stone building, anyway...$B$BRegardless, a job well done. I hear you sprung more than a couple peons loose.$B$BOh yes, you''re the talk of the... um... fortress.' WHERE `Id`=11611; -- Taken by the Scourge
UPDATE `quest_template` SET `OfferRewardText`='Kel''Thuzad? So it''s true - Naxxramas returns...$B$BPerhaps I underestimated you, $N. You''ve done the Horde a great service. The Warchief would be proud!$B$B<Garrosh pauses to think.>$B$BIf Kel''Thuzad is controlling these Scourge, there''s no telling what else the Lich King has in store for us... I''ll need time to think through this new information, $N. You are dismissed.' WHERE `Id`=11652; -- The Plains of Nasam
UPDATE `quest_template` SET `OfferRewardText`='You are foolish to come here, little $r.$B$BWhat is it that you seek?' WHERE `Id`=11624; -- The Sky Will Know
UPDATE `quest_template` SET `OfferRewardText`='I am pleased, though no doubt they will still continue to quarrel a bit longer.$B$BHowever, there is something else that you will need to accomplish before you can return to your spirit talker.' WHERE `Id`=11627; -- Boiling Point
UPDATE `quest_template` SET `OfferRewardText`='I regret the loss of those tempests, but my word is my bond... even to a mortal such as yourself.$B$BNow, let us see if we can fashion something of use to you.' WHERE `Id`=11649; -- Motes of the Enraged
UPDATE `quest_template` SET `OfferRewardText`='Imperean gave you a primal essence of herself? I can hear its howling winds!$B$BI know a ritual we can make use of it in. We must hurry before her primal rips itself apart!' WHERE `Id`=11629; -- Return to the Spirit Talker
UPDATE `quest_template` SET `OfferRewardText`='They''ve shackled his spirit. $N, we have to put an end to his torture!$B$BYou must descend into the bowels of Magmoth and find a way to free him!' WHERE `Id`=11631; -- Vision of Air
UPDATE `quest_template` SET `OfferRewardText`='These are for me? Is this some sort of $r trick? No?$B$BWell then, thank you! Come back any time that you have more clams, and we''ll do business!' WHERE `Id`=11559; -- Winterfin Commerce
UPDATE `quest_template` SET `OfferRewardText`='It does not surprise me that the orc chieftain does not have time to hear of our troubles. The ambassador''s efforts will likely be like so much mist blowing in the wind.$B$BBut you are here now. We shall see if he chose well in sending you.' WHERE `Id`=11888; -- Ride to Taunka'le Village
UPDATE `quest_template` SET `OfferRewardText`='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE `Id`=8652; -- Graveborn the Elder
UPDATE `quest_template` SET `OfferRewardText`='May you find what you''re looking for, $g brother:sister;.' WHERE `Id`=24819; -- A Change of Heart
UPDATE `quest_template` SET `OfferRewardText`='At last, we have live specimens to study! You have helped to save countless lives this day, $N.$B$BPlease, take this as a token of thanks for this great deed.' WHERE `Id`=24873; -- Residue Rendezvous
UPDATE `quest_template` SET `OfferRewardText`='You continue to prove yourself, $N.  Accept this, not as a gift, but as a tool for the fight against the Scourge.' WHERE `Id`=24823; -- Path of Destruction
UPDATE `quest_template` SET `OfferRewardText`='May you find what you''re looking for, $g brother:sister;.' WHERE `Id`=24840; -- A Change of Heart
UPDATE `quest_template` SET `OfferRewardText`='The giant is dead? Praise the Light!$B$BThe way onward and upward is clear. Take some of these spoils of the battle as a token of our gratitude, and we will drink together in celebration once the Frozen Throne has been ground to dust!' WHERE `Id`=24871; -- Securing the Ramparts
UPDATE `quest_template` SET `OfferRewardText`='I trust that you did not have to face too many of his iron construct assistants?' WHERE `Id`=24587; -- Ignis the Furnace Master Must Die!
UPDATE `quest_template` SET `OfferRewardText`='Now that is what I call dedication!  Those traitors might have a new master now, but they''ll never forget their sisters'' parting gift.' WHERE `Id`=12953; -- Valkyrion Must Burn
UPDATE `quest_template` SET `OfferRewardText`='The val''kyr are nothing but the Lich King''s lapdogs.  They will be put down like the scum they are.  They''ve made their choice, now they have to live with the consequences.' WHERE `Id`=12942; -- Off With Their Black Wings
UPDATE `quest_template` SET `OfferRewardText`='Yulda had it coming.  No one gets away with insulting the Hyldsmeet.  Not even one of our own.' WHERE `Id`=12968; -- Yulda's Folly
UPDATE `quest_template` SET `OfferRewardText`='You have our thanks, sister.  We cannot allow our valiant traditions to be corrupted.' WHERE `Id`=12925; -- Aberrations
UPDATE `quest_template` SET `OfferRewardText`='Your efforts appear to have been successful, sister.$b$bYou have brought glory to the Brunnhildar!' WHERE `Id`=12856; -- Cold Hearted
UPDATE `quest_template` SET `OfferRewardText`='So, sister, you think that completing a few simple chores makes you a heroine?$b$bYou shall learn....' WHERE `Id`=13063; -- Deemed Worthy
UPDATE `quest_template` SET `OfferRewardText`='These will do nicely.  I''ll have the harness ready for you in no time.' WHERE `Id`=12900; -- Making a Harness
UPDATE `quest_template` SET `OfferRewardText`='I''m impressed.  I never thought I would see an icemaw matriarch again.  Especially not one this size.' WHERE `Id`=12983; -- The Last of Her Kind
UPDATE `quest_template` SET `OfferRewardText`='The jormungar are vile creatures.  You did well in destroying them.' WHERE `Id`=12989; -- The Slithering Darkness
UPDATE `quest_template` SET `OfferRewardText`='Not bad.  I was hoping Kirgaraak would snap your neck so I could keep your bear.$B$BJust joking, sister.  Well... half-joking.  That''s a really nice bear you''ve got.' WHERE `Id`=12996; -- The Warm-Up 
UPDATE `quest_template` SET `OfferRewardText`='You really did it!  You made it out with your health.  Wish we could say the same for your bear.$B$BIt''s going to take a while for her to recover.  Fortunately you won''t need her for a while.' WHERE `Id`=12997; -- Into the Pit
UPDATE `quest_template` SET `OfferRewardText`='You''ve really made it this far.  Never would I have thought you''d progress so quickly among the hyldnir.' WHERE `Id`=13061; -- Prepare for Glory
UPDATE `quest_template` SET `OfferRewardText`='Are you ready to ride, sister?  There is no coming back.' WHERE `Id`=13062; -- Lok'lira's Parting Gift
UPDATE `quest_template` SET `OfferRewardText`='Your bravery seems boundless, $N.$B$BPlease hand me the heart and the essence, and I will fashion them into that which will compel the prophet to appear before you.' WHERE `Id`=12729; -- The Gods Have Spoken
UPDATE `quest_template` SET `OfferRewardText`='Above the stale, unwashed stench, you catch a whiff of a familiar smell!  It appears as if this once-mighty adventurer has a real love for kungaloosh.$b$bPeeking through the bars, you can barely make out the recipe written on his arm....' WHERE `Id`=13571; -- Fletcher's Lost and Found
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Ghostlands bonfire!' WHERE `Id`=11774; -- Desecrate this Fire!
UPDATE `quest_template` SET `OfferRewardText`='Oh, bless ya, $N, bless ya!$B$BJust set ''em down right where yer standin''. I''ll have one o'' the boys come load ''em up soon enough and we can stop worryin'' ''bout runnin'' out o'' balls ta shoot at Skorn.' WHERE `Id`=11190; -- One Size Does Not Fit All
UPDATE `quest_template` SET `OfferRewardText`='This will make a fine meal for the men.$B$B<The chef leans in closer to whisper in your ear.>$B$BHere, $g boy : deary;, take some for yourself. You look like you could use some more meat on your bones!' WHERE `Id`=11155; -- Shoveltusk Soup Again?
UPDATE `quest_template` SET `OfferRewardText`='Incredible! What skill!$B$BThought you''d be easy prey, $N. Got me good, you did.$B$BHere''s the coin I promised... not as much as I said it''d be, but that''s on a count o'' me lying to ya in the first place.' WHERE `Id`=590; -- A Rogue's Deal
UPDATE `quest_template` SET `OfferRewardText`='Honor the Tirisfal Glades flame.' WHERE `Id`=11862; -- Honor the Flame
UPDATE `quest_template` SET `OfferRewardText`='Captain Perrine''s death will undoubtedly please The Dark Lady.  You have performed your duty well, $c.' WHERE `Id`=370; -- At War With The Scarlet Crusade
UPDATE `quest_template` SET `OfferRewardText`='Varimathras would be proud.  You serve your leaders well, $c.' WHERE `Id`=374; -- Proof of Demise
UPDATE `quest_template` SET `OfferRewardText`='It is troubling to hear of the Scourge slipping past the Bulwark.  The Lich King and his minions are ceaseless in their assaults.$B$BBut we will not give in.  He will not take us again!' WHERE `Id`=360; -- Return to the Magistrate
UPDATE `quest_template` SET `OfferRewardText`='Captain Vachon''s death will slow down the Scarlet Crusade''s advancement in Tirisfal quite a bit.  But other threats loom.' WHERE `Id`=371; -- At War With The Scarlet Crusade
UPDATE `quest_template` SET `OfferRewardText`='The ore gave you a strange feeling? Maybe we won''t use that stuff after all.$B$B<Steelring looks at the stuff and takes a step back, changing the subject.>$B$BThose gems look really nice! I wonder what I can get for them? Of course, there are always repairs, and new stuff to be made.$B$BYou know, I''ve really found working with you to be profitable. Take this... it''s the least that I can do!' WHERE `Id`=11218; -- Danger! Explosives!
UPDATE `quest_template` SET `OfferRewardText`='Well timed, $c!$B$BThe Pit of Saron lies ahead, and if our scouts are correct, past that will be the Halls of Reflection. It is there that Arthas lets his guard down, and it is there that we hope to find a clue to his weakness... and a route to vengeance long overdue.' WHERE `Id`=24511; -- Echoes of Tortured Souls
UPDATE `quest_template` SET `OfferRewardText`='Incapable fools. I begin to wonder if any of these louts from the tournament will be of any use at all. Perhaps you''ll prove me wrong.' WHERE `Id`=24682; -- The Pit of Saron
UPDATE `quest_template` SET `OfferRewardText`='You''ve done well this day. With many of the slaves freed and now with access to the forges, it will not be long before I have a strong force to aid in delivering us from Scourgelord Tyrannus and this foul pit.' WHERE `Id`=24507; -- The Path to the Citadel
UPDATE `quest_template` SET `OfferRewardText`='The Halls of Reflection lie ahead. If what that vile gnome said is to be trusted, Frostmourne should be there, and with it, answers to confronting Arthas.' WHERE `Id`=24712; -- Deliverance from the Pit
UPDATE `quest_template` SET `OfferRewardText`='The Halls of Reflection. Finally.$B$BLet me know when you are ready, $c. I will not be so naive as to think that Arthas left his precious sword entirely unguarded.' WHERE `Id`=24713; -- Frostmourne
UPDATE `quest_template` SET `OfferRewardText`='Yet again, vengeance slips through my grasp. It''s hard to believe how much stronger he''s gotten.$B$BIt was foolish of you to come for me, but it''s good to know that there are still some champions of the Horde that aren''t useless cowards. The information Uther gave us may well be key to finally killing Arthas, though it is becoming more and more clear that the Horde will not be able to accomplish this on their own.$B$BGo, $c. I expect your prowess may be needed again very soon.' WHERE `Id`=24802; -- Wrath of the Lich King
UPDATE `quest_template` SET `OfferRewardText`='Excellent! This will help fuel the flames of war for days to come. ' WHERE `Id`=236; -- Fueling the Demolishers
UPDATE `quest_template` SET `OfferRewardText`='You continue to prove yourself, $N.  Accept this, not as a gift, but as a tool for the fight against the Scourge.' WHERE `Id`=24828; -- Path of Destruction
UPDATE `quest_template` SET `OfferRewardText`='Stew looks good.  Thanks for your help.' WHERE `Id`=13114; -- Sewer Stew
UPDATE `quest_template` SET `OfferRewardText`='I have never seen such terror in the eyes of a vrykul. They think themselves masters of their world.$B$BYou and I are going to prove them wrong. Very wrong.' WHERE `Id`=13091; -- The Art of Being a Water Terror
UPDATE `quest_template` SET `OfferRewardText`='It''s about damned time! No doubt that Baron Sliver took his sweet time in sending you to me.$B$BI should have that empty space above his shoulders removed!' WHERE `Id`=12806; -- To the Rise with all Due Haste!
UPDATE `quest_template` SET `OfferRewardText`='In their folly, the Argent Crusade has chosen to turn a blind eye upon the presence of the Scarlet Onslaught. We will not.$B$BWe do not care if they might assist in the battle against the Lich King. We do not believe them worthy of existence. We will be their end, once and for all!' WHERE `Id`=12807; -- The Story Thus Far...
UPDATE `quest_template` SET `OfferRewardText`='I thought so!  I couldn''t quite make out the destruction from here, but I can imagine how it must have looked.  Splendid!$B$BWell done, $n.  Thrallmar command will be happy to hear of your success!' WHERE `Id`=10087; -- Burn It Up... For the Horde!
UPDATE `quest_template` SET `OfferRewardText`='Well done, $C, That''s one less forge camp we''ll need to worry about. It''ll take the Legion a while to get that facility back up and running. You''ve just bought us the one thing we''d run out of - time. 
' WHERE `Id`=10390; -- Forge Camp: Mageddon
UPDATE `quest_template` SET `OfferRewardText`='Now Veranus can finally rest in peace.' WHERE `Id`=24586; -- Razorscale Must Die!
UPDATE `quest_template` SET `OfferRewardText`='That will keep our recruits fed!   Here''s how you cook it.' WHERE `Id`=13088; -- Northern Cooking
UPDATE `quest_template` SET `OfferRewardText`='Honor the Stranglethorn Vale flame.' WHERE `Id`=11832; -- Honor the Flame
UPDATE `quest_template` SET `OfferRewardText`='As a hero of the Stormpike, you may choose one item from these recently plun... er, recovered treasures.' WHERE `Id`=8271; -- Hero of the Stormpike
UPDATE `quest_template` SET `OfferRewardText`='You are brave to have carried this.  If even one drop were to touch your skin, you''d have died an agonizing death.$b$bAllow me to pay you for it... I can always use venom of exceptional potency.' WHERE `Id`=13845; -- Sealed Vial of Poison
UPDATE `quest_template` SET `OfferRewardText`='Well done, $N. I''ll take these to the Argent Crusade''s keepers right away. They''ll have no choice but to acknowledge that we''re doing far more than the Sunreavers to keep the coliseum running smoothly.' WHERE `Id`=14076; -- Breakfast Of Champions
UPDATE `quest_template` SET `OfferRewardText`='He''s a fine specimen and will serve us well.$B$BNow, we have to make sure to use him properly to trap Vardmadra!' WHERE `Id`=13133; -- Find the Ancient Hero
UPDATE `quest_template` SET `OfferRewardText`='<Narasi accepts the prayer book from you.>$B$BThank you. The book was a gift from Confessor Paletress herself. She would  be honored to know that you have used it to bring tranquility to the slain.' WHERE `Id`=14077; -- The Light's Mercy
UPDATE `quest_template` SET `OfferRewardText`='At last, we can finally fish in peace! ''Course, by the time we catch anything, the expedition''ll arrive and claim it all for themselves.$B$BYou have our thanks, $N. Don''t be a stranger ''round here.' WHERE `Id`=11410; -- The One That Got Away
UPDATE `quest_template` SET `OfferRewardText`='<Lurielle listens as you introduce yourself.>$B$BIt is good to finally meet you, $N. We have long hoped that you and the other newcomers might send representatives. We don''t often venture beyond the borders of our glades, especially amid the changes the land is going through.' WHERE `Id`=11302; -- The Enigmatic Frost Nymphs
UPDATE `quest_template` SET `OfferRewardText`='<Lurielle accepts the cores from you quietly.>$B$BThank you, $N.$B$B<Lurielle glances at the icy cores sadly.>$B$BI promise, my friends, I will do all I can to restore you.' WHERE `Id`=11313; -- Spirits of the Ice
UPDATE `quest_template` SET `OfferRewardText`='Thank you for your help, $N. The Vibrant Glade was once a beautiful place, and when we return to it, we shall make it so again.' WHERE `Id`=11315; -- Wild Vines
UPDATE `quest_template` SET `OfferRewardText`='So there is hope for my sisters?$B$B<Lurielle looks away from you, then down at the ground.>$B$BI feel guilty for not thinking of the pendant sooner. We might have saved even more of the sisters.' WHERE `Id`=11314; -- The Fallen Sisters
UPDATE `quest_template` SET `OfferRewardText`='Thank goodness! This should be enough to finish the order in time. Of course, I won''t sleep until the troops arrive, but that''s far better than risking Captain Adams'' wrath.$B$BI''ve heard the stories they tell about him!' WHERE `Id`=11269; -- Down to the Wire
UPDATE `quest_template` SET `OfferRewardText`='<Trapper Jethan inspects the creatures you''ve brought him.>$B$BNicely done. Some of these will fetch a better price than others, but I should have plenty to trade with the locals.' WHERE `Id`=11292; -- Preying Upon the Weak
UPDATE `quest_template` SET `OfferRewardText`='Beaut! Yer a good one you are.$B$BTilt one back wi'' me! Let us celebrae'' this glorious find!' WHERE `Id`=12870; -- Ancient Relics
UPDATE `quest_template` SET `OfferRewardText`='Medical supplies? Thank you! Not exactly sure what to do with them to be honest, but I''m sure they''ll be useful.$B$BIt''s good to meet you... there''s such a colorful variety among your peoples. We''re not used to having visitors up this way very often - it''s good to have some fresh company.' WHERE `Id`=12863; -- Offering Thanks
UPDATE `quest_template` SET `OfferRewardText`='<Archaeologist Andorin looks at you expectantly.>$B$BYou were supposed to come back with Brann, not a piece of paper. What''s going on here?' WHERE `Id`=12854; -- On Brann's Trail
UPDATE `quest_template` SET `OfferRewardText`='When a scout doesn''t come back for this long... that''s about the expected result. The harpies then?$B$BKing Stormheart has us train hard year round... he''s turned us into amazing fighters. At times like this, I understand why it''s necessary. He''s the wisest and strongest leader I''ve yet seen among our people... don''t let his peachy skin fool ya.' WHERE `Id`=12864; -- Missing Scouts
UPDATE `quest_template` SET `OfferRewardText`='Good stuff, $G lad:lass;. You''re making fast friends.$B$BIf you stop back by soon, I''m sure we can find one that will let you ride... they should know that you''re trustworthy now.' WHERE `Id`=12867; -- Baby Stealers
UPDATE `quest_template` SET `OfferRewardText`='It''s done then. Thank you.$B$BI''ve spoken with Fjorlin - he said that his men will take charge of keeping the harpies down a bit. As long as we don''t let up again, they won''t find the courage to think they can attack our people.$B$BI know this wasn''t the most tasteful work - take this as a token of my appreciation.' WHERE `Id`=12868; -- Sirana Iceshriek
UPDATE `quest_template` SET `OfferRewardText`='That''s one less thorn in our side. With Noth destroyed, Scourge research into refining the means of creating the undead will grind to a halt.' WHERE `Id`=24581; -- Noth the Plaguebringer Must Die!
UPDATE `quest_template` SET `OfferRewardText`='I underestimated this Scourgelord, and it''s my men that paid for it. When I think that my guilt over Arthas'' betrayal cannot go any deeper, he proves me wrong yet again.$B$BWe have to press on. We cannot let their sacrifice be meaningless.' WHERE `Id`=24683; -- The Pit of Saron
UPDATE `quest_template` SET `OfferRewardText`='You''ve done well this day. With many of the slaves freed and now with access to the forges, it will not be long before I have a strong force to aid in delivering us from Scourgelord Tyrannus and this foul pit.' WHERE `Id`=24498; -- The Path to the Citadel
UPDATE `quest_template` SET `OfferRewardText`='Such a senseless waste! Arthas goes too far! I can only hope what we find in the Halls of Reflection makes this somehow worth it.$B$BIf what that vile gnome said is to be trusted, Frostmourne should be there, and with it, answers to confronting Arthas.' WHERE `Id`=24710; -- Deliverance from the Pit
UPDATE `quest_template` SET `OfferRewardText`='The Halls of Reflection. Finally.$B$BLet me know when you are ready. Arthas may not be here, but it would be naive to think that he would leave Frostmourne unguarded entirely.' WHERE `Id`=24711; -- Frostmourne
UPDATE `quest_template` SET `OfferRewardText`='<Urik points to a gryphon.>$B$BHave you ever ridden one of those? It''s simple, friend. Just hop on and tell it where to go.
' WHERE `Id`=12235; -- Naxxramas and the Fall of Wintergarde
UPDATE `quest_template` SET `OfferRewardText`='<Jaina is still catching her breath.>$B$BI can barely believe we''re still alive. It was foolish of me to follow him. I''ve made that mistake too many times.  And you... it was reckless of you to come after me instead of escaping with the information! But... well... thank you. You truly are a hero.$B$BWith Uther''s guidance, we may stand a chance at defeating Arthas. All the lives lost today were not in vain.' WHERE `Id`=24500; -- Wrath of the Lich King
UPDATE `quest_template` SET `OfferRewardText`='<Bruor listens as you describe what you learned in the workshop.>$B$BSo Valduran''s master has given him this sinister metal to construct a giant weapon? That must be what he intends to use for the final strike against us! We need to stop him before he''s able to complete it and unleash this weapon.' WHERE `Id`=12980; -- The Armor's Secrets
UPDATE `quest_template` SET `OfferRewardText`='<Bouldercrag begins to look over the documents, his eyes wide.>$B$BI had no idea the irons were capable of this! Our men will have no chance against this behemoth if it''s completed. Fortunately, it looks like they''re still lacking a key part.' WHERE `Id`=12993; -- A Colossal Threat

-- RequestItemsText
UPDATE `quest_template` SET `RequestItemsText`='How might I be of service to you, young one?  Are you here to rest in the inn?  Do you require a hearthstone?' WHERE `Id`=2159; -- Dolanaar Delivery
UPDATE `quest_template` SET `RequestItemsText`='Yes, young one? What can Kauth do for you?$B$BThe journey here from the Mesa can be a tremendous burden for some, but a welcome sight for others. Which is it for you, I wonder?' WHERE `Id`=1656; -- A Task Unfinished
UPDATE `quest_template` SET `RequestItemsText`='It takes a lot of work to be the strongest woman alive!  My weight set is getting too light and if I''m to stay fit then I''ll need more weights!$B$BDo you think you could bring me some weight stones?  If you do, then I''ll give you a Darkmoon Faire ticket.' WHERE `Id`=7889; -- Coarse Weightstone
UPDATE `quest_template` SET `RequestItemsText`='The first lesson in drawing a crowd is: lure them with gadgets and trinkets!  Can you help me?$B$BI need small furry paws to use for prizes.  You can find those on the cats of the Barrens or Darkshore....$B$BBring me some paws and I''ll trade you a Darkmoon Faire ticket for them.' WHERE `Id`=7899; -- Small Furry Paws
UPDATE `quest_template` SET `RequestItemsText`='Yebb is developing a new attraction for the Zoo Bizarre, one that will drive people crazy with wonder, and delight!  But it will take a lot of work, and a lot of materials...$B$BThat includes copper modulators.  We need lots of modulators for the mechanical parts of the attraction.  Bring me copper modulators and I''ll trade for them with a Darkmoon Faire ticket.' WHERE `Id`=7894; -- Copper Modulator
UPDATE `quest_template` SET `RequestItemsText`='We at the Darkmoon Faire do much walking.  We walk from one faire site to another... in fact, you''ll never see us sitting down on the job!  So it is no surprise that we wear out quite a lot of boots!  We need boots that are both durable and stylish, and embossed leather boots fit that bill rather well.$B$BYou!  You''re a leatherworker; make me embossed leather boots and I''ll give you a Darkmoon Faire ticket for the work.' WHERE `Id`=7881; -- Carnival Boots
UPDATE `quest_template` SET `RequestItemsText`='King Varian has placed great importance on learning, and thus has provided funds for making copies of various tomes and writings available to the public. It''s very simple. You bring me a library scrip, and I can give you a copy of one of the available books.' WHERE `Id`=579; -- Stormwind Library
UPDATE `quest_template` SET `RequestItemsText`='My runes, $N?  Do you have them?' WHERE `Id`=12841; -- The Crone's Bargain
UPDATE `quest_template` SET `RequestItemsText`='You will be richly rewarded for your service to me.$B$B<The darkspeaker projects soothing feelings into your mind.>$B$BYou will not regret unfettering me.' WHERE `Id`=13308; -- Mind Tricks
UPDATE `quest_template` SET `RequestItemsText`='Do you have 8 Trogg Stone Teeth to show me?  If not, there is still work to be done, $N.' WHERE `Id`=267; -- The Trogg Threat
UPDATE `quest_template` SET `RequestItemsText`='You appear to have uncovered the wreckage of... a robotic chicken?  The voice from within the egg crackles to life again:$B$B\"Yes, excellent work!  This is indeed my homing robot, though my sensors indicate that it needs a jump start before it can fly back to Booty Bay for repairs.  Go ahead and place the beacon inside the rover.  The beacon will take care of the rest!\"' WHERE `Id`=351; -- Find OOX-17/TN!
UPDATE `quest_template` SET `RequestItemsText`='Got the five Wastewander water pouches we need?  If you do, then the Gadgetzan Water Company Care Package, Model 103-XB, will be yours!' WHERE `Id`=1707; -- Water Pouch Bounty
UPDATE `quest_template` SET `RequestItemsText`='Yes $c, I am an official of the Gadgetzan Water Company.  What can I assist you with?' WHERE `Id`=2781; -- WANTED: Caliph Scorpidsting
UPDATE `quest_template` SET `RequestItemsText`='You look a little dazed.  Have you been reading our legal documents?' WHERE `Id`=2875; -- WANTED: Andre Firebeard
UPDATE `quest_template` SET `RequestItemsText`='The cries seem somehow... fainter than they were before. The Light grant it''s more than wishful thinking.' WHERE `Id`=10047; -- The Path of Glory
UPDATE `quest_template` SET `RequestItemsText`='The Legion could start shelling the Horde at any time, $N! You need to destroy those blasted cannons! 
' WHERE `Id`=10396; -- Enemy of my Enemy...
UPDATE `quest_template` SET `RequestItemsText`='Do you have the broodling essence, $N?  I can''t wait to study it.$B$BAnd besides that... my patron is not the type of person you want to disappoint.' WHERE `Id`=4726; -- Broodling Essence
UPDATE `quest_template` SET `RequestItemsText`='Hey, $N.  Been to the Grizzled Den yet?  Those Wendigos can be fierce.' WHERE `Id`=313; -- The Grizzled Den
UPDATE `quest_template` SET `RequestItemsText`='Preparations are going well.  How goes your hunting?' WHERE `Id`=317; -- Stocking Jetsteam
UPDATE `quest_template` SET `RequestItemsText`='Hmph!  There  is all this booze down here, but I have strict orders not to touch it.  If only I could get a taste of some of our Thunder Ale...that would sharpen my wits, no lying!' WHERE `Id`=308; -- Distracting Jarven
UPDATE `quest_template` SET `RequestItemsText`='Do you have that shimmerweed?  I almost have a batch of stout ready to brew, and I want to try throwing the weed in with this mixture.' WHERE `Id`=315; -- The Perfect Stout
UPDATE `quest_template` SET `RequestItemsText`='Hello, $C!  And what business takes you all the way out here?$B$BSomething exciting, I hope.  I haven''t been in a good fight in days, and this barrel of ale is almost dry...' WHERE `Id`=413; -- Shimmer Stout
UPDATE `quest_template` SET `RequestItemsText`='I see you are back, $c.  Have you collected 10 Red Wool Bandanas from those Defias Scum in The Stockade yet?' WHERE `Id`=388; -- The Color of Blood
UPDATE `quest_template` SET `RequestItemsText`='Loch Modan is under siege, $N!  We need every able-bodied member of the Alliance to aid our cause.  Have you killed 10 Stonesplinter Troggs and 10 Stonesplinter Scouts yet?' WHERE `Id`=224; -- In Defense of the King's Lands
UPDATE `quest_template` SET `RequestItemsText`='I know my plan was brilliant. Don''t even worry about it.$B$BDoes it feel good to be in the presence of greatness? A little tingly maybe?' WHERE `Id`=12828; -- Ample Inspiration
UPDATE `quest_template` SET `RequestItemsText`='If Janks were here, I could have just sent him on this errand. Oh... on second thought... I''m not sure I told him where the safe path is anyway.$B$BGood thing I have you resourceful adventure types around, eh?' WHERE `Id`=12819; -- Just Around the Corner
UPDATE `quest_template` SET `RequestItemsText`='Hi there.  Do you have something for me?' WHERE `Id`=13836; -- Disarmed!
UPDATE `quest_template` SET `RequestItemsText`='Stand easy, $N. What have you to report?
' WHERE `Id`=13139; -- Into The Frozen Heart Of Northrend
UPDATE `quest_template` SET `RequestItemsText`='Well met, $c. I knew that you would return, despite my warnings, but I''m pleased that you heeded my desire to not risk anyone else.$B$BWhy have you come back to me?' WHERE `Id`=13075; -- The Boon of Remulos
UPDATE `quest_template` SET `RequestItemsText`='You want to talk about the bounty for Haghazed?  Well, is he dead?  There isn''t much else to talk about!' WHERE `Id`=9730; -- Leader of the Darkcrest
UPDATE `quest_template` SET `RequestItemsText`='We have to have something we can use to insulate our engines against this cold... think, Jeer, think!$B$BOh hey! Did you get some of that wreckage for me?' WHERE `Id`=12818; -- Clean Up
UPDATE `quest_template` SET `RequestItemsText`='Any luck with our equipment, $N?' WHERE `Id`=12844; -- Equipment Recovery
UPDATE `quest_template` SET `RequestItemsText`='Hello, $c.  What have you there? Is it for me?' WHERE `Id`=9409; -- Urgent Delivery!
UPDATE `quest_template` SET `RequestItemsText`='Hello, $c.  Do you have those flowers yet?' WHERE `Id`=9799; -- Botanical Legwork
UPDATE `quest_template` SET `RequestItemsText`='I''ll need all of the samples in good condition if we''re to have a chance of cleansing the lake.$B$BWe don''t have much time, $c!' WHERE `Id`=9293; -- What Must Be Done...
UPDATE `quest_template` SET `RequestItemsText`='The more we can do to clear up Nestlewood, the faster Zhanaa can get back to work.' WHERE `Id`=9303; -- Inoculation
UPDATE `quest_template` SET `RequestItemsText`='Together, the Broken and the draenei will regain a deeper understanding of the mysteries that the elements hold.$B$BHave you returned with that which is necessary for the creation of your earth totem?' WHERE `Id`=9451; -- Call of Earth
UPDATE `quest_template` SET `RequestItemsText`='The stag hides are frail which tend to make for tender, succulent flesh.' WHERE `Id`=9454; -- The Great Moongraze Hunt
UPDATE `quest_template` SET `RequestItemsText`='Do not waste time, $g boy:girl;.' WHERE `Id`=9473; -- An Alternative Alternative
UPDATE `quest_template` SET `RequestItemsText`='Have you done what I asked of you, $N?' WHERE `Id`=11913; -- Take No Chances
UPDATE `quest_template` SET `RequestItemsText`='Reporting from Honor Hold, $n?  That''s good -- our campaign against the demons and the fel orcs is running thin on able bodies!' WHERE `Id`=10483; -- Ill Omens
UPDATE `quest_template` SET `RequestItemsText`='The ring, $N!  Please... tell me you''ve found it!' WHERE `Id`=12624; -- It Could Be Anywhere!
UPDATE `quest_template` SET `RequestItemsText`='You find anything yet, $N?' WHERE `Id`=12699; -- An Embarassing Incident
UPDATE `quest_template` SET `RequestItemsText`='Any luck with the bloodtooth?  Don''t forget what I told you about making blood pools.' WHERE `Id`=13833; -- Blood Is Thicker
UPDATE `quest_template` SET `RequestItemsText`='What is it that you''ve found, $N?' WHERE `Id`=24442; -- Battle Plans Of The Kvaldir
UPDATE `quest_template` SET `RequestItemsText`='Watch where you''re stepping!  Watch watch watch!!  This is delicate stuff you see here, and if we''re to win then it must all work perfectly!' WHERE `Id`=1179; -- The Brassbolts Brothers
UPDATE `quest_template` SET `RequestItemsText`='Tell me, $N, has the deed been done? Has the Legionlord been vanquished? 
' WHERE `Id`=10400; -- Overlord
UPDATE `quest_template` SET `RequestItemsText`='We need to get this information to the Alliance! It may well be the key to Arthas'' defeat.' WHERE `Id`=24500; -- Wrath of the Lich King
UPDATE `quest_template` SET `RequestItemsText`='We are currently accepting donations for wool cloth.  A donation of sixty pieces of wool cloth will net you full recognition by the Gnomeregan Exiles for your generous actions.  Our stores are such on wool that we would only need sixty pieces from you total; we should be able to acquire enough from others in the realm to support our drive.$B$BIf you have the sixty pieces of wool cloth on you and are ready to donate them, I''m able to take them from you now.' WHERE `Id`=7807; -- A Donation of Wool
UPDATE `quest_template` SET `RequestItemsText`='As with most other fabrics, our stocks of silk are at an all-time low.  Our stores are such that we''d only need sixty pieces of silk from you total; we should be able to reach our goal with the support of others.$B$BA benevolent gift such as silk, might I add, would certainly increase your local standing in the community!  If you have the sixty pieces of silk cloth on you and are ready to donate them, I''m able to take them from you now.' WHERE `Id`=7808; -- A Donation of Silk
UPDATE `quest_template` SET `RequestItemsText`='<Hansel is busily rubbing his bunions.>$B$BDon''t just stand there, grab some oil and a luffa and get to scrubbin'' these bunions.$B$BYe don''t have a luffa? Well then! Perhaps it''s time I sent you out to find a luffa?$B$BHey, where are ye goin''?' WHERE `Id`=7727; -- Incendosaurs? Whateverosaur is More Like It
UPDATE `quest_template` SET `RequestItemsText`='Eight, $N. I need eight!	' WHERE `Id`=3443; -- Forging the Shaft
UPDATE `quest_template` SET `RequestItemsText`='Don''t let the crazy goggles fool you, $N. I''m the smart one here.' WHERE `Id`=7702; -- Kill 'Em With Sleep Deprivation
UPDATE `quest_template` SET `RequestItemsText`='Let''s not waste more of my precious time with jibber jabber, $r. It''s time to focus on replenishing our dwindling fiery flux supply.$B$BWhat I''m gonna need from you is the following:$B$B*Incendosaur scales.$B$B*Heavy Leather.$B$B*Coal.$B$BI''ll take all that you can offer!$B$BAnd you''ll do it fast if you wanna get in good with the Brotherhood.
' WHERE `Id`=8242; -- Restoring Fiery Flux Supplies via Heavy Leather
UPDATE `quest_template` SET `RequestItemsText`='You''ve worked your way up through the Brotherhood''s corporate hierarchy, $r. We have begun to look favorably upon you. Quite an accomplishment!$B$BIf you''re interested in more work and earning more respect amongst us, listen up.$B$BWe can refine the fiery flux by adding a simple Dark Iron residue to the mix. The Dark Iron residue can be found in Blackrock Depths.$B$BBring me all the Dark Iron residue you find!' WHERE `Id`=7737; -- Gaining Even More Acceptance
UPDATE `quest_template` SET `RequestItemsText`='You''ve worked your way up through the Brotherhood''s corporate hierarchy, $r. We have begun to look favorably upon you. Quite an accomplishment!$B$BIf you''re interested in more work and earning more respect amongst us, listen up.$B$BWe can refine the fiery flux by adding a simple Dark Iron residue to the mix. The Dark Iron residue can be found in Blackrock Depths.$B$BBring me all the Dark Iron residue you find!' WHERE `Id`=13662; -- Gaining Acceptance
UPDATE `quest_template` SET `RequestItemsText`='The Thorium Brotherhood sympathizes with your plight, $r. This is why Lokthos has been empowered to bargain.$B$BOffer 1 Lava Core and you shall be granted favor amongst the Brotherhood.' WHERE `Id`=6644; -- Favor Amongst the Brotherhood, Lava Core
UPDATE `quest_template` SET `RequestItemsText`='No ordinary tributes were good enough for the great Hodir when he walked among the frost giants.$B$BHe might not be with us anymore, but we''ve kept the tradition of offering tribute to his strength and wisdom.  It would do much for your renown to partake in this tradition, small $c.' WHERE `Id`=13559; -- Hodir's Tribute
UPDATE `quest_template` SET `RequestItemsText`='Did you obtain the eggs, $N?' WHERE `Id`=13050; -- Veranus
UPDATE `quest_template` SET `RequestItemsText`='The power of this chapel gives me the strength to resist the corruption in my heart.  If I leave it, I will become a death knight.   But there is a medallion, the medallion of faith, that will give me the strength I need to leave.$B$BPlease, $N, retrieve the medallion.  It is guarded by Malor the Zealous, a crazed member of the Scarlet Crusade who resides deep in the Scarlet Bastion in western Stratholme.' WHERE `Id`=5122; -- The Medallion of Faith
UPDATE `quest_template` SET `RequestItemsText`='Wine is only as fine as the person drinking it, I always say.' WHERE `Id`=24431; -- Waterlogged Recipe
UPDATE `quest_template` SET `RequestItemsText`='The Monastery was a seminary for Paladins-in-training. Once a stronghold of the Light, it fell into the hands of the crazed zealots of the Scarlet Crusade.$b$bThe Crusade believed their goal a noble one: to purify the land of the undead plague. But insanity tainted their plight and now they stand enemies to all.$b$bBring Mythology of the Titans to me so I can study it and house it here in Ironforge.$b$bThe corrupt halls of the Monastery are no place for such a historical treasure.' WHERE `Id`=1050; -- Mythology of the Titans
UPDATE `quest_template` SET `RequestItemsText`='I''m not one for politics; I care not if your affiliations are for either Horde or Alliance.  I am more interested in squelching direct and dire threats to all the races... and we have quite a large one in here.$B$BIf you''re willing to be a true hero for all people, then hand me the oathstone I have given you as a sign of commitment.  I''m... not from around these parts; an oathstone is important to people of my kind as a bond of agreement.' WHERE `Id`=3523; -- Scourge of the Downs
UPDATE `quest_template` SET `RequestItemsText`='Ach, $N!  It''s good to see you, little one.' WHERE `Id`=13047; -- The Reckoning
UPDATE `quest_template` SET `RequestItemsText`='Bhag''thera can prove to be an elusive beast.  How fares the hunt?' WHERE `Id`=193; -- Panther Mastery
UPDATE `quest_template` SET `RequestItemsText`='How goes the hunt for Tethis?  Tracked her all the way back to camp, did you?' WHERE `Id`=197; -- Raptor Mastery
UPDATE `quest_template` SET `RequestItemsText`='I see you''re back, $g old bloke : lass;.  King Bangalash has caused me to come crawling back to camp many times.  Hang in there.' WHERE `Id`=208; -- Big Game Hunter
UPDATE `quest_template` SET `RequestItemsText`='Arrr... Yarr... Shiver me timbers... Er, sorry $g lad:lass;, I gotta practice me pirate lest I forget it...' WHERE `Id`=9512; -- Cookie's Jumbo Gumbo
UPDATE `quest_template` SET `RequestItemsText`='As you near the essence font that Eranikus told you of, his voice once again touches your mind.$B$B\"Yes mortal, this essence font will redeem what untainted element of my psyche remains imbued in this gem.  Place the gem inside the font, and let the magic of the Green Dragonflight cleanse the corruption and taint from my being.  Only then will I find true release, and only then will the Dragonflight be able to reassert their stewardship over the Atal''ai.\"' WHERE `Id`=3373; -- The Essence of Eranikus
UPDATE `quest_template` SET `RequestItemsText`='Here''s the plan, $n: Go out and collect some bloodpetal sprouts -- you know, the plants that haven''t fully sprouted yet, and bring them here. Then I''ll see what the Atal''ai haze can do.$B$BYou may think I''m vengeful... Actually, you''d be right about that! $B$BTruth is, I know the way out of here, but until Larion will admit that I''m right, I''m staying right here!$B$BSo off with you, find those bloodpetal sprouts and let''s have some fun!' WHERE `Id`=4144; -- Bloodpetal Sprouts
UPDATE `quest_template` SET `RequestItemsText`='Do not let fear overpower you, $N. Fear is the great betrayer... you must remain strong!$B$BTake the meat, place it in the small valley, and then use the gland on it. Only then will death come for you.' WHERE `Id`=4292; -- The Bait for Lar'korwi
UPDATE `quest_template` SET `RequestItemsText`='$C - you approach us in a peaceful manner, but I sense that you are here on matters that are grave and severe... for both furbolg and $r alike.  What have you come to tell us?' WHERE `Id`=8471; -- Winterfall Ritual Totem
UPDATE `quest_template` SET `RequestItemsText`='Ahoy, me bucko!  Might not be able to see but I can smell ye from halfway across port.$b$bCould really use me eye back.  Captain''s going to keelhaul me when he finds out me peeper is in the hands of them dirty Bloodsail Buccaneers.$b$bWhat good is a lookout who can''t see?  The crow''s nest used to be me home...without me deadlights I''d be lucky to scrub the bilge.' WHERE `Id`=576; -- Keep An Eye Out
UPDATE `quest_template` SET `RequestItemsText`='Ahoy, $n.  What word do you bring of the Bloodsail encampment to the south?' WHERE `Id`=604; -- The Bloodsail Buccaneers
UPDATE `quest_template` SET `RequestItemsText`='Witch Doctor Unbagwa know what Mokk the Savage like.  Yes, yes!$b$bMe speak with spirits and make he come, I do.$b$bBut other Gorilla-beast like spirit talkin'' too.  You protect Witch Doctor Unbagwa and I make he come to you.$b$bWitch Doctor Unbagwa want something first.  You bring a Gorilla Fang and me start spirit talking!' WHERE `Id`=349; -- Stranglethorn Fever
UPDATE `quest_template` SET `RequestItemsText`='Hey!  I don''t like the look you''re giving me, $gmister:lady;.' WHERE `Id`=606; -- Scaring Shaky
UPDATE `quest_template` SET `RequestItemsText`='Here here, $N.  Did you get Shaky''s payment?' WHERE `Id`=607; -- Return to MacKinley
UPDATE `quest_template` SET `RequestItemsText`='Do you have the writings of the Seven, $N?  Have you learned the secrets from their tablet?' WHERE `Id`=4296; -- Tablet of the Seven
UPDATE `quest_template` SET `RequestItemsText`='I really don''t know if this plan will work, $N. Just bring me the scrap metal and I''ll do what I can.' WHERE `Id`=12901; -- Making Something Out Of Nothing
UPDATE `quest_template` SET `RequestItemsText`='Well met, $c. What brings you out here?' WHERE `Id`=11138; -- Renn McGill
UPDATE `quest_template` SET `RequestItemsText`='You''ve proved you can handle yourself in a fight, $N.  Let''s keep the pressure up on the Twilight''s Hammer.  Go fight some more Abyssal Templars, I''ll reward you with some of the stuff Huum and I have found in battle.' WHERE `Id`=8362; -- Abyssal Crests
UPDATE `quest_template` SET `RequestItemsText`='Have you seen a servant with my wine and cheese platter.  I am quite peckish!' WHERE `Id`=13115; -- Cheese for Glowergold
UPDATE `quest_template` SET `RequestItemsText`='Their spirits are low, soldier. After our last failed air strike against the Horde, they refuse to fly! It is up to you to bolster their morale.$B$BReturn to the battlefield and strike at the heart of the Frostwolf''s command. Take down their commanders and guardians. Return to me with as many of their medals as you can stuff in your pack! I promise you, when my gryphons see the bounty and smell the blood of our enemies, they will fly again! Go now!' WHERE `Id`=6943; -- Call of Air - Ichman's Fleet
UPDATE `quest_template` SET `RequestItemsText`='You are the delivery $g boy:girl;?' WHERE `Id`=12182; -- To Venomspite!
UPDATE `quest_template` SET `RequestItemsText`='What''s all this?$B$BBy any chance have you seen my no-good apprentice, Pestlepot?$B$BI sent him on an errand quite some time ago and he has yet to return!' WHERE `Id`=12527; -- Gluttonous Lurkers
UPDATE `quest_template` SET `RequestItemsText`='Have you collected the water-poppies, $n?' WHERE `Id`=12564; -- Troll Patrol: Something for the Pain
UPDATE `quest_template` SET `RequestItemsText`='You seek to change the path you walk, $N?' WHERE `Id`=24819; -- A Change of Heart
UPDATE `quest_template` SET `RequestItemsText`='You close down that war-portal yet, $N? While you''re here shuffling your feet, there are more demons entering Outland! 
' WHERE `Id`=10397; -- Invasion Point: Annihilator
UPDATE `quest_template` SET `RequestItemsText`='What is it, $C? I sense you''ve found something that speaks of a coming doom.
' WHERE `Id`=10395; -- The Dark Missive
UPDATE `quest_template` SET `RequestItemsText`='I sense a growing darkness within your heart, $C. Have you faced your fear? Or does it still await you at the Pools of Aggonar?  
' WHERE `Id`=10399; -- The Heart of Darkness
UPDATE `quest_template` SET `RequestItemsText`='$N, you have returned. What did you learn?$B$BWhat is that sound?' WHERE `Id`=11629; -- Return to the Spirit Talker
UPDATE `quest_template` SET `RequestItemsText`='What''s this? Who are you?$B$BYou''re one of those $r things! How can you speak our tongue?' WHERE `Id`=11559; -- Winterfin Commerce
UPDATE `quest_template` SET `RequestItemsText`='You seek to continue down the path of destruction?' WHERE `Id`=24823; -- Path of Destruction
UPDATE `quest_template` SET `RequestItemsText`='You seek to change the path you walk, $N?' WHERE `Id`=24840; -- A Change of Heart
UPDATE `quest_template` SET `RequestItemsText`='As you draw near, the forge''s flame seems to burn even more ravenously...' WHERE `Id`=24545; -- The Sacred and the Corrupt
UPDATE `quest_template` SET `RequestItemsText`='Did you find the hides yet?  You''ll find yeti in the hills below.' WHERE `Id`=12900; -- Making a Harness
UPDATE `quest_template` SET `RequestItemsText`='Do you have that which is required, $N?' WHERE `Id`=12729; -- The Gods Have Spoken
UPDATE `quest_template` SET `RequestItemsText`='We''re runnin'' dangerously low on rounds ''round here, $c. Our enemies need poundin'', especially Skorn!$B$BYa got more balls fer us?' WHERE `Id`=11190; -- One Size Does Not Fit All
UPDATE `quest_template` SET `RequestItemsText`='Have you collected 10 Scarlet Insignia Rings yet, $c?' WHERE `Id`=374; -- Proof of Demise
UPDATE `quest_template` SET `RequestItemsText`='You seek to continue down the path of destruction?' WHERE `Id`=24828; -- Path of Destruction
UPDATE `quest_template` SET `RequestItemsText`='You seek to change the path you walk, $N?' WHERE `Id`=24836; -- A Change of Heart
UPDATE `quest_template` SET `RequestItemsText`='Have you scouted all of the Blood Furnace yet?  What do you have to tell me?' WHERE `Id`=9608; -- Heart of Rage
UPDATE `quest_template` SET `RequestItemsText`='The tears of the Fire Lord are a rare find indeed.$B$BOffer 1 Blood of the Mountain and you shall be granted favor amongst the Brotherhood. 
' WHERE `Id`=6646; -- Favor Amongst the Brotherhood, Blood of the Mountain
-- Update Felboar
SET @ENTRY := 21878;
UPDATE `creature` SET `spawndist`=5,`MovementType`=1,`curhealth`=1,`spawntimesecs`=300 WHERE `id`=@ENTRY;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
UPDATE `creature_template_addon` SET `bytes2`=1,`auras`='33908' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,100,100,30000,55000,11,35570,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Felboar - Combat - Cast charge');

-- Update Dormant Infernal
SET @ENTRY := 21080;
UPDATE `creature_template_addon` SET `bytes2`=1,`auras`='36055' WHERE `entry`=@ENTRY;

-- Update Kagrosh
SET @ENTRY := 21725;
UPDATE `creature_template_addon` SET `bytes2`=1,`auras`='29266' WHERE `entry`=@ENTRY;
UPDATE `creature` SET `position_x`=-3421.365,`position_y`=2289.388,`position_z`=33.63479,`orientation`=3.874631 WHERE `guid`=86869;
DELETE FROM `creature` WHERE `guid`=86870;

-- Update Invis Deathforge Caster
SET @ENTRY := 21210;
DELETE FROM `creature_template_addon` WHERE `entry`=@ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`bytes2`,`auras`) VALUES (@ENTRY,1,'36393');
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|128 WHERE `entry`=@ENTRY;
-- Fix up Shadowmoon Harbinger
SET @ENTRY := 21795;
UPDATE `creature` SET `spawndist`=5,`MovementType`=1,`curhealth`=1,`curmana`=0 WHERE `id`=@ENTRY;
UPDATE `creature_template` SET `AIName`='' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `creature_template_addon` WHERE `entry`=@ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`bytes2`,`auras`) VALUES (@ENTRY,1,'37467 37509');
-- Bron Goldhammer SAI
SET @ENTRY := 19395;
SET @SPELL := 33822;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
UPDATE `creature_template` SET `AIName`= '' WHERE `entry`=19394;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (@ENTRY,19394);
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,30000,30000,100000,100000,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Bron Goldhammer - OOC - Run Script'),
(@ENTRY*100,9,0,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,11,19394,15,0,0,0,0,0, 'Bron Goldhammer - Script - Barimoke Wildbeard Say 0'),
(@ENTRY*100,9,1,0,0,0,100,0,6000,6000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Bron Goldhammer - Script - Bron Goldhammer Say 0'),
(@ENTRY*100,9,2,0,0,0,100,0,3000,3000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Bron Goldhammer - Script - Bron Goldhammer Say 1'),
(@ENTRY*100,9,3,0,0,0,100,0,3000,3000,0,0,1,1,0,0,0,0,0,11,19394,15,0,0,0,0,0, 'Bron Goldhammer - Script - Barimoke Wildbeard Say 1'),
(@ENTRY*100,9,4,0,0,0,100,0,3000,3000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Bron Goldhammer - Script - Bron Goldhammer Say 2'),
(@ENTRY*100,9,5,0,0,0,100,0,2000,2000,0,0,1,2,0,0,0,0,0,11,19394,15,0,0,0,0,0, 'Bron Goldhammer - Script - Barimoke Wildbeard Say 2'),
(@ENTRY*100,9,6,0,0,0,100,0,2500,2500,0,0,11,@SPELL,3,0,0,0,0,11,19394,15,0,0,0,0,0, 'Bron Goldhammer - Script - cast spell'),
(@ENTRY*100,9,7,0,0,0,100,0,1000,1000,0,0,90,7,0,0,0,0,0,11,19394,15,0,0,0,0,0, 'Bron Goldhammer - Script - Barimoke Wildbeard set bytes 1'),
(@ENTRY*100,9,8,0,0,0,100,0,3000,3000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Bron Goldhammer - Script - Bron Goldhammer Say 3'),
(@ENTRY*100,9,9,0,0,0,100,0,2000,2000,0,0,91,7,0,0,0,0,0,11,19394,15,0,0,0,0,0, 'Bron Goldhammer - Script - Barimoke Wildbeard remove bytes 1'),
(@ENTRY*100,9,10,0,0,0,100,0,500,500,0,0,1,3,0,0,0,0,0,11,19394,15,0,0,0,0,0, 'Bron Goldhammer - Script - Barimoke Wildbeard Say 3');
-- Bron Goldhammer text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-325,-326,-327,-328);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, '%s blinks, a perplexed expression crossing his face.',16,0,100,0,0,0, 'Bron Goldhammer'),
(@ENTRY,1,0, 'What, with me fists?',12,0,100,6,0,0, 'Bron Goldhammer'),
(@ENTRY,2,0, 'I''m... not sure that''s a good idea, ''Moke. Ye might get hurt...',12,0,100,1,0,0, 'Bron Goldhammer'),
(@ENTRY,3,0, 'Er... ''Moke?',12,0,100,6,0,0, 'Bron Goldhammer');
-- Barimoke Wildbeard text
SET @ENTRY  := 19394;
UPDATE `creature_template_addon` SET `bytes1`=0 WHERE `entry`=@ENTRY;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-329,-330,-331,-332);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'Bron! ''Ey Bron! ''Ey Bron! Hit me!',12,0,100,1,0,0, 'Barimoke Wildbeard'),
(@ENTRY,1,0, 'Nae, that''s fer wimps. Hit me with yer hammer!',12,0,100,274,0,0, 'Barimoke Wildbeard'),
(@ENTRY,2,0, 'DO IT, YE PANSEY!',12,0,100,5,0,0, 'Barimoke Wildbeard'),
(@ENTRY,3,0, '...THAT WAS GREAT!',12,0,100,5,0,0, 'Barimoke Wildbeard');
-- Kolkar Pack Runner SAI
SET @ENTRY := 3274;
SET @SPELL := 9128;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `creature_ai_summons` WHERE `id`=8;
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-769);
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,@SPELL,32,0,0,0,0,1,0,0,0,0,0,0,0, 'Kolkar Pack Runner - On Aggro - Cast Battle Shout'),
(@ENTRY,0,1,2,6,0,3,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Kolkar Pack Runner - On Death 3% - Say 0'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,12,3395,4,60000,0,0,0,8,0,0,0,-1209.65,-2738.38,102.646,4.99352, 'Kolkar Pack Runner - On Death 3% - Summon Verog the Dervish');
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'I am slain! Summon Verog!',14,0,100,0,0,0, 'Kolkar Pack Runner');

-- Kolkar Marauder SAI
SET @ENTRY := 3275;
SET @SPELL := 11976;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,80,0,12000,12000,7000,7000,11,@SPELL,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Kolkar Marauder - Combat - Cast Strike'),
(@ENTRY,0,1,2,6,0,3,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Kolkar Marauder - On Death 3% - Say 0'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,12,3395,4,60000,0,0,0,8,0,0,0,-1209.65,-2738.38,102.646,4.99352, 'Kolkar Marauder - On Death 3% - Summon Verog the Dervish');
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'I am slain! Summon Verog!',14,0,100,0,0,0, 'Kolkar Marauder');

-- Kolkar Bloodcharger SAI
SET @ENTRY := 3397;
SET @SPELL1 := 6742;
SET @SPELL2 := 172;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,35000,35000,10000,10000,11,@SPELL1,32,0,0,0,0,1,0,0,0,0,0,0,0, 'Kolkar Bloodcharger - Combat - Cast Bollodlust'),
(@ENTRY,0,1,0,0,0,100,0,20000,20000,5000,5000,11,@SPELL2,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Kolkar Bloodcharger - Combat - Cast Corruption'),
(@ENTRY,0,2,3,6,0,3,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Kolkar Bloodcharger - On Death 3% - Say 0'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,12,3395,4,60000,0,0,0,8,0,0,0,-1209.65,-2738.38,102.646,4.99352, 'Kolkar Bloodcharger - On Death 3% - Summon Verog the Dervish');
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'I am slain! Summon Verog!',14,0,100,0,0,0, 'Kolkar Bloodcharger');

-- Clara Charles SAI
SET @ENTRY := 5917;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `creature_ai_summons` WHERE `id` BETWEEN 7 AND 19;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,10,0,100,1,1,15,0,0,12,583,4,60000,0,0,0,8,0,0,0,-9232.11,342.473,74.4399,4.31658, 'Clara Charles - On LOS - Summon Defias Ambusher');

-- Defias Dockmaster SAI
SET @ENTRY := 6846;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-232);
DELETE FROM `creature_ai_summons` WHERE `id` IN (4,5,6);
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Defias Dockmaster - On Aggro - Say 0'),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,6866,4,60000,0,0,0,8,0,0,0,-9967.55,-135.956,24.5909,0.170326, 'Defias Dockmaster - On Aggro - Summon Defias Bodyguard'),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,12,6866,4,60000,0,0,0,8,0,0,0,-9958.49,-140.526,24.2409,4.0015, 'Defias Dockmaster - On Aggro - Summon Defias Bodyguard'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,12,6866,4,60000,0,0,0,8,0,0,0,-9964.59,-140.567,24.5105,0.741307, 'Defias Dockmaster - On Aggro - Summon Defias Bodyguard');
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'The Brotherhood will not be hampered by insects.',12,0,100,0,0,0, 'Defias Dockmaster');

-- Mekgineer Thermaplugg SAI
SET @ENTRY := 7800;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-188,-189,-190,-191);
DELETE FROM `creature_ai_summons` WHERE `id` IN (2,3);
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,3,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mekgineer Thermaplugg - On Aggro - Say 0'),
(@ENTRY,0,1,0,5,0,100,2,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mekgineer Thermaplugg - On Kill - Say 3'),
(@ENTRY,0,2,0,0,0,100,2,40000,40000,40000,60000,11,11130,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Mekgineer Thermaplugg - Combat - Cast Knock Away'),
(@ENTRY,0,3,0,0,0,100,2,15000,15000,15000,35000,11,10101,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Mekgineer Thermaplugg - Combat - Cast Knock Away'),
(@ENTRY,0,4,5,0,0,100,2,30000,30000,30000,30000,12,7915,4,60000,0,0,0,8,0,0,0,-521.934,693.13,-327.005,2.95, 'Mekgineer Thermaplugg - Combat - Summon Walking Bomb'),
(@ENTRY,0,5,6,61,0,100,0,0,0,0,0,12,7915,4,60000,0,0,0,8,0,0,0,-535.318,649.987,-326.494,2.72, 'Mekgineer Thermaplugg - Combat - Summon Walking Bomb'),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mekgineer Thermaplugg - Combat - Say 2'),
(@ENTRY,0,7,0,0,0,100,2,20000,20000,40000,65000,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mekgineer Thermaplugg - Combat - Say 1');
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'USURPERS!!! GNOMEREGAN IS MINE!!!',14,0,100,0,0,5807, 'Mekgineer Thermaplugg'),
(@ENTRY,1,0, 'My machines are the future! They''ll destroy you all!',14,0,100,0,0,5808, 'Mekgineer Thermaplugg'),
(@ENTRY,2,0, 'Explosions! MORE explosions! I''ve got to have more explosions!',14,0,100,0,0,5809, 'Mekgineer Thermaplugg'),
(@ENTRY,3,0, '...and stay dead! He got served!',14,0,100,0,0,5810, 'Mekgineer Thermaplugg');

-- Shy-Rotam SAI
SET @ENTRY := 10737;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `creature_ai_summons` WHERE `id` IN (1);
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,5000,5000,10000,11,14100,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Shy-Rotam - Combat - Cast Terrifying Roar'),
(@ENTRY,0,1,0,0,0,100,0,7000,9000,22000,27000,11,13443,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Shy-Rotam - Combat - Cast Rend'),
(@ENTRY,0,2,0,0,0,100,0,2000,3000,15000,20000,11,3604,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Shy-Rotam - Combat - Cast Tendon Rip'),
(@ENTRY,0,3,0,0,0,100,1,0,50,0,0,12,10741,1,180000,0,0,0,8,0,0,0,8074.84,-3840,690.061,4.6, 'Shy-Rotam - @50%HP - Summon Sian-Rotam');

-- Jammal'an the Prophet SAI
SET @ENTRY := 5710;
SET @QUEST_SOULGRINDER := 11000;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-821,-822,-823,-824);
DELETE FROM `creature_ai_summons` WHERE `id` IN (20,21);
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,10,0,100,0,0,85,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jammal'an the Prophet - On OOC Los - Say Line 0 (P0)"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jammal'an the Prophet - On OOC Los - Set Phase 1"),
(@ENTRY,0,2,0,0,1,100,0,0,0,31400,76200,1,1,0,0,0,0,0,2,0,0,0,0,0,0,0,"Jammal'an the Prophet - In Combat - Say Line 2"),
(@ENTRY,0,3,0,0,1,100,0,8100,35600,20100,52900,11,12468,0,0,0,0,0,2,0,0,0,0,0,0,0,"Jammal'an the Prophet - In Combat - Cast Flamestrike"),
(@ENTRY,0,4,0,0,1,100,0,6200,16500,26100,36600,11,8376,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jammal'an the Prophet - In Combat - Cast Earthgrab Totem"),
(@ENTRY,0,5,6,1,1,100,0,16300,19900,31400,53500,11,12479,0,0,0,0,0,2,0,0,0,0,0,0,0,"Jammal'an the Prophet - In Combat - Cast Hex of Jammal'an"),
(@ENTRY,0,6,0,61,1,100,0,0,0,0,0,1,2,0,0,0,0,0,2,0,0,0,0,0,0,0,"Jammal'an the Prophet - On Hex of Jammal'an Cast - Say Line 1"),
(@ENTRY,0,7,8,2,1,100,1,0,30,0,0,11,12492,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jammal'an the Prophet - At 30% HP - Cast Healing Wave"),
(@ENTRY,0,8,0,61,1,100,0,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jammal'an the Prophet - At 30% HP - Say Line 3"),
(@ENTRY,0,9,0,5,1,100,0,0,0,0,0,4,5863,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jammal'an the Prophet - Killed Unit - Play Sound 5863"),
(@ENTRY,0,10,11,6,1,100,0,0,0,0,0,12,5721,1,300000,0,0,0,8,0,0,0,-472.02,105.823,-94.6299,0.0301925,"Jammal'an the Prophet - On Death - Summon Dreamscyte"),
(@ENTRY,0,11,0,61,1,100,0,0,0,0,0,12,5720,1,300000,0,0,0,8,0,0,0,-467.099,85.2944,-94.7318,3.95326,"Jammal'an the Prophet - On Death - Summon Weaver");
-- Jammal'an the Prophet text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"The shield be down! Rise up Atal'ai! Rise up!",14,0,100,0,0,0,"Jammal'an the Prophet"), -- 821
(@ENTRY,1,0,"Join us!",14,0,100,0,0,0,"Jammal'an the Prophet"), -- 823
(@ENTRY,2,0,"The Soulflayer comes!",14,0,100,0,0,0,"Jammal'an the Prophet"), -- 822
(@ENTRY,3,0,"Hakkar shall live again!",14,0,100,0,0,0,"Jammal'an the Prophet"); -- 824
-- Add some missing gossip for winterspring
UPDATE `creature_template` SET `gossip_menu_id`=3049 WHERE `entry`=10918;
DELETE FROM `gossip_menu` WHERE `entry`=3049;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (3049,3758);
UPDATE `creature_template` SET `gossip_menu_id`=7046 WHERE `entry`=16015;
DELETE FROM `gossip_menu` WHERE `entry`=7046;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7046,8292);
DELETE FROM `gossip_menu_option` WHERE `menu_id`=7046 AND `id` IN (0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES 
(7046,0,1, 'Hey Vi''el, show me your wares!',3,128,0,0,0,0, '');
UPDATE `creature_template` SET `gossip_menu_id`=9821 WHERE `entry`=11119;
UPDATE `creature_template` SET `gossip_menu_id`=6092 WHERE `entry`=14742;
DELETE FROM `gossip_menu` WHERE `entry`=6092;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (6092,7249);
UPDATE `creature_template` SET `gossip_menu_id`=6091 WHERE `entry`=11193;
DELETE FROM `gossip_menu` WHERE `entry`=6091;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (6091,7247);
UPDATE `creature_template` SET `gossip_menu_id`=6089 WHERE `entry`=11192;
DELETE FROM `gossip_menu` WHERE `entry`=6089;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (6089,7243);
UPDATE `creature_template` SET `gossip_menu_id`=6090 WHERE `entry`=11191;
DELETE FROM `gossip_menu` WHERE `entry`=6090;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (6090,7245);
UPDATE `creature_template` SET `gossip_menu_id`=10466 WHERE `entry`=33558;
UPDATE `creature_template` SET `gossip_menu_id`=10471 WHERE `entry`=33561;
UPDATE `creature_template` SET `gossip_menu_id`=10465 WHERE `entry`=33562;

SET @OLDGOSSIP := 21000;
SET @NEWGOSSIP := 9935;
UPDATE `creature_template` SET `gossip_menu_id`=@NEWGOSSIP WHERE `gossip_menu_id`=@OLDGOSSIP;
UPDATE `gossip_menu` SET `entry`=@NEWGOSSIP WHERE `entry`=@OLDGOSSIP;
UPDATE `gossip_menu_option` SET `menu_id`=@NEWGOSSIP WHERE `menu_id`=@OLDGOSSIP;
UPDATE `conditions` SET `SourceGroup`=@NEWGOSSIP WHERE `SourceGroup`=@OLDGOSSIP AND `SourceTypeOrReferenceId`=15;

SET @OLDGOSSIP := 21007;
SET @NEWGOSSIP := 9941;
UPDATE `creature_template` SET `gossip_menu_id`=@NEWGOSSIP WHERE `gossip_menu_id`=@OLDGOSSIP;
UPDATE `gossip_menu` SET `entry`=@NEWGOSSIP WHERE `entry`=@OLDGOSSIP;
UPDATE `gossip_menu_option` SET `menu_id`=@NEWGOSSIP WHERE `menu_id`=@OLDGOSSIP;
UPDATE `conditions` SET `SourceGroup`=@NEWGOSSIP WHERE `SourceGroup`=@OLDGOSSIP AND `SourceTypeOrReferenceId`=15;

SET @OLDGOSSIP := 21024;
SET @NEWGOSSIP := 9937;
UPDATE `creature_template` SET `gossip_menu_id`=@NEWGOSSIP WHERE `gossip_menu_id`=@OLDGOSSIP;
UPDATE `gossip_menu` SET `entry`=@NEWGOSSIP WHERE `entry`=@OLDGOSSIP;
UPDATE `gossip_menu_option` SET `menu_id`=@NEWGOSSIP WHERE `menu_id`=@OLDGOSSIP;
UPDATE `conditions` SET `SourceGroup`=@NEWGOSSIP WHERE `SourceGroup`=@OLDGOSSIP AND `SourceTypeOrReferenceId`=15;

SET @OLDGOSSIP := 21038;
SET @NEWGOSSIP := 9938;
UPDATE `creature_template` SET `gossip_menu_id`=@NEWGOSSIP WHERE `gossip_menu_id`=@OLDGOSSIP;
UPDATE `gossip_menu` SET `entry`=@NEWGOSSIP WHERE `entry`=@OLDGOSSIP;
UPDATE `gossip_menu_option` SET `menu_id`=@NEWGOSSIP WHERE `menu_id`=@OLDGOSSIP;
UPDATE `conditions` SET `SourceGroup`=@NEWGOSSIP WHERE `SourceGroup`=@OLDGOSSIP AND `SourceTypeOrReferenceId`=15;

SET @OLDGOSSIP := 21049;
SET @NEWGOSSIP := 9931;
UPDATE `creature_template` SET `gossip_menu_id`=@NEWGOSSIP WHERE `gossip_menu_id`=@OLDGOSSIP;
UPDATE `gossip_menu` SET `entry`=@NEWGOSSIP WHERE `entry`=@OLDGOSSIP;
UPDATE `gossip_menu_option` SET `menu_id`=@NEWGOSSIP WHERE `menu_id`=@OLDGOSSIP;
UPDATE `conditions` SET `SourceGroup`=@NEWGOSSIP WHERE `SourceGroup`=@OLDGOSSIP AND `SourceTypeOrReferenceId`=15;

SET @OLDGOSSIP := 21067;
SET @NEWGOSSIP := 9945;
UPDATE `creature_template` SET `gossip_menu_id`=@NEWGOSSIP WHERE `gossip_menu_id`=@OLDGOSSIP;
UPDATE `gossip_menu` SET `entry`=@NEWGOSSIP WHERE `entry`=@OLDGOSSIP;
UPDATE `gossip_menu_option` SET `menu_id`=@NEWGOSSIP WHERE `menu_id`=@OLDGOSSIP;
UPDATE `conditions` SET `SourceGroup`=@NEWGOSSIP WHERE `SourceGroup`=@OLDGOSSIP AND `SourceTypeOrReferenceId`=15;

SET @OLDGOSSIP := 21048;
SET @NEWGOSSIP := 9946;
UPDATE `creature_template` SET `gossip_menu_id`=@NEWGOSSIP WHERE `gossip_menu_id`=@OLDGOSSIP;
UPDATE `gossip_menu` SET `entry`=@NEWGOSSIP WHERE `entry`=@OLDGOSSIP;
UPDATE `gossip_menu_option` SET `menu_id`=@NEWGOSSIP WHERE `menu_id`=@OLDGOSSIP;
UPDATE `conditions` SET `SourceGroup`=@NEWGOSSIP WHERE `SourceGroup`=@OLDGOSSIP AND `SourceTypeOrReferenceId`=15;

SET @OLDGOSSIP := 21039;
SET @NEWGOSSIP := 9948;
UPDATE `creature_template` SET `gossip_menu_id`=@NEWGOSSIP WHERE `gossip_menu_id`=@OLDGOSSIP;
UPDATE `gossip_menu` SET `entry`=@NEWGOSSIP WHERE `entry`=@OLDGOSSIP;
UPDATE `gossip_menu_option` SET `menu_id`=@NEWGOSSIP WHERE `menu_id`=@OLDGOSSIP;
UPDATE `conditions` SET `SourceGroup`=@NEWGOSSIP WHERE `SourceGroup`=@OLDGOSSIP AND `SourceTypeOrReferenceId`=15;

SET @OLDGOSSIP := 21065;
SET @NEWGOSSIP := 9953;
UPDATE `creature_template` SET `gossip_menu_id`=@NEWGOSSIP WHERE `gossip_menu_id`=@OLDGOSSIP;
UPDATE `gossip_menu` SET `entry`=@NEWGOSSIP WHERE `entry`=@OLDGOSSIP;
UPDATE `gossip_menu_option` SET `menu_id`=@NEWGOSSIP WHERE `menu_id`=@OLDGOSSIP;
UPDATE `conditions` SET `SourceGroup`=@NEWGOSSIP WHERE `SourceGroup`=@OLDGOSSIP AND `SourceTypeOrReferenceId`=15;

SET @OLDGOSSIP := 21035;
SET @NEWGOSSIP := 9954;
UPDATE `creature_template` SET `gossip_menu_id`=@NEWGOSSIP WHERE `gossip_menu_id`=@OLDGOSSIP;
UPDATE `gossip_menu` SET `entry`=@NEWGOSSIP WHERE `entry`=@OLDGOSSIP;
UPDATE `gossip_menu_option` SET `menu_id`=@NEWGOSSIP WHERE `menu_id`=@OLDGOSSIP;
UPDATE `conditions` SET `SourceGroup`=@NEWGOSSIP WHERE `SourceGroup`=@OLDGOSSIP AND `SourceTypeOrReferenceId`=15;

SET @OLDGOSSIP := 21010;
SET @NEWGOSSIP := 9959;
UPDATE `creature_template` SET `gossip_menu_id`=@NEWGOSSIP WHERE `gossip_menu_id`=@OLDGOSSIP;
UPDATE `gossip_menu` SET `entry`=@NEWGOSSIP WHERE `entry`=@OLDGOSSIP;
UPDATE `gossip_menu_option` SET `menu_id`=@NEWGOSSIP WHERE `menu_id`=@OLDGOSSIP;
UPDATE `conditions` SET `SourceGroup`=@NEWGOSSIP WHERE `SourceGroup`=@OLDGOSSIP AND `SourceTypeOrReferenceId`=15;

SET @OLDGOSSIP := 21069;
SET @NEWGOSSIP := 9961;
UPDATE `creature_template` SET `gossip_menu_id`=@NEWGOSSIP WHERE `gossip_menu_id`=@OLDGOSSIP;
UPDATE `gossip_menu` SET `entry`=@NEWGOSSIP WHERE `entry`=@OLDGOSSIP;
UPDATE `gossip_menu_option` SET `menu_id`=@NEWGOSSIP WHERE `menu_id`=@OLDGOSSIP;
UPDATE `conditions` SET `SourceGroup`=@NEWGOSSIP WHERE `SourceGroup`=@OLDGOSSIP AND `SourceTypeOrReferenceId`=15;

SET @OLDGOSSIP := 21028;
SET @NEWGOSSIP := 9963;
UPDATE `creature_template` SET `gossip_menu_id`=@NEWGOSSIP WHERE `gossip_menu_id`=@OLDGOSSIP;
UPDATE `gossip_menu` SET `entry`=@NEWGOSSIP WHERE `entry`=@OLDGOSSIP;
UPDATE `gossip_menu_option` SET `menu_id`=@NEWGOSSIP WHERE `menu_id`=@OLDGOSSIP;
UPDATE `conditions` SET `SourceGroup`=@NEWGOSSIP WHERE `SourceGroup`=@OLDGOSSIP AND `SourceTypeOrReferenceId`=15;

SET @OLDGOSSIP := 21001;
SET @NEWGOSSIP := 9964;
UPDATE `creature_template` SET `gossip_menu_id`=@NEWGOSSIP WHERE `gossip_menu_id`=@OLDGOSSIP;
UPDATE `gossip_menu` SET `entry`=@NEWGOSSIP WHERE `entry`=@OLDGOSSIP;
UPDATE `gossip_menu_option` SET `menu_id`=@NEWGOSSIP WHERE `menu_id`=@OLDGOSSIP;
UPDATE `conditions` SET `SourceGroup`=@NEWGOSSIP WHERE `SourceGroup`=@OLDGOSSIP AND `SourceTypeOrReferenceId`=15;

SET @OLDGOSSIP := 21027;
SET @NEWGOSSIP := 9966;
UPDATE `creature_template` SET `gossip_menu_id`=@NEWGOSSIP WHERE `gossip_menu_id`=@OLDGOSSIP;
UPDATE `gossip_menu` SET `entry`=@NEWGOSSIP WHERE `entry`=@OLDGOSSIP;
UPDATE `gossip_menu_option` SET `menu_id`=@NEWGOSSIP WHERE `menu_id`=@OLDGOSSIP;
UPDATE `conditions` SET `SourceGroup`=@NEWGOSSIP WHERE `SourceGroup`=@OLDGOSSIP AND `SourceTypeOrReferenceId`=15;

SET @OLDGOSSIP := 21064;
SET @NEWGOSSIP := 9968;
UPDATE `creature_template` SET `gossip_menu_id`=@NEWGOSSIP WHERE `gossip_menu_id`=@OLDGOSSIP;
UPDATE `gossip_menu` SET `entry`=@NEWGOSSIP WHERE `entry`=@OLDGOSSIP;
UPDATE `gossip_menu_option` SET `menu_id`=@NEWGOSSIP WHERE `menu_id`=@OLDGOSSIP;
UPDATE `conditions` SET `SourceGroup`=@NEWGOSSIP WHERE `SourceGroup`=@OLDGOSSIP AND `SourceTypeOrReferenceId`=15;

SET @OLDGOSSIP := 21041;
SET @NEWGOSSIP := 9971;
UPDATE `creature_template` SET `gossip_menu_id`=@NEWGOSSIP WHERE `gossip_menu_id`=@OLDGOSSIP;
UPDATE `gossip_menu` SET `entry`=@NEWGOSSIP WHERE `entry`=@OLDGOSSIP;
UPDATE `gossip_menu_option` SET `menu_id`=@NEWGOSSIP WHERE `menu_id`=@OLDGOSSIP;
UPDATE `conditions` SET `SourceGroup`=@NEWGOSSIP WHERE `SourceGroup`=@OLDGOSSIP AND `SourceTypeOrReferenceId`=15;

SET @OLDGOSSIP := 21074;
SET @NEWGOSSIP := 9972;
UPDATE `creature_template` SET `gossip_menu_id`=@NEWGOSSIP WHERE `gossip_menu_id`=@OLDGOSSIP;
UPDATE `gossip_menu` SET `entry`=@NEWGOSSIP WHERE `entry`=@OLDGOSSIP;
UPDATE `gossip_menu_option` SET `menu_id`=@NEWGOSSIP WHERE `menu_id`=@OLDGOSSIP;
UPDATE `conditions` SET `SourceGroup`=@NEWGOSSIP WHERE `SourceGroup`=@OLDGOSSIP AND `SourceTypeOrReferenceId`=15;

SET @OLDGOSSIP := 21015;
SET @NEWGOSSIP := 9975;
UPDATE `creature_template` SET `gossip_menu_id`=@NEWGOSSIP WHERE `gossip_menu_id`=@OLDGOSSIP;
UPDATE `gossip_menu` SET `entry`=@NEWGOSSIP WHERE `entry`=@OLDGOSSIP;
UPDATE `gossip_menu_option` SET `menu_id`=@NEWGOSSIP WHERE `menu_id`=@OLDGOSSIP;
UPDATE `conditions` SET `SourceGroup`=@NEWGOSSIP WHERE `SourceGroup`=@OLDGOSSIP AND `SourceTypeOrReferenceId`=15;

SET @OLDGOSSIP := 21019;
SET @NEWGOSSIP := 9980;
UPDATE `creature_template` SET `gossip_menu_id`=@NEWGOSSIP WHERE `gossip_menu_id`=@OLDGOSSIP;
UPDATE `gossip_menu` SET `entry`=@NEWGOSSIP WHERE `entry`=@OLDGOSSIP;
UPDATE `gossip_menu_option` SET `menu_id`=@NEWGOSSIP WHERE `menu_id`=@OLDGOSSIP;
UPDATE `conditions` SET `SourceGroup`=@NEWGOSSIP WHERE `SourceGroup`=@OLDGOSSIP AND `SourceTypeOrReferenceId`=15;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 19 AND `SourceEntry` IN (13408,13409,13410,13411);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(19, 0, 13408, 0, 0, 15, 0, 1503, 0, 0, 0, 0, '', 'Hellfire Fortifications - Alliance -All classes other than dk'),
(19, 0, 13409, 0, 0, 15, 0, 1503, 0, 0, 0, 0, '', 'Hellfire Fortifications - Horde -All classes other than dk'),
(19, 0, 13410, 0, 0, 15, 0, 32, 0, 0, 0, 0, '', 'Hellfire Fortifications - Alliance -Only dk'),
(19, 0, 13411, 0, 0, 15, 0, 32, 0, 0, 0, 0, '', 'Hellfire Fortifications - Horde -Only dk');
-- Hogger EAI to SAI Conversion
SET @ENTRY := 448;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,11,6268,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Hogger - On aggro - Cast Rushing Charge'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Hogger - On Aggro - Random Say'),
(@ENTRY,0,2,0,0,0,100,0,1300,3700,20000,25000,11,6730,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Hogger - Combat - Cast Headbutt'),
(@ENTRY,0,3,0,0,0,100,0,4800,6000,30000,30000,11,6016,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Hogger - Combat - Cast Armor Pierce');
-- Hogger creature text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@ENTRY,0,0, 'More bones to gnaw on...',12,0,100,0,0,0, 'Hogger Agro Say 1'),
(@ENTRY,0,1, 'Grrrr... fresh meat!',12,0,100,0,0,0, 'Hogger Agro Say 2');
-- Fix SAI for Lothos Riftwaker
UPDATE `smart_scripts` SET `event_param1`=5750 WHERE `entryorguid`=14387 AND `id`=0;
UPDATE `smart_scripts` SET `event_param1`=0 WHERE `entryorguid`=14387 AND `id`=1;
-- Mok'rash SAI
SET @ENTRY := 1493;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO smart_scripts (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,5000,10000,300000,600000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mok''Rash - OOC - Random Yell'),
(@ENTRY,0,1,0,0,0,85,0,8000,8000,15000,15000,11,40505,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Mok''Rash - Combat - Cast Cleave');
-- Mok'rash Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO creature_text (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY, 0, 0, 'SMOTTS, I HAVE YOUR LITTLE BELT....COME GET IT!', 14, 0, 100, 0, 0, 0, 'Mok''rash Yell'),
(@ENTRY, 0, 1, 'SMOTTS! HEY, SMOTTS! COME OUT AND PLAY!', 14, 0, 100, 0, 0, 0, 'Mok''rash Yell'),
(@ENTRY, 0, 2, 'DON''T LET THIS STATUE BE MY ONLY COMPANY, COME OUT AND PLAY!', 14, 0, 100, 0, 0, 0, 'Mok''rash Yell'),
(@ENTRY, 0, 3, 'COME OUT TO JANEIRO''S POINT. I''M WAITING FOR YOU, SMOTTS...', 14, 0, 100, 0, 0, 0, 'Mok''rash Yell'),
(@ENTRY, 0, 4, 'I PROMISE I WON''T KILL YOUR CREW THIS TIME. HAH! BUT MY BROTHER MIGHT EAT THEM!', 14, 0, 100, 0, 0, 0, 'Mok''rash Yell'),
(@ENTRY, 0, 5, 'HAVE YOU RUN OUT OF SHIPS TO SEND? WHERE IS YOUR COURAGE?', 14, 0, 100, 0, 0, 0, 'Mok''rash Yell'),
(@ENTRY, 0, 6, 'I HAVE YOUR LITTLE BELT TIED AROUND MY FINGER, SMOTTS. DON''T YOU WANT IT BACK?', 14, 0, 100, 0, 0, 0, 'Mok''rash Yell');
-- Add Missing spell to Jotunheim Rapid-Fire Harpoon close 6435
UPDATE `creature_template` SET `spell1`=56585 WHERE `entry`=30337;
-- Wailing Winds missing aura
UPDATE `creature_template_addon` SET `auras`='56769' WHERE `entry`=30450;
-- Disturbed Taunka Ancestor missing aura
DELETE FROM `creature_template_addon` WHERE `entry`=30458;
INSERT INTO `creature_template_addon` (`entry`,`bytes2`,`auras`) VALUES (30458,1,43167);
-- Witch Doctor Mau'ari SAI
SET @ENTRY  := 10307;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `quest_start_scripts` WHERE `id`=975;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,975,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Witch Doctor Mau''ari - On Quest Accept - Run Script'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Witch Doctor Mau''ari - Script - Remove npc flags'),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0,'Witch Doctor Mau''ari - Script - Set emote state use standing'),
(@ENTRY*100,9,2,0,0,0,100,0,9000,9000,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Witch Doctor Mau''ari - Script - Set emote state use standing'),
(@ENTRY*100,9,3,0,0,0,100,0,1000,1000,0,0,81,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Witch Doctor Mau''ari - Script - add npc flags'),
(@ENTRY*100,9,4,0,0,0,100,0,0,0,0,0,15,975,0,0,0,0,0,7,0,0,0,0,0,0,0,'Witch Doctor Mau''ari - Script - Complete quest 975');
-- Witch Doctor Mau'ari SAI
SET @ENTRY  := 10307;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0 AND `id` IN (1,2);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,2,62,0,100,0,2703,2,0,0,85,16351,0,0,0,0,0,7,0,0,0,0,0,0,0,'Witch Doctor Mau''ari - On Gossip Option 2 Select - Cast Spell'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Witch Doctor Mau''ari - On Gossip Option 2 Select - Close gossip');
-- Add some missing gossip for Witch Doctor Mau'ari
UPDATE `creature_template` SET `gossip_menu_id`=2703,`ScriptName`='' WHERE `entry`=10307;
DELETE FROM `gossip_menu` WHERE `entry` IN (2703,21320,21321);
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (2703,3375),(2703,3377),(21320,3382),(21321,3383);
DELETE FROM `gossip_menu_option` WHERE `menu_id`=2703 AND `id` IN (0,1,2);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES 
(2703,0,0, 'How do I use the Cache of Mau''ari?',1,1,21320,0,0,0, ''),
(2703,1,0, 'What is E''ko?',1,1,21321,0,0,0, ''),
(2703,2,0, 'I''d like you to make me a new Cache of Mau''ari please',1,1,0,0,0,0, '');
-- Add conditions for gossip text
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=2703;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,2703,3377,0,8,975,0,0,0,0,'','Only show gossip text 3377 if player has completed quest 975');
-- Add conditions for gossip options
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=2703;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,2703,2,0,8,975,0,0,0,0,'','Only show gossip option if player has completed quest 975'),
(15,2703,2,0,2,12384,1,1,1,0,'','Only show gossip option if player Does not have item 12384');
-- Lorax SAI
SET @ENTRY  := 10918;
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,3051,0,0,0,5,11,0,0,0,0,0,1,0,0,0,0,0,0,0,'Lorax - On Gossip Option Select - Laugh emote'),
(@ENTRY,0,1,2,62,0,100,0,3054,0,0,0,15,5126,0,0,0,0,0,7,0,0,0,0,0,0,0,'Lorax - On Gossip Option Select - Give Quest Credit'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Lorax - On Gossip Option Select - Close gossip');
-- Lorax Gossip
DELETE FROM `gossip_menu` WHERE `entry` IN (3050,3051,3052,3053,3054);
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (3050,3759),(3051,3760),(3052,3761),(3053,3762),(3054,3763);
DELETE FROM `gossip_menu_option` WHERE `menu_id` BETWEEN 3049 AND 3054;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES 
(3049,0,0, 'You will have to excuse me, Lorax, I do not speak ''crazy''.',1,1,3050,0,0,0, ''),
(3050,0,0, 'My apologies, I did not realize that you could understand what I was saying. What is it you are doing out here?',1,1,3051,0,0,0, ''),
(3051,0,0, 'Do you? Perhaps you should tell me what it is that is bothering you',1,1,3052,0,0,0, ''),
(3052,0,0, 'What deal?',1,1,3053,0,0,0, ''),
(3053,0,0, 'So how did he break the deal?',1,1,3054,0,0,0, ''),
(3054,0,0, 'Perhaps I can be of some assistance. I will make a deal with you, Satyr. I shall recover this unforged breastplate and slay the beast. In exchange for this task, you will teach me how to create the breastplate',1,1,0,0,0,0, '');
-- Add conditions for gossip options
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=3049;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,3049,0,0,9,5126,0,0,0,0,'','Only show gossip option if player has quest 5126');
-- Frostblade Shrine Script for Quest The Cleansing
UPDATE `gameobject_template` SET `ScriptName`= 'go_frostblade_shrine' WHERE `entry`=186649;
-- Remove Mistake
DELETE FROM `gossip_menu` WHERE `entry` IN (3050,3051,3052,3053,3054);
DELETE FROM `gossip_menu_option` WHERE `menu_id` BETWEEN 3050 AND 3054;
-- Lorax SAI
SET @ENTRY  := 10918;
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,21323,0,0,0,5,11,0,0,0,0,0,1,0,0,0,0,0,0,0,'Lorax - On Gossip Option Select - Laugh emote'),
(@ENTRY,0,1,2,62,0,100,0,21326,0,0,0,15,5126,0,0,0,0,0,7,0,0,0,0,0,0,0,'Lorax - On Gossip Option Select - Give Quest Credit'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Lorax - On Gossip Option Select - Close gossip');
-- Lorax Gossip
DELETE FROM `gossip_menu` WHERE `entry` IN (21322,21323,21324,21325,21326);
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (21322,3759),(21323,3760),(21324,3761),(21325,3762),(21326,3763);
DELETE FROM `gossip_menu_option` WHERE `menu_id`=3049;
DELETE FROM `gossip_menu_option` WHERE `menu_id` BETWEEN 21322 AND 21326;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES 
(3049,0,0, 'You will have to excuse me, Lorax, I do not speak ''crazy''.',1,1,21322,0,0,0, ''),
(21322,0,0, 'My apologies, I did not realize that you could understand what I was saying. What is it you are doing out here?',1,1,21323,0,0,0, ''),
(21323,0,0, 'Do you? Perhaps you should tell me what it is that is bothering you',1,1,21324,0,0,0, ''),
(21324,0,0, 'What deal?',1,1,21325,0,0,0, ''),
(21325,0,0, 'So how did he break the deal?',1,1,21326,0,0,0, ''),
(21326,0,0, 'Perhaps I can be of some assistance. I will make a deal with you, Satyr. I shall recover this unforged breastplate and slay the beast. In exchange for this task, you will teach me how to create the breastplate',1,1,0,0,0,0, '');
-- Add conditions for gossip options
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=3049;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,3049,0,0,9,5126,0,0,0,0,'','Only show gossip option if player has quest 5126');
-- Fix for Quest 11317 & 11322 "The Cleansing"
-- Your Inner Turmoil SAI
SET @ENTRY  := 27959;
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`unit_flags`=`unit_flags`|256,`AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,11,41408,2,0,0,0,0,1,0,0,0,0,0,0,0,'Your Inner Turmoil - On Summon - Cast Shadowform on self'),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,85,50218,2,0,0,0,0,1,0,0,0,0,0,0,0,'Your Inner Turmoil - On Summon - Player Cast The Cleansing: Your Inner Turmoil''s Mirror Image Aura on npc'),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,85,41054,2,0,0,0,0,1,0,0,0,0,0,0,0,'Your Inner Turmoil - On Summon - Player Cast Copy Weapon on npc'),
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,85,41055,2,0,0,0,0,1,0,0,0,0,0,0,0,'Your Inner Turmoil - On Summon - Player Cast Copy Weapon on npc'),
(@ENTRY,0,4,5,61,0,100,0,0,0,0,0,85,45205,2,0,0,0,0,1,0,0,0,0,0,0,0,'Your Inner Turmoil - On Summon - Player Cast Copy Offhand Weapon on npc'),
(@ENTRY,0,5,6,61,0,100,0,0,0,0,0,85,45206,2,0,0,0,0,1,0,0,0,0,0,0,0,'Your Inner Turmoil - On Summon - Player Cast Copy Offhand Weapon on npc'),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,80,@ENTRY*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Your Inner Turmoil - On Summon - Run Script'),
(@ENTRY,0,7,0,2,0,100,1,0,50,0,0,1,2,2,0,0,0,0,1,0,0,0,0,0,0,0,'Your Inner Turmoil - @50%hp - Say 2'),
(@ENTRY,0,8,9,6,0,100,1,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Your Inner Turmoil - On death - Say 3'),
(@ENTRY,0,9,0,61,0,100,1,0,0,0,0,3,0,11686,0,0,0,0,1,0,0,0,0,0,0,0,'Your Inner Turmoil - On death - set model'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Your Inner Turmoil - Script - Turn to invoker'),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Your Inner Turmoil - Script - Say 0'),
(@ENTRY*100,9,2,0,0,0,100,0,6000,6000,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Your Inner Turmoil - Script - Turn to invoker'),
(@ENTRY*100,9,3,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,7,0,0,0,0,0,0,0,'Your Inner Turmoil - Script - Say 1'),
(@ENTRY*100,9,4,0,0,0,100,0,7000,7000,0,0,19,256,0,0,0,0,0,1,0,0,0,0,0,0,0,'Your Inner Turmoil - Script - remove unit flags'),
(@ENTRY*100,9,5,0,0,0,100,0,0,0,0,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Your Inner Turmoil - Script - Attack invoker');
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,'You think that you can get rid of me through meditation?',15,0,100,0,0,0,'Your Inner Turmoil text 0'),
(@ENTRY,1,0,'Fool! I will destroy you and finally become that which has been building inside of you all of these years!',15,0,100,0,0,0,'Your Inner Turmoil text 1'),
(@ENTRY,2,0,'You cannot defeat me. I''m an inseparable part of you!',15,0,100,0,0,0,'Your Inner Turmoil text 50%'),
(@ENTRY,3,0,'NOOOOOOOoooooooooo!',15,0,100,0,0,0,'Your Inner Turmoil text death');
-- Spell Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (50218,41054,41055,45205,45206);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,50218,0,31,3,27959,0,0,'','Spell 50218 can target Your Inner Turmoil'),
(13,1,41054,0,31,3,27959,0,0,'','Spell 41054 can target Your Inner Turmoil'),
(13,1,41055,0,31,3,27959,0,0,'','Spell 41055 can target Your Inner Turmoil'),
(13,1,45205,0,31,3,27959,0,0,'','Spell 45205 can target Your Inner Turmoil'),
(13,1,45206,0,31,3,27959,0,0,'','Spell 45206 can target Your Inner Turmoil');
-- Spell Linking
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=-43351;
INSERT INTO spell_linked_spell VALUES
(-43351,50167,0, ''),
(-43351,61720,0, '');
-- Fix Quest 11307 "Field Test"

-- Remove hack
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=43385;

-- Fix Plagued Proto-Dragon
UPDATE `creature_addon` SET `bytes1`=50331648 WHERE guid=107626;

-- Plagued Dragonflayer Tribesman SAI
SET @ENTRY  := 23564;
SET @SPELL1 := 15496; -- Cleave
SET @SPELL2 := 32736; -- Mortal Strike
SET @SPELL3 := 43506; -- Plague Blight
SET @SPELL4 := 43381; -- Plague Spray
SET @SPELL5 := 43384; -- Plague Credit
SET @SPELL6 := 43327; -- Vomit
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
UPDATE `creature_addon` SET `auras`= '21862' WHERE guid IN (SELECT guid FROM creature WHERE id=@ENTRY);
DELETE FROM `creature_template_addon` WHERE `entry`=@ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`bytes2`,`auras`) VALUES (@ENTRY,1,'21862');
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,1,0,95,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Plagued Dragonflayer Tribesman - HP@95% - Set Phase 1'),
(@ENTRY,0,1,0,0,0,100,0,1000,1000,4000,5000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0,'Plagued Dragonflayer Tribesman - Combat - Cast Cleave'),
(@ENTRY,0,2,0,0,0,100,0,2000,4000,5000,8000,11,@SPELL2,0,0,0,0,0,2,0,0,0,0,0,0,0,'Plagued Dragonflayer Tribesman - Combat - Cast Mortal Strike'),
(@ENTRY,0,3,0,2,0,100,1,0,75,0,0,11,@SPELL3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Plagued Dragonflayer Tribesman - HP@75% - Cast Plague Blight'),
(@ENTRY,0,4,0,23,1,100,0,@SPELL4,1,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Plagued Dragonflayer Tribesman - On Aura - Set phase 0 (phase 1)'),
(@ENTRY,0,5,0,0,1,100,0,1000,1000,1000,1000,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Plagued Dragonflayer Tribesman - Combat - Set phase 2 (phase 1)'),
(@ENTRY,0,6,0,23,2,100,0,@SPELL4,1,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Plagued Dragonflayer Tribesman - On Spell Hit - Set Phase 3 (phase 2)'),
(@ENTRY,0,7,0,0,4,100,0,0,0,10000,10000,49,0,0,0,0,0,0,5,0,0,0,0,0,0,0,'Plagued Dragonflayer Tribesman - Combat - Attack Random target (phase 3)'),
(@ENTRY,0,8,0,6,4,100,0,0,0,0,0,85,@SPELL5,0,0,0,0,0,16,0,0,0,0,0,0,0,'Plagued Dragonflayer Tribesman - On Death - Give Killcredit (phase 3)'),
(@ENTRY,0,9,0,1,0,35,0,0,30000,25000,45000,11,@SPELL6,0,0,0,0,0,1,0,0,0,0,0,0,0,'Plagued Dragonflayer Tribesman - OOC - Cast 43327 on self'),
(@ENTRY,0,10,11,23,0,100,1,@SPELL4,1,0,0,1,0,0,0,0,0,0,2,0,0,0,0,0,0,0,'Plagued Dragonflayer Tribesman - On Spell Hit - Say 0'),
(@ENTRY,0,11,0,61,0,100,0,0,0,0,0,2,1925,0,0,0,0,0,1,0,0,0,0,0,0,0,'Plagued Dragonflayer Tribesman - On Spell Hit - Set Faction');
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,'%s loses all self control and begins to attack friend and foe alike!',16,0,100,0,0,0,'Plagued Dragonflayer Tribesman');

-- Plagued Dragonflayer Rune-Caster SAI
SET @ENTRY  := 24199;
SET @SPELL1 := 47782; -- Corruption
SET @SPELL2 := 15616; -- Flame Shock
SET @SPELL3 := 43381; -- Plague Spray
SET @SPELL4 := 43384; -- Plague Credit
SET @SPELL5 := 43327; -- Vomit
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
UPDATE `creature_addon` SET `auras`= '21862' WHERE guid IN (SELECT guid FROM creature WHERE id=@ENTRY);
DELETE FROM `creature_template_addon` WHERE `entry`=@ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`bytes2`,`auras`) VALUES (@ENTRY,1,'21862');
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,1,0,95,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Plagued Dragonflayer Rune-Caster - HP@95% - Set Phase 1'),
(@ENTRY,0,1,0,4,0,100,0,0,0,0,0,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0,'Plagued Dragonflayer Rune-Caster - On aggro - Cast Corruption'),
(@ENTRY,0,2,0,0,0,100,0,2000,4000,15000,17000,11,@SPELL2,0,0,0,0,0,5,0,0,0,0,0,0,0,'Plagued Dragonflayer Rune-Caster - Combat - Cast Flame Shock'),
(@ENTRY,0,3,0,23,1,100,0,@SPELL3,1,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Plagued Dragonflayer Rune-Caster - On Aura - Set phase 0 (phase 1)'),
(@ENTRY,0,4,0,0,1,100,0,1000,1000,1000,1000,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Plagued Dragonflayer Rune-Caster - Combat - Set phase 2 (phase 1)'),
(@ENTRY,0,5,0,23,2,100,0,@SPELL3,1,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Plagued Dragonflayer Rune-Caster - On Spell Hit - Set Phase 3 (phase 2)'),
(@ENTRY,0,6,0,0,4,100,0,0,0,10000,10000,49,0,0,0,0,0,0,5,0,0,0,0,0,0,0,'Plagued Dragonflayer Rune-Caster - Combat - Attack Random target (phase 3)'),
(@ENTRY,0,7,0,6,4,100,0,0,0,0,0,85,@SPELL4,0,0,0,0,0,16,0,0,0,0,0,0,0,'Plagued Dragonflayer Rune-Caster - On Death - Give Killcredit (phase 3)'),
(@ENTRY,0,8,0,1,0,35,0,0,30000,25000,45000,11,@SPELL5,0,0,0,0,0,1,0,0,0,0,0,0,0,'Plagued Dragonflayer Rune-Caster - OOC - Cast 43327 on self'),
(@ENTRY,0,9,10,23,0,100,1,@SPELL3,1,0,0,1,0,0,0,0,0,0,2,0,0,0,0,0,0,0,'Plagued Dragonflayer Rune-Caster - On Spell Hit - Say 0'),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,2,1925,0,0,0,0,0,1,0,0,0,0,0,0,0,'Plagued Dragonflayer Rune-Caster - On Spell Hit - Set Faction');
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,'%s loses all self control and begins to attack friend and foe alike!',16,0,100,0,0,0,'Plagued Dragonflayer Rune-Caster');

-- Plagued Dragonflayer Handler SAI
SET @ENTRY  := 24199;
SET @SPELL1 := 43506; -- Plague Blight
SET @SPELL2 := 43381; -- Plague Spray
SET @SPELL3 := 43384; -- Plague Credit
SET @SPELL4 := 43327; -- Vomit
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
UPDATE `creature_addon` SET `auras`= '21862' WHERE guid IN (SELECT guid FROM creature WHERE id=@ENTRY);
DELETE FROM `creature_template_addon` WHERE `entry`=@ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`bytes2`,`auras`) VALUES (@ENTRY,1,'21862');
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,1,0,95,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Plagued Dragonflayer Handler - HP@95% - Set Phase 1'),
(@ENTRY,0,1,0,2,0,100,1,0,75,0,0,11,@SPELL1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Plagued Dragonflayer Handler - HP@75% - Cast Plague Blight'),
(@ENTRY,0,2,0,23,1,100,0,@SPELL2,1,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Plagued Dragonflayer Handler - On Aura - Set phase 0 (phase 1)'),
(@ENTRY,0,3,0,0,1,100,0,1000,1000,1000,1000,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Plagued Dragonflayer Handler - Combat - Set phase 2 (phase 1)'),
(@ENTRY,0,4,0,23,2,100,0,@SPELL2,1,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Plagued Dragonflayer Handler - On Spell Hit - Set Phase 3 (phase 2)'),
(@ENTRY,0,5,0,0,4,100,0,0,0,10000,10000,49,0,0,0,0,0,0,5,0,0,0,0,0,0,0,'Plagued Dragonflayer Handler - Combat - Attack Random target (phase 3)'),
(@ENTRY,0,6,0,6,4,100,0,0,0,0,0,85,@SPELL3,0,0,0,0,0,16,0,0,0,0,0,0,0,'Plagued Dragonflayer Handler - On Death - Give Killcredit (phase 3)'),
(@ENTRY,0,7,0,1,0,35,0,0,30000,25000,45000,11,@SPELL4,0,0,0,0,0,1,0,0,0,0,0,0,0,'Plagued Dragonflayer Handler - OOC - Cast 43327 on self'),
(@ENTRY,0,8,9,23,0,100,1,@SPELL2,1,0,0,1,0,0,0,0,0,0,2,0,0,0,0,0,0,0,'Plagued Dragonflayer Handler - On Spell Hit - Say 0'),
(@ENTRY,0,9,0,61,0,100,0,0,0,0,0,2,1925,0,0,0,0,0,1,0,0,0,0,0,0,0,'Plagued Dragonflayer Handler - On Spell Hit - Set Faction');
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,'%s loses all self control and begins to attack friend and foe alike!',16,0,100,0,0,0,'Plagued Dragonflayer Handler');
-- Spell conditions shouldn't have been added
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (41054,41055,45205,45206);
-- Forsaken Plaguebringer SAI
SET @ENTRY  := 23760;
SET @SPELL1 := 44005; -- Shoot Plague
SET @SPELL2 := 3436;  -- Wandering Plague
SET @SPELL3 := 11978; -- Kick
SET @SPELL4 := 43333; -- Shoot Plague
UPDATE `creature_template` SET `equipment_id`=509,`AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `creature_template_addon` WHERE `entry`=@ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`bytes2`) VALUES (@ENTRY,2);
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,4000,11000,7000,11000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0,'Forsaken Plaguebringer - Combat - Cast Shoot Plague'),
(@ENTRY,0,1,0,0,0,100,0,4000,10000,40000,50000,11,@SPELL2,0,0,0,0,0,2,0,0,0,0,0,0,0,'Forsaken Plaguebringer - Combat - Cast Wandering Plague'),
(@ENTRY,0,2,0,0,0,80,0,4000,12000,12000,18000,11,@SPELL3,0,0,0,0,0,2,0,0,0,0,0,0,0,'Forsaken Plaguebringer - Combat - Cast Kick'),
(@ENTRY,0,3,0,10,0,100,0,24042,40,6000,11000,11,@SPELL4,0,0,0,0,0,1,0,0,0,0,0,0,0,'Forsaken Plaguebringer - OOC - Cast Shoot Plague'); -- Not working correctly
-- Spell Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (43333);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,43333,0,31,3,24042,0,0,'','Spell 43333 can target Generic Trigger LAB - OLD');
-- SAI for Charles Worth
SET @NPC    := 28699;
SET @GOSSIP := 10118;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@NPC;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@NPC;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@NPC,0,0,2,62,0,100,0,@GOSSIP,3,0,0,85,59817,2,0,0,0,0,7,0,0,0,0,0,0,0, 'Charles Worth - On Gossip Select - Cast Spell Teach Wispcloak'),
(@NPC,0,1,2,62,0,100,0,@GOSSIP,5,0,0,85,59841,2,0,0,0,0,7,0,0,0,0,0,0,0, 'Charles Worth - On Gossip Select - Cast Spell Teach Deathchill Cloak'),
(@NPC,0,2,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Charles Worth - On Gossip Select - Close Gossip');
-- Add missing Gossip for Charles Worth
DELETE FROM `gossip_menu` WHERE `entry` IN (10136,10138);
DELETE FROM `gossip_menu` WHERE `entry`=10118 AND `text_id`=14076;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10136,14072),(10138,14074),(10118,14076);
-- Add Gossip Options
DELETE FROM `gossip_menu_option` WHERE `menu_id`=@GOSSIP AND `id` IN (2,3,4,5);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES 
(@GOSSIP,2,0, 'Tell me about the Wispcloak Recipe.',1,1,10136,0,0,0, ''),
(@GOSSIP,3,0, 'I am ready to learn the Wispcloak Recipe.',1,1,0,0,0,0, ''),
(@GOSSIP,4,0, 'Tell me about the Deathchill Cloak Recipe.',1,1,10138,0,0,0, ''),
(@GOSSIP,5,0, 'I am ready to learn the Deathchill Cloak Recipe.',1,1,0,0,0,0, '');
-- Add conditions for gossip text
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,14076,0,7,197,420,0,0,0,'','Only show gossip text 14076 if player has Tailoring with skill level 420');
-- Add conditions for gossip options
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,@GOSSIP,2,0,7,197,420,0,0,0,'','Only show gossip option if player has Tailoring with skill level 420'),
(15,@GOSSIP,2,0,25,56016,0,0,1,0,'','Only show gossip option if player has not learned spell 56016'),
(15,@GOSSIP,3,0,7,197,420,0,0,0,'','Only show gossip option if player has Tailoring with skill level 420 Alliance'),
(15,@GOSSIP,3,0,17,41,0,0,0,0,'','Only show gossip option if player has achievement Loremaster of Northrend Alliance'),
(15,@GOSSIP,3,1,7,197,420,0,0,0,'','Only show gossip option if player has Tailoring with skill level 420 Horde'),
(15,@GOSSIP,3,1,17,1360,0,0,0,0,'','Only show gossip option if player has achievement Loremaster of Northrend Horde'),
(15,@GOSSIP,3,0,25,56016,0,0,1,0,'','Only show gossip option if player has not learned spell 56016'),
(15,@GOSSIP,4,0,7,197,420,0,0,0,'','Only show gossip option if player has Tailoring with skill level 420'),
(15,@GOSSIP,4,0,25,56017,0,0,1,0,'','Only show gossip option if player has not learned spell 56017'),
(15,@GOSSIP,5,0,7,197,420,0,0,0,'','Only show gossip option if player has Tailoring with skill level 420'),
(15,@GOSSIP,5,0,17,1288,0,0,0,0,'','Only show gossip option if player has achievement Northrend Dungeonmaster'),
(15,@GOSSIP,5,0,25,56017,0,0,1,0,'','Only show gossip option if player has not learned spell 56017');
-- Fix Gossip for Leryssa
SET @ENTRY := 9223;
SET @TEXT1 := 12534;
SET @TEXT2 := 13481;
SET @QUEST := 11599;
DELETE FROM `gossip_menu` WHERE `entry`=@ENTRY AND `text_id`=@TEXT1;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@ENTRY,@TEXT1);
-- Add conditions for gossip text
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=@ENTRY AND `SourceEntry`=@TEXT2;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@ENTRY,@TEXT2,0,8,@QUEST,0,0,0,0,'','Only show gossip text if player has completed quest 11599');
UPDATE `item_template` SET `flags` = `flags` | 2048 WHERE `entry` IN (50274,50226,50231);
UPDATE `item_template` SET `flags` = 0 WHERE `entry` IN (50274,50226,50231);
-- add missing spell to db
DELETE FROM `spell_dbc` WHERE `Id`=28782;
INSERT INTO `spell_dbc` (`Id`,`SchoolMask`,`Dispel`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`Stances`,`StancesNot`,`Targets`,`CastingTimeIndex`,`AuraInterruptFlags`,`ProcFlags`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`RangeIndex`,`StackAmount`,`EquippedItemClass`,`EquippedItemSubClassMask`,`EquippedItemInventoryTypeMask`,`Effect1`,`Effect2`,`Effect3`,`EffectDieSides1`,`EffectDieSides2`,`EffectDieSides3`,`EffectRealPointsPerLevel1`,`EffectRealPointsPerLevel2`,`EffectRealPointsPerLevel3`,`EffectBasePoints1`,`EffectBasePoints2`,`EffectBasePoints3`,`EffectMechanic1`,`EffectMechanic2`,`EffectMechanic3`,`EffectImplicitTargetA1`,`EffectImplicitTargetA2`,`EffectImplicitTargetA3`,`EffectImplicitTargetB1`,`EffectImplicitTargetB2`,`EffectImplicitTargetB3`,`EffectRadiusIndex1`,`EffectRadiusIndex2`,`EffectRadiusIndex3`,`EffectApplyAuraName1`,`EffectApplyAuraName2`,`EffectApplyAuraName3`,`EffectAmplitude1`,`EffectAmplitude2`,`EffectAmplitude3`,`EffectMultipleValue1`,`EffectMultipleValue2`,`EffectMultipleValue3`,`EffectMiscValue1`,`EffectMiscValue2`,`EffectMiscValue3`,`EffectTriggerSpell1`,`EffectTriggerSpell2`,`EffectTriggerSpell3`,`Comment`,`MaxTargetLevel`,`SpellFamilyName`,`SpellFamilyFlags1`,`SpellFamilyFlags2`,`MaxAffectedTargets`,`DmgClass`,`PreventionType`,`DmgMultiplier1`,`DmgMultiplier2`,`AreaGroupId`)VALUES
(28782,0,0,0,256,268435456,0,0,0,0,0,0,0,1,0,0,101,0,0,0,0,21,1,0,-1,0,0,6,6,0,0,1,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,12,40,0,0,0,0,0,0,0,0,127,0,0,0,0, 'Stun Self + Immune',0,0,0,0,0,0,0,1,1,0);

-- Add Stun Self + Immune aura to Snack-O-Matic IV & Vend-O-Tron D-Luxe
DELETE FROM `creature_template_addon` WHERE `entry` IN (24934,24935);
INSERT INTO `creature_template_addon` (`entry`,`auras`) VALUES (24934, '28782'),(24935, '28782');
-- Remove some bad spawns in world
DELETE FROM `creature` WHERE `guid` IN (45208,45099,45075,45136,12925,12402);
DELETE FROM `creature_addon` WHERE `guid` IN (45208,45099,45075,45136,12925,12402);

-- Some missing Gossip
UPDATE `creature_template` SET `gossip_menu_id`=9054 WHERE `entry`=25021;
UPDATE `creature_template` SET `gossip_menu_id`=9056 WHERE `entry`=25022;
UPDATE `creature_template` SET `gossip_menu_id`=9057 WHERE `entry`=25023;
UPDATE `creature_template` SET `gossip_menu_id`=9054 WHERE `entry`=25024; 
UPDATE `creature_template` SET `gossip_menu_id`=9077 WHERE `entry`=25025;
DELETE FROM `gossip_menu` WHERE `entry`=9054 AND `text_id`=12243;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9054,12243);
DELETE FROM `gossip_menu` WHERE `entry`=9057 AND `text_id`=12245;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9057,12245);
DELETE FROM `gossip_menu` WHERE `entry`=9077 AND `text_id`=12275;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9077,12275);

-- Zeppelin: <The Thundercaller> "Durotar to Tirisfal Glades"
DELETE FROM `creature_transport` WHERE `transport_entry`=164871;
INSERT INTO `creature_transport` (`guid`,`transport_entry`,`npc_entry`,`TransOffsetX`,`TransOffsetY`,`TransOffsetZ`,`TransOffsetO`,`emote`) VALUES
(1,164871,15214,7.005304,-7.647912,-16.11262,2.897247,0), -- Invisible Stalker
(2,164871,24934,-4.516505,-13.11248,-22.59472,1.53589,0), -- Snack-O-Matic IV
(3,164871,24935,-6.37827,-13.18376,-22.59391,4.712389,0), -- Vend-O-Tron D-Luxe
(4,164871,25070,-9.407872,-8.023982,-17.15783,3.176499,0), -- Chief Officer Coppernut <The Thundercaller>
(5,164871,25071,7.248865,-5.480326,-17.68592,4.817109,432), -- Crewman Rusthammer <The Thundercaller>
(6,164871,25072,8.008065,-10.71344,-17.67366,1.169371,432), -- Crewman Quickfix <The Thundercaller>
(7,164871,25074,5.023749,-7.69781,-17.78876,5.986479,432), -- Crewman Sparkfly <The Thundercaller>
(8,164871,25075,-8.875813,-11.40282,-22.5883,6.248279,0), -- Zeppelin Controls
(9,164871,25075,-3.307774,-9.474165,-23.69589,1.553343,0), -- Zeppelin Controls
(10,164871,25075,4.482075,-13.40077,-23.59003,1.623156,0), -- Zeppelin Controls
(11,164871,25075,-3.314179,-6.128806,-23.69835,4.677482,0), -- Zeppelin Controls
(12,164871,25075,4.362147,-2.254167,-23.59002,4.712389,0), -- Zeppelin Controls
(13,164871,25075,-4.161887,-7.687522,-23.69754,0,0), -- Zeppelin Controls
(14,164871,25075,11.74357,-10.44521,-24.21887,6.161012,0), -- Zeppelin Controls
(15,164871,25075,10.82609,-12.18536,-23.48949,3.176499,0), -- Zeppelin Controls
(16,164871,25075,10.70341,-3.505423,-23.49001,3.246312,0), -- Zeppelin Controls
(17,164871,25076,-2.727229,-7.772857,-23.69677,1.553343,432), -- Navigator Fairweather <The Thundercaller>
(18,164871,25077,-19.68856,-8.170582,-14.37648,3.176499,0), -- Sky-Captain Cloudkicker <The Thundercaller>
(19,164871,25079,-5.1094,-11.14663,-17.60601,4.485496,0), -- Deathguard Fowles <The Thundercaller>
(20,164871,25083,-5.212496,-4.927022,-17.5966,1.43117,0), -- Deathguard Lawson <The Thundercaller>
(21,164871,25171,-8.703286,-11.40788,-22.58871,0.03490658,0); -- Invisible Stalker (Scale x0.5)
-- gameobject 21680 -6.905273,-4.876801,-17.51628,5.911792 Rotation: 0,0,0.9850225,0.1724255

-- Zeppelin: <The Zephyr> "Durotar to Thunder Bluff"
DELETE FROM `creature_transport` WHERE `transport_entry`=190549;
INSERT INTO `creature_transport` (`guid`,`transport_entry`,`npc_entry`,`TransOffsetX`,`TransOffsetY`,`TransOffsetZ`,`TransOffsetO`,`emote`) VALUES
(1,190549,3084,-4.83257,-4.312334,-17.63218,1.623156,0), -- Bluffwatcher
(2,190549,3084,-5.206744,-11.34318,-17.61012,4.712389,0), -- Bluffwatcher
(3,190549,24934,10.32099,-3.573514,-23.49413,3.176499,0), -- Snack-O-Matic IV
(4,190549,24935,10.2871,-12.02722,-23.49424,3.106686,0), -- Vend-O-Tron D-Luxe
(5,190549,25075,-3.396398,-7.905448,-23.69672,6.248279,0), -- Zeppelin Controls
(6,190549,34715,-9.183155,-7.775729,-17.21699,3.281219,0), -- Sky-Captain "Dusty" Blastnut <The Zephyr>
(7,190549,34717,-13.67017,-12.40177,-15.98756,4.590216,0), -- Crewman Pipewrench <The Zephyr>
(8,190549,34718,13.74505,-5.128461,-24.04518,0.1396263,207), -- Crewman Deadbolt <The Zephyr>
(9,190549,34719,7.623085,-5.025319,-17.67015,4.921828,28), -- Crewman Grit <The Zephyr>
(10,190549,34721,-0.919197,-6.164221,-23.67286,3.577925,0), -- Chief Officer Ograh <The Zephyr>
(11,190549,34723,-17.47968,-5.606984,-14.92807,3.228859,0), -- Watcher Tolwe <The Zephyr>
(12,190549,34730,-2.166869,-7.854215,-23.6919,3.385939,0); -- Navigator Zippik <The Zephyr>

-- Zeppelin: <The Iron Eagle> "Durotar to Stranglethorn Val"
DELETE FROM `creature_transport` WHERE `transport_entry`=175080;
INSERT INTO `creature_transport` (`guid`,`transport_entry`,`npc_entry`,`TransOffsetX`,`TransOffsetY`,`TransOffsetZ`,`TransOffsetO`,`emote`) VALUES
(1,175080,24924,-1.207598,-9.948863,-23.67485,0.1570796,0), -- Sky-Captain Bomblast <The Iron Eagle>
(2,175080,24926,-10.3057,-12.10524,-16.96907,5.927236,0), -- Chief Officer Brassbolt <The Iron Eagle> <PATHING>
(3,175080,24927,-1.874165,-7.847112,-23.68718,3.385939,0), -- Navigator Sparksizzle <The Iron Eagle>
(4,175080,24929,9.083008,-4.964111,-23.59211,1.594056,0), -- Crewman Crosswire <The Iron Eagle>
(5,175080,24930,-17.0083,-7.874878,-15.18782,3.141593,0), -- Crewman Gazzlegear <The Iron Eagle>
(6,175080,24931,7.884921,-11.15133,-17.76227,4.90483,432), --  Crewman Fastwrench <The Iron Eagle> <PATHING>
(7,175080,24934,9.209188,-3.503923,-23.51212,3.124139,0), -- Snack-O-Matic IV
(8,175080,24935,9.554915,-12.02288,-23.50588,3.124139,0), -- Vend-O-Tron D-Luxe
(9,175080,25075,-2.705565,-7.845885,-23.6967,0.03490658,0), -- Zeppelin Controls
(10,175080,25080,-4.910018,-4.742365,-17.61534,1.605703,0), -- Grunt Umgor
(11,175080,25081,-4.939394,-10.80493,-17.61089,4.712389,0); -- Grunt Ounda

-- Zeppelin: <The Mighty Wind> "Durotar to Borean Tundra"
DELETE FROM `creature_transport` WHERE `transport_entry`=186238;
INSERT INTO `creature_transport` (`guid`,`transport_entry`,`npc_entry`,`TransOffsetX`,`TransOffsetY`,`TransOffsetZ`,`TransOffsetO`,`emote`) VALUES
(1,186238,25075,9.44542,-7.849475,-16.60061,0.05235988,0), -- Zeppelin Controls
(2,186238,31720,-16.56853,-5.083331,-15.94212,1.989675,0), -- Crewman Shubbscoop <The Mighty Wind>
(3,186238,31723,-10.75516,-12.81286,-16.77452,4.537856,0), -- Crewman Barrowswizzle <The Mighty Wind>
(4,186238,31724,5.77627,-2.004689,-17.72185,1.64061,0), -- Crewman Paltertop <The Mighty Wind>
(5,186238,31725,10.69841,-7.821921,-16.60061,3.281219,0), -- Sky-Captain LaFontaine <The Mighty Wind>
(6,186238,31726,-3.453068,-13.78959,-17.61107,1.43117,0), -- Grunt Gritch
(7,186238,31727,-3.383076,-1.913925,-17.6198,4.729842,0); -- Grunt Grikee

-- Ship: <Northspear> "Wetlands to Howling Fjord"
DELETE FROM `creature_transport` WHERE `transport_entry`=181688;
INSERT INTO `creature_transport` (`guid`,`transport_entry`,`npc_entry`,`TransOffsetX`,`TransOffsetY`,`TransOffsetZ`,`TransOffsetO`,`emote`) VALUES
(1,181688,31759,-9.170654,-9.222412,9.44523,4.339638,0), -- Sailor Jansen <Northspear>
(2,181688,31760,-24.34204,-1.495605,11.79066,4.531185,0), -- Sailor Berg <Northspear>
(3,181688,31761,17.25,3.982666,9.827404,1.127068,0), -- Sailor Davies <Northspear>
(4,181688,31762,34.08345,-0.002845,19.79711,3.124139,0), -- Navigator Marcus <Northspear>
(5,181688,31763,30.11512,-5.088479,19.32816,3.089233,0), -- Captain John Brookman <Northspear>
(6,181688,31764,26.07068,2.057755,19.32802,3.001966,0); -- First Mate Kacy Dishon <Northspear>

-- Ship: <The Kraken> "Stormwind to Borean Tundra"
DELETE FROM `creature_transport` WHERE `transport_entry`=190536;
INSERT INTO `creature_transport` (`guid`,`transport_entry`,`npc_entry`,`TransOffsetX`,`TransOffsetY`,`TransOffsetZ`,`TransOffsetO`,`emote`) VALUES
(1,190536,31788,27.59511,-2.344238,19.32811,3.228859,0), -- Captain Constance <The Kraken>
(2,190536,31789,28.09979,5.993899,19.32799,3.647738,0), -- First Mate Fitzgerald <The Kraken>
(3,190536,31790,34.22358,0.067648,19.76266,3.071779,0), -- Navigator Meyer <The Kraken>
(4,190536,31791,0.919363,8.75723,9.436611,1.256637,0), -- Sailor Dawning <The Kraken>
(5,190536,31792,-4.766113,0.09985352,9.36669,4.834562,0), -- Sailor Picardo <The Kraken>
(6,190536,31793,17.146,-3.921387,9.813052,5.497081,0); -- Sailor Phillips <The Kraken>

-- Ship: <Feathermoon Ferry> "Feralas to Feathermoon Stronghold"
DELETE FROM `creature_transport` WHERE `transport_entry`=177233;
INSERT INTO `creature_transport` (`guid`,`transport_entry`,`npc_entry`,`TransOffsetX`,`TransOffsetY`,`TransOffsetZ`,`TransOffsetO`,`emote`) VALUES
(1,177233,3681,-38.64771,-0.071194,6.08577,0.06981317,0), -- Wisp
(2,177233,3681,29.56227,0.119925,24.45391,0.08726646,0), -- Wisp
(3,177233,25019,12.80499,-7.601957,6.105068,2.9147,0), -- Merchant Felagunne <Feathermoon Ferry>
(4,177233,25020,12.95386,7.333937,6.131125,3.281219,0), -- Galley Chief Alunwea <Feathermoon Ferry>
(5,177233,25021,-21.41735,-2.833596,4.391686,6.248279,0), -- Mariner Moonblade <Feathermoon Ferry>
(6,177233,25022,20.86332,-1.285908,11.80898,2.949606,0), -- Mariner Stillwake <Feathermoon Ferry>
(7,177233,25023,-36.76907,0.169367,5.975922,3.176499,0), -- Mariner Everwatch <Feathermoon Ferry>
(8,177233,25024,-21.65951,3.22012,4.402726,0.1396263,0), -- Mariner Softsong <Feathermoon Ferry>
(9,177233,25025,31.13095,-0.454317,16.73282,2.96706,0); -- Captain Idrilae <Feathermoon Ferry>
UPDATE `spell_bonus_data` SET `direct_bonus`=0.571 WHERE `entry`=51505;
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=36725; -- Nerub'ar Broodkeeper

DELETE FROM `creature` WHERE `guid` IN (200939,200949,200956,201106,201127,201170);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`MovementType`) VALUES
(200939,36725,631,15,1,-210.3750,2202.675,75.09233,0.13962630,7200,0,0), -- Nerub'ar Broodkeeper
(200949,36725,631,15,1,-220.3819,2177.068,81.70050,0.85521130,7200,0,0), -- Nerub'ar Broodkeeper
(200956,36725,631,15,1,-216.4861,2245.405,81.70050,5.18362800,7200,0,0), -- Nerub'ar Broodkeeper
(201106,36725,631,15,1,-211.2899,2219.420,75.09233,0.15707960,7200,0,0), -- Nerub'ar Broodkeeper
(201127,36725,631,15,1,-249.8542,2219.672,86.27979,5.95157300,7200,0,0), -- Nerub'ar Broodkeeper
(201170,36725,631,15,1,-250.6129,2203.800,86.27979,0.03490658,7200,0,0); -- Nerub'ar Broodkeeper

DELETE FROM `creature_addon` WHERE `guid` IN (200912,200934,200939,200949,200956,201106,201127,201170);
INSERT INTO `creature_addon` (`guid`,`mount`,`bytes1`,`bytes2`,`auras`) VALUES
(200912,0,0x3000000,0x1,''), -- Nerub'ar Broodkeeper
(200934,0,0x3000000,0x1,''), -- Nerub'ar Broodkeeper
(200939,0,0x3000000,0x1,''), -- Nerub'ar Broodkeeper
(200949,0,0x3000000,0x1,''), -- Nerub'ar Broodkeeper
(200956,0,0x3000000,0x1,''), -- Nerub'ar Broodkeeper
(201106,0,0x3000000,0x1,''), -- Nerub'ar Broodkeeper
(201127,0,0x3000000,0x1,''), -- Nerub'ar Broodkeeper
(201170,0,0x3000000,0x1,''); -- Nerub'ar Broodkeeper
-- Zeppelin: <The Zephyr> "Durotar to Thunder Bluff"
SET @GUID := 43468;
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID AND @GUID+11;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@GUID,3084,647,1,1,0,0,-4.83257,-4.312334,-17.63218,1.623156,180,0,0,1,0,0), -- Bluffwatcher
(@GUID+1,3084,647,1,1,0,0,-5.206744,-11.34318,-17.61012,4.712389,180,0,0,1,0,0), -- Bluffwatcher
(@GUID+2,24934,647,1,1,0,0,10.32099,-3.573514,-23.49413,3.176499,180,0,0,1,0,0), -- Snack-O-Matic IV
(@GUID+3,24935,647,1,1,0,0,10.2871,-12.02722,-23.49424,3.106686,180,0,0,1,0,0), -- Vend-O-Tron D-Luxe
(@GUID+4,25075,647,1,1,0,0,-3.396398,-7.905448,-23.69672,6.248279,180,0,0,1,0,0), -- Zeppelin Controls
(@GUID+5,34715,647,1,1,0,0,-9.183155,-7.775729,-17.21699,3.281219,180,0,0,1,0,0), -- Sky-Captain "Dusty" Blastnut <The Zephyr>
(@GUID+6,34717,647,1,1,0,0,-13.67017,-12.40177,-15.98756,4.590216,180,0,0,1,0,2), -- Crewman Pipewrench <The Zephyr>
(@GUID+7,34718,647,1,1,0,0,13.74505,-5.128461,-24.04518,0.1396263,180,0,0,1,0,0), -- Crewman Deadbolt <The Zephyr>
(@GUID+8,34719,647,1,1,0,0,7.623085,-5.025319,-17.67015,4.921828,180,0,0,1,0,0), -- Crewman Grit <The Zephyr>
(@GUID+9,34721,647,1,1,0,0,-0.919197,-6.164221,-23.67286,3.577925,180,0,0,1,0,0), -- Chief Officer Ograh <The Zephyr>
(@GUID+10,34723,647,1,1,0,0,-17.47968,-5.606984,-14.92807,3.228859,180,0,0,1,0,0), -- Watcher Tolwe <The Zephyr>
(@GUID+11,34730,647,1,1,0,0,-2.166869,-7.854215,-23.6919,3.385939,180,0,0,1,0,0); -- Navigator Zippik <The Zephyr>
DELETE FROM `creature_template_addon` WHERE `entry` IN (34718,34719);
INSERT INTO `creature_template_addon` (`entry`,`bytes1`,`bytes2`,`emote`) VALUES
(34718,3,1,0),(34719,0,1,133);
-- Pathing for Crewman Pipewrench <The Zephyr> Entry: 34717
SET @NPC := @GUID+6;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,1,69, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-13.66992,-12.40186,-16.09792,4.590216,26000,0,0,100,0),
(@PATH,2,-14.49512,-9.873911,-15.99125,0,0,0,0,100,0),
(@PATH,3,-14.49512,-6.373911,-15.99125,0,0,0,0,100,0),
(@PATH,4,-14.31525,-3.41333,-15.88589,0,24000,0,0,100,0);
-- Zeppelin: <The Zephyr> SAI
SET @ENTRY  := 190549;
UPDATE `gameobject_template` SET `AIName`= 'SmartGameObjectAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY*100,@ENTRY*100+1,@ENTRY*100+2,@ENTRY*100+3) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,71,0,100,0,21868,0,0,0,80,@ENTRY*100  ,0,0,0,0,0,1,0,0,0,0,0,0,0,'Zeppelin: <The Zephyr> - Event Dock Orgrimmar - Run Script'),
(@ENTRY,1,1,0,71,0,100,0,21869,0,0,0,80,@ENTRY*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Zeppelin: <The Zephyr> - Event Leave Orgrimmar - Run Script'),
(@ENTRY,1,2,0,71,0,100,0,21870,0,0,0,80,@ENTRY*100+2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Zeppelin: <The Zephyr> - Event Dock Thunder Bluff - Run Script'),
(@ENTRY,1,3,0,71,0,100,0,21871,0,0,0,80,@ENTRY*100+3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Zeppelin: <The Zephyr> - Event Leave Thunder Bluff - Run Script'),
-- Script 0
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,19,34715,100,0,0,0,0,0,'Zeppelin: <The Zephyr> - Script Dock Orgrimmar - Sky-Captain Blastnut Say 0'),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,19,34721,100,0,0,0,0,0,'Zeppelin: <The Zephyr> - Script Dock Orgrimmar - Chief Officer Ograh Say 1'),
(@ENTRY*100,9,2,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,19,34765,100,0,0,0,0,0,'Zeppelin: <The Zephyr> - Script Dock Orgrimmar - Zelli Hotnozzle Say 0'),
(@ENTRY*100,9,3,0,0,0,100,0,3000,3000,0,0,5,5,0,0,0,0,0,19,34715,100,0,0,0,0,0,'Zeppelin: <The Zephyr> - Script Dock Orgrimmar - Sky-Captain Blastnut emote'),
(@ENTRY*100,9,4,0,0,0,100,0,1000,1000,0,0,5,25,0,0,0,0,0,19,34721,100,0,0,0,0,0,'Zeppelin: <The Zephyr> - Script Dock Orgrimmar - Chief Officer Ograh emote'),
-- Script 1
(@ENTRY*100+1,9,0,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,19,34715,100,0,0,0,0,0,'Zeppelin: <The Zephyr> - Script Dock Orgrimmar - Sky-Captain Blastnut Say 1'),
(@ENTRY*100+1,9,1,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,19,34721,100,0,0,0,0,0,'Zeppelin: <The Zephyr> - Script Dock Orgrimmar - Chief Officer Ograh Say 0'),
(@ENTRY*100+1,9,2,0,0,0,100,0,4000,4000,0,0,5,25,0,0,0,0,0,19,34721,100,0,0,0,0,0,'Zeppelin: <The Zephyr> - Script Dock Orgrimmar - Chief Officer Ograh emote'),
-- Script 2
(@ENTRY*100+2,9,0,0,0,0,100,0,0,0,0,0,1,2,0,0,0,0,0,19,34715,100,0,0,0,0,0,'Zeppelin: <The Zephyr> - Script Dock Orgrimmar - Sky-Captain Blastnut Say 2'),
(@ENTRY*100+2,9,1,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,19,34721,100,0,0,0,0,0,'Zeppelin: <The Zephyr> - Script Dock Orgrimmar - Chief Officer Ograh Say 1'),
(@ENTRY*100+2,9,2,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,19,34766,100,0,0,0,0,0,'Zeppelin: <The Zephyr> - Script Dock Orgrimmar - Krendle Bigpockets Say 0'),
(@ENTRY*100+2,9,3,0,0,0,100,0,3000,3000,0,0,5,5,0,0,0,0,0,19,34715,100,0,0,0,0,0,'Zeppelin: <The Zephyr> - Script Dock Orgrimmar - Sky-Captain Blastnut emote'),
(@ENTRY*100+2,9,4,0,0,0,100,0,1000,1000,0,0,5,25,0,0,0,0,0,19,34721,100,0,0,0,0,0,'Zeppelin: <The Zephyr> - Script Dock Orgrimmar - Chief Officer Ograh emote'),
-- Script 3
(@ENTRY*100+3,9,0,0,0,0,100,0,0,0,0,0,1,3,0,0,0,0,0,19,34715,100,0,0,0,0,0,'Zeppelin: <The Zephyr> - Script Dock Orgrimmar - Sky-Captain Blastnut Say 3'),
(@ENTRY*100+3,9,1,0,0,0,100,0,0,0,0,0,1,2,0,0,0,0,0,19,34721,100,0,0,0,0,0,'Zeppelin: <The Zephyr> - Script Dock Orgrimmar - Chief Officer Ograh Say 2'),
(@ENTRY*100+3,9,2,0,0,0,100,0,4000,4000,0,0,5,25,0,0,0,0,0,19,34721,100,0,0,0,0,0,'Zeppelin: <The Zephyr> - Script Dock Orgrimmar - Chief Officer Ograh emote');
-- Watcher Tolwe <The Zephyr> SAI
SET @ENTRY  := 34723;
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,60000,120000,60000,120000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Watcher Tolwe <The Zephyr> - OOC - Say Random');
-- Text for Watcher Tolwe, Sky-Captain Blastnut, Chief Officer Ograh, Krendle Bigpockets, & Zelli Hotnozzle
DELETE FROM `creature_text` WHERE `entry` IN (34723,34715,34721,34766,34765);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(34723,0,0,'Dat cloud look like da Warchief.',12,1,100,25,0,0,'Watcher Tolwe - Random'),
(34723,0,1,'Dere be a bug.',12,1,100,25,0,0,'Watcher Tolwe - Random'),
(34723,0,2,'Ware da ship! A harpy! ...wait, dat be another bird.',12,1,100,25,0,0,'Watcher Tolwe - Random'),
(34723,0,3,'Dere be a bird!',12,1,100,25,0,0,'Watcher Tolwe - Random'),
(34715,0,0,'And there''s Orgrimmar, huge and menacing like always. Take a quick break, boys, then it''s back to the Bluff!',12,1,100,1,0,0,'Sky-Captain Blastnut - Dock at Orgrimmar'), -- wait 3 sec do emote 5
(34715,1,0,'Next stop, Thunder Bluff',12,1,100,5,0,0,'Sky-Captain Blastnut - Leave for Thunder Bluff'),
(34715,2,0,'Watch your step! Don''t want you becoming a smudge down there. Welcome to Thunder Bluff!',12,1,100,1,0,0,'Sky-Captain Blastnut - Dock at Thunder Bluff'), -- wait 3 sec do emote 5
(34715,3,0,'Okay, boys, let''s get this baby over to Orgrimmar!',12,1,100,25,0,0,'Sky-Captain Blastnut - Leave for Orgrimmar'),
(34721,0,0,'Move it, Zippik! We don''t have all day!',12,1,100,5,0,0,'Chief Officer Ograh - Leave for Thunder Bluff'),
(34721,1,0,'Careful. CAREFUL! Did I feel a shudder? You''re going to knock that tower down, oaf!',12,1,100,5,0,0,'Chief Officer Ograh - Dock at Thunder Bluff'), -- wait 4 sec do emote 25
(34721,2,0,'We''re behind schedule! Turn this tub east! EAST!',12,1,100,5,0,0,'Chief Officer Ograh - Leave for Orgrimmar'),
(34766,0,0,'Step right up! The zeppelin to Orgrimmar has arrived! All aboard to Durotar!',14,0,100,22,0,11804,'Krendle Bigpockets - Dock at Thunder Bluff'),
(34765,0,0,'The zeppelin to Thunder Bluff has arrived! All aboard for a smooth ride across the Barrens!',14,0,100,22,0,11804,'Zelli Hotnozzle - Dock at Orgrimmar');
-- Pathing for Violetta (32720)
SET @NPC    := 32720;
SET @GUID   := 12402;
DELETE FROM `creature` WHERE `guid`=@GUID;
DELETE FROM `creature` WHERE `id`=@NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`)
VALUES (@GUID,@NPC,571,1,1,0,0,5693.527,680.9248,645.9013,4.681826,300,0,0,1,0,0,0,0,0);
DELETE FROM `creature_template_addon` WHERE `entry`=@NPC;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@NPC,0,0,0,1,0,'');
-- SAI
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@NPC;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@NPC AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@NPC*100+0,@NPC*100+1,@NPC*100+2,@NPC*100+3) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC,0,0,1,25,0,100,0,0,0,0,0,71,1670,0,0,0,0,0,1,0,0,0,0,0,0,0,"Violetta - On reset - Equip default"),
(@NPC,0,1,0,61,0,100,0,0,0,0,0,88,@NPC*100+0,@NPC*100+1,0,0,0,0,1,0,0,0,0,0,0,0,"Violetta - On reset - Run random script"),
(@NPC,0,2,0,40,1,100,0,8,0,0,0,80,@NPC*100+2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Violetta - On wp8 - Run script"),
(@NPC,0,3,0,40,2,100,0,8,0,0,0,80,@NPC*100+3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Violetta - On wp8 - Run script"),
(@NPC,0,4,0,58,0,100,0,0,0,0,0,41,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Violetta - On wp end - Despawn"),
(@NPC*100+0,9,0,0,0,0,100,0,0,0,0,0,53,0,@NPC*10+0,0,0,0,0,1,0,0,0,0,0,0,0,"Violetta - On script 1 - Start waypoint 1"),
(@NPC*100+0,9,1,0,0,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Violetta - On script 1 - Set phase 1"),
(@NPC*100+1,9,0,0,0,0,100,0,0,0,0,0,53,0,@NPC*10+1,0,0,0,0,1,0,0,0,0,0,0,0,"Violetta - On script 2 - Start waypoint 2"),
(@NPC*100+1,9,1,0,0,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Violetta - On script 2 - Set phase 2"),
(@NPC*100+2,9,0,0,0,0,100,0,0,0,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Violetta - On script - Pause WP 10 seconds"),
(@NPC*100+2,9,1,0,0,0,100,0,5000,5000,5000,5000,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Violetta - On script - Emote talk"),
(@NPC*100+2,9,2,0,0,0,100,0,3000,3000,3000,3000,71,0,0,44655,0,0,0,1,0,0,0,0,0,0,0,"Violetta - On script - Equip item"),
(@NPC*100+3,9,0,0,0,0,100,0,0,0,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Violetta - On script - Pause WP 10 seconds"),
(@NPC*100+3,9,1,0,0,0,100,0,5000,5000,5000,5000,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Violetta - On script - Emote talk"),
(@NPC*100+3,9,2,0,0,0,100,0,3000,3000,3000,3000,71,0,0,40020,0,0,0,1,0,0,0,0,0,0,0,"Violetta - On script - Equip item");
-- Waypoints
DELETE FROM `waypoints` WHERE `entry` IN (@NPC*10+0,@NPC*10+1);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@NPC*10+0,1,5693.35,675.1416,645.6994,'Violetta wp1'),
(@NPC*10+0,2,5690.851,664.07,646.2488,'Violetta wp1'),
(@NPC*10+0,3,5686.851,656.5425,646.5913,'Violetta wp1'),
(@NPC*10+0,4,5679.384,648.7989,646.6834,'Violetta wp1'),
(@NPC*10+0,5,5675.498,647.6321,647.0242,'Violetta wp1'),
(@NPC*10+0,6,5669.809,645.4785,647.9725,'Violetta wp1'),
(@NPC*10+0,7,5664.492,643.8845,647.98,'Violetta wp1'),
(@NPC*10+0,8,5664.87,642.0466,647.98,'Violetta wp1'),
(@NPC*10+0,9,5669.127,645.5728,647.9717,'Violetta wp1'),
(@NPC*10+0,10,5675.875,647.3784,647.0391,'Violetta wp1'),
(@NPC*10+0,11,5681.011,648.9694,646.6834,'Violetta wp1'),
(@NPC*10+0,12,5683.774,658.9824,646.6004,'Violetta wp1'),
(@NPC*10+0,13,5682.824,671.3663,647.0424,'Violetta wp1'),
(@NPC*10+0,14,5677.113,674.4891,649.4763,'Violetta wp1'),
(@NPC*10+0,15,5667.89,677.9095,652.0448,'Violetta wp1'),
(@NPC*10+0,16,5655.117,684.3335,651.9886,'Violetta wp1'),
(@NPC*10+0,17,5649.896,690.4983,651.9928,'Violetta wp1'),
(@NPC*10+0,18,5646.092,697.507,651.9928,'Violetta wp1'),
(@NPC*10+0,19,5646.725,700.2504,651.9928,'Violetta wp1'),
(@NPC*10+1,1,5693.35,675.1416,645.6994,'Violetta wp2'),
(@NPC*10+1,2,5690.851,664.07,646.2488,'Violetta wp2'),
(@NPC*10+1,3,5686.851,656.5425,646.5913,'Violetta wp2'),
(@NPC*10+1,4,5679.384,648.7989,646.6834,'Violetta wp2'),
(@NPC*10+1,5,5675.498,647.6321,647.0242,'Violetta wp2'),
(@NPC*10+1,6,5669.809,645.4785,647.9725,'Violetta wp2'),
(@NPC*10+1,7,5664.369,644.7076,647.9811,'Violetta wp2'),
(@NPC*10+1,8,5661.005,643.9919,647.9821,'Violetta wp2'),
(@NPC*10+1,9,5669.143,645.5861,647.9418,'Violetta wp2'),
(@NPC*10+1,10,5675.875,647.3784,647.0391,'Violetta wp2'),
(@NPC*10+1,11,5681.011,648.9694,646.6834,'Violetta wp2'),
(@NPC*10+1,12,5683.774,658.9824,646.6004,'Violetta wp2'),
(@NPC*10+1,13,5682.824,671.3663,647.0424,'Violetta wp2'),
(@NPC*10+1,14,5677.113,674.4891,649.4763,'Violetta wp2'),
(@NPC*10+1,15,5667.89,677.9095,652.0448,'Violetta wp2'),
(@NPC*10+1,16,5655.117,684.3335,651.9886,'Violetta wp2'),
(@NPC*10+1,17,5649.896,690.4983,651.9928,'Violetta wp2'),
(@NPC*10+1,18,5646.092,697.507,651.9928,'Violetta wp2'),
(@NPC*10+1,19,5646.725,700.2504,651.9928,'Violetta wp2');
DELETE FROM `creature_template_addon` WHERE `entry` = 29975;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(29975, 0, 0x10000, 0x1, 54503); -- Lok'lira the Crone - Quest Invisibility 2

DELETE FROM `creature` WHERE `id` = 29975 OR `guid` = 2593;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(2593, 29975, 571, 1, 1, 6922.175, -1534.575, 836.1568, 4.276057, 120, 0, 0); -- Lok'lira the Crone (Area: Brunnhildar Village)

DELETE FROM `spell_area` WHERE `spell` = 54504;
INSERT INTO `spell_area` (`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`) VALUES
(54504,4422,12921,1,0,0,0,2,1); -- cast see quest invisibility 2 after accepting the quest from lok'lira.
-- Missing gossip for Krendle Bigpockets <Durotar Zeppelin Master> in Thunder Bluff
UPDATE `creature_template` SET `gossip_menu_id`=10566 WHERE `entry`=34766;
DELETE FROM `gossip_menu` WHERE `entry`=10566 AND `text_id`=14622;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10566,14622);
-- Missing gossip
DELETE FROM `gossip_menu_option` WHERE `menu_id`=7368 AND `id` IN (3,4);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(7368,3,0,'Acteon, where is the best area to hunt for moongraze stags?',1,1,7423,0,0,0,''),
(7368,4,0,'Acteon, where is the best place to hunt moongraze bucks?',1,1,7424,0,0,0,'');
-- conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=7368 AND `SourceEntry` IN (3,4);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,7368,3,0,0,9,9454,0,0,0,0,'','Acteon - Show gossip option if player has quest 9454'),
(15,7368,4,0,0,9,10324,0,0,0,0,'','Acteon - Show gossip option if player has quest 10324');
-- Gossip Condition for Archmage Celindra <Portal Trainer>
SET @GOSSIP := 9777;
SET @TEXTNO := 13455;
SET @TEXTYES := 13456;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTNO,0,15,1407,0,0,0,'','Show gossip text if player is not a mage'),
(14,@GOSSIP,@TEXTYES,0,15,128,0,0,0,'','Show gossip text if player is a mage');
-- Update NPC 4217 Mathrengyl Bearwalker
DELETE FROM `gossip_menu_option` WHERE `menu_id`=1403 AND `id`=3;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(1403,3,1,'I''d like to purchase more Tharlendris seeds.',3,128,0,0,0,0,'');
-- conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=1403 AND `SourceEntry`=3;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,1403,3,0,0,8,3781,0,0,0,0,'','Mathrengyl Bearwalker - Show gossip option if player has rewarded quest 3781'); -- available only for druids
 -- Quest 3792 should only be available after quest 3791
UPDATE `quest_template` SET `PrevQuestId`=3791 WHERE `id`=3792;
-- Grand Anchorite Almonen SAI
SET @ENTRY  := 19216;
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY*100) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,10000,10000,300000,300000,80,@ENTRY*100  ,0,0,0,0,0,1,0,0,0,0,0,0,0,'Sky-Captain Cloudkicker - OOC - Run Script'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.654867,'Grand Anchorite Almonen - Script - Turn to'),
(@ENTRY*100,9,1,0,0,0,100,0,9000,9000,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - emote'),
(@ENTRY*100,9,2,0,0,0,100,0,23000,23000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1854.72,5423.082,-10.45947,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,3,0,0,0,100,0,800,800,0,0,69,0,0,0,0,0,0,8,0,0,0,-1854.598,5411.999,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,4,0,0,0,100,0,5000,5000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.183628,'Grand Anchorite Almonen - Script - Turn to'),
(@ENTRY*100,9,5,0,0,0,100,0,100,100,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 0'),
(@ENTRY*100,9,6,0,0,0,100,0,9000,9000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 1'),
(@ENTRY*100,9,7,0,0,0,100,0,9000,9000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 2'),
(@ENTRY*100,9,8,0,0,0,100,0,25000,25000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 3'),
(@ENTRY*100,9,9,0,0,0,100,0,10000,10000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1851.699,5413.06,-12.42816,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,10,0,0,0,100,0,100,100,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 4'),
(@ENTRY*100,9,11,0,0,0,100,0,1000,1000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1848.775,5412.81,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,12,0,0,0,100,0,2000,2000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.276057,'Grand Anchorite Almonen - Script - Turn to'),
(@ENTRY*100,9,13,0,0,0,100,0,4000,4000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 5'),
(@ENTRY*100,9,14,0,0,0,100,0,7000,7000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1851.574,5412.084,-12.42816,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,15,0,0,0,100,0,1900,1900,0,0,69,0,0,0,0,0,0,8,0,0,0,-1856.307,5410.266,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,16,0,0,0,100,0,1900,1900,0,0,69,0,0,0,0,0,0,8,0,0,0,-1859.002,5406.959,-12.42814,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,17,0,0,0,100,0,3000,3000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.707227,'Grand Anchorite Almonen - Script - Turn to'),
(@ENTRY*100,9,18,0,0,0,100,0,100,100,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 6'),
(@ENTRY*100,9,19,0,0,0,100,0,10000,10000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 7'),
(@ENTRY*100,9,20,0,0,0,100,0,9000,9000,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 8'),
(@ENTRY*100,9,21,0,0,0,100,0,5000,5000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1855.089,5410.676,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,22,0,0,0,100,0,1000,1000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1853.62,5409.833,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,23,0,0,0,100,0,3000,3000,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 9'),
(@ENTRY*100,9,24,0,0,0,100,0,11000,11000,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 10'),
(@ENTRY*100,9,25,0,0,0,100,0,9000,9000,0,0,1,11,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 11'),
(@ENTRY*100,9,26,0,0,0,100,0,100,100,0,0,69,0,0,0,0,0,0,8,0,0,0,-1852.503,5412.286,-12.42816,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,27,0,0,0,100,0,1000,1000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1849.053,5415.075,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,28,0,0,0,100,0,2000,2000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.340707,'Grand Anchorite Almonen - Script - Turn to'),
(@ENTRY*100,9,29,0,0,0,100,0,5000,5000,0,0,1,12,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 12'),
(@ENTRY*100,9,30,0,0,0,100,0,11000,11000,0,0,1,13,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 13'),
(@ENTRY*100,9,31,0,0,0,100,0,4000,4000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1851.643,5414.012,-12.42816,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,32,0,0,0,100,0,1200,1200,0,0,69,0,0,0,0,0,0,8,0,0,0,-1854.913,5412.682,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,33,0,0,0,100,0,800,800,0,0,69,0,0,0,0,0,0,8,0,0,0,-1854.408,5411.227,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,34,0,0,0,100,0,1000,1000,0,0,1,14,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 14'),
(@ENTRY*100,9,35,0,0,0,100,0,10000,10000,0,0,1,15,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 15'),
(@ENTRY*100,9,36,0,0,0,100,0,7000,7000,0,0,1,16,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 16'),
(@ENTRY*100,9,37,0,0,0,100,0,10000,10000,0,0,1,17,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 17'),
(@ENTRY*100,9,38,0,0,0,100,0,11000,11000,0,0,1,18,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 18'),
(@ENTRY*100,9,39,0,0,0,100,0,10000,10000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1853.137,5424.863,-10.47787,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,40,0,0,0,100,0,6500,6500,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.6529,'Grand Anchorite Almonen - Script - Turn to');
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry`=19216;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(19216,0,0, 'Friends, it is my great pleasure to welcome you to the temple today.',12,0,100,1,0,0, 'Grand Anchorite Almonen'),
(19216,1,0, 'A''dal has been most generous in his revelations to me, a humble servant of the Light.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,2,0, 'In accordance with my divine calling, I must share these revealed truths to all who would hear.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,3,0, 'It has been made known to me that inside each of us, the Light resides...',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,4,0, '...that it is a gift, given freely to all naturally born beings.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,5,0, 'It manifests itself as a feeling, small at first and easily ignored, that confirms truths and subtly prods one to do good.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,6,0, 'Simple kindnesses, charitable deeds, service to those in need. These are all fruits of the Light.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,7,0, 'It rewards those who heed its promptings with blessings, both seen and unseen.',12,0,100,1,0,0, 'Grand Anchorite Almonen'),
(19216,8,0, 'Personal reservoirs of hope and faith are strengthened, and one''s capacity for greater light increases.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,9,0, 'Over the course of time, through obedience to the Light''s guidance, one becomes more sensitive to its voice, and its power.',12,0,100,273,0,0, 'Grand Anchorite Almonen'),
(19216,10,0, 'Great is the healing and blessing power of the Light''s most diligent followers.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,11,0, 'Sadly, there are those who wander through mortality in defiance of the Light.',12,0,100,1,0,0, 'Grand Anchorite Almonen'),
(19216,12,0, 'From these the Light withdraws, until only darkness remains.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,13,0, 'Where there is no light, despair, loathing and rage thrive.',12,0,100,5,0,0, 'Grand Anchorite Almonen'),
(19216,14,0, 'We are born into a perilous age, where the forces of darkness are determined to bring about our destruction.',12,0,100,1,0,0, 'Grand Anchorite Almonen'),
(19216,15,0, 'These are the times to find yourselves in unison with the Light.',12,0,100,5,0,0, 'Grand Anchorite Almonen'),
(19216,16,0, 'Hear my words, and let the Light inside of you confirm the truth of them.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,17,0, 'Embrace the light that is in you, my friends! Deny yourself all darkness...',12,0,100,5,0,0, 'Grand Anchorite Almonen'),
(19216,18,0, 'We must endure these trying times faithfully, and one day we will find ourselves victorious.',12,0,100,5,0,0, 'Grand Anchorite Almonen');
