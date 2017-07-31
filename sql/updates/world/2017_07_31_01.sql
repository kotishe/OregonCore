-- Add missing gossip text for Wharfmaster Dizzywig
REPLACE INTO `npc_text` VALUES (225,'Something I can help you with, $n? There\'s a shipment I\'ve got to see to otherwise.','',0,1,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0);
REPLACE INTO `npc_gossip` VALUES (14419, 225);
UPDATE `creature_template` SET npcflag = 3 WHERE entry = 3453;