local MenuId = 7394
local NpcId = 17249

local LandroMenus = {
    WELCOME							=	8855,
	PROMOTION_MENU_TEXT				=	8856,
	PROMOTION						=	9197,
	HEROES_OF_AZEROTH				=	9192,
	THROUGH_THE_DARK_PORTAL			=	9194,
	FIRES_OF_OUTLAND				=	9195,
	MARCH_OF_THE_LEGION				=	9196,
	SERVANTS_OF_THE_BETRAYER		=	9191,
	HUNT_FOR_ILLIDAN				=	9629,
	DRUMS_OF_WAR					=	9682,
	POINTS_REDEMPTION				=	9193
}	

local SelectedMenu;

local function OnGossipHello(event, player, object)
    player:GossipClearMenu()
	player:GossipMenuAddItem(0, "What promotions do you have?", NpcId, LandroMenus.WELCOME)
	player:GossipSendMenu(LandroMenus.WELCOME, object, MenuId)
end

local function OnGossipSelect(event, player, object, sender, intid, code, menuid)	
	if (intid == 8855) then
	    SelectedMenu = 9197
	else
	    SelectedMenu = intid
	end
	
	local GetGossipFields = WorldDBQuery("SELECT id, option_text, action_menu_id FROM gossip_menu_option WHERE menu_id = " ..SelectedMenu.. ";");
	if GetGossipFields then
	    repeat
		    local OptionText = GetGossipFields:GetString(1)
			local ActionMenuID = GetGossipFields:GetUInt32(2)
			if (ActionMenuID ~= 0) then
			    player:GossipMenuAddItem(0, OptionText, NpcId, ActionMenuID)
			else
			    player:GossipMenuAddItem(0, OptionText, NpcId, SelectedMenu, true, nil)
			end
		until not GetGossipFields:NextRow()
		player:GossipSendMenu(LandroMenus.PROMOTION_MENU_TEXT, object, MenuId)
	end
	
	if (code) then
	    local SearchForCode = WorldDBQuery("SELECT item FROM promotion_codes WHERE code = " ..code.. " AND collection = " ..SelectedMenu.. " AND used = 0;");
		if (SearchForCode == nil) then
		    player:GossipComplete()
		else
		    repeat
			    player:AddItem(SearchForCode:GetUInt32(0), 1)
				WorldDBQuery("UPDATE promotion_codes SET used = 1 WHERE code = " ..code.. ";");
			until not SearchForCode:NextRow()
		end
		player:GossipComplete()
	end
end

RegisterCreatureGossipEvent(NpcId, 1, OnGossipHello)
RegisterCreatureGossipEvent(NpcId, 2, OnGossipSelect)
