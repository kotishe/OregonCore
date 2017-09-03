-- Tosamina, Lil Timmy and Zem Leeward
DELETE FROM `creature_text` WHERE `CreatureID`=14498;
DELETE FROM `creature_text` WHERE `CreatureID`=8666;
DELETE FROM `creature_text` WHERE `CreatureID`=348;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`TextRange`,`comment`) VALUES
(14498,0,0,"You are mine now, children.  You will grow up to be a strong part of the Horde!",12,1,100,0,0,0,0,"Tosamina"),
(14498,0,1,"Stop whining!",12,1,100,0,0,0,0,"Tosamina"),
(14498,0,2,"Clean this place up! We will not live in such squalor.",12,1,100,0,0,0,0,"Tosamina"),
(14498,0,3,"It's my way or the Gold Road.  Is that understood?",12,1,100,0,0,0,0,"Tosamina"),
(8666,0,0,"Don\t worry, I\ll find a good home for ya.",12,7,100,0,0,0,0,"Lil Timmy"),
(8666,0,1,"Can anyone give my adorable, extra little kitty a home?",12,7,100,0,0,0,0,"Lil Timmy"),
(8666,0,2,"I can\t believe dad won\t let me keep your sister.",12,7,100,0,0,0,0,"Lil Timmy"),
(8666,0,3,"Kitten for sale, looking for a good home.",12,7,100,0,0,0,0,"Lil Timmy"),
(8666,0,4,"What does allergic mean anyway? And what does it have to do with either of my kitties?",12,7,100,0,0,0,0,"Lil Timmy"),
(8666,0,5,"Will someone please give my little kitten a good home?",12,7,100,0,0,0,0,"Lil Timmy"),
(348,0,0,"Nothing biting....",12,7,100,0,0,0,0,"Zem Leeward"),
(348,0,1,"Here fishy fishy. . . come to papa.",12,7,100,0,0,0,0,"Zem Leeward");
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=14498;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=8666;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=348;
DELETE FROM `smart_scripts` WHERE `entryorguid`=14498;
DELETE FROM `smart_scripts` WHERE `entryorguid`=8666;
DELETE FROM `smart_scripts` WHERE `entryorguid`=348;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(14498,0,0,0,1,0,100,0,1000,15000,150000,180000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tosamina - Out of Combat - Say Line 0"),
(8666,0,0,0,1,0,100,0,1000,15000,150000,180000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lil Timmy - Out of Combat - Say Line 0"),
(348,0,0,0,1,0,100,0,1000,15000,150000,180000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zem Leeward - Out of Combat - Say Line 0");