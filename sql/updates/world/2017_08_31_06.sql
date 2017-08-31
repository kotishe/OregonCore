ALTER TABLE `npc_vendor`
ADD COLUMN `slot`  smallint(6) NOT NULL DEFAULT 0 AFTER `entry`;