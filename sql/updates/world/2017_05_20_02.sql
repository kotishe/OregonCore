DELETE FROM `command` WHERE `name`="modify aspeed";
DELETE FROM `command` WHERE `name`="modify bwalk";
DELETE FROM `command` WHERE `name`="modify fly";
DELETE FROM `command` WHERE `name`="modify speed";

INSERT INTO `command` (`name`, `security`, `help`) VALUES 
('modify speed', 1, 'Syntax: .modify speed $speedtype #rate\r\n\r\nModify the running speed of the selected player to "normal base run speed"= 1. If no player is selected, modify your speed.\r\n\r\n$speedtypes may be fly, all, walk, backwalk, or swim.\r\n\r\n #rate may range from 0.1 to 50.');