ALTER TABLE `creature`
 ADD COLUMN `zoneId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Zone Identifier' AFTER `map`,
 ADD COLUMN `areaId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Area Identifier' AFTER `zoneId`,
 ADD COLUMN `VerifiedBuild` smallint(5) DEFAULT '0' AFTER `dynamicflags`;
