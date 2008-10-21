local config = {
	CHAT_MSG_CHANNEL = true,
	CHAT_MSG_GUILD = false,
	CHAT_MSG_OFFICER = true,
	CHAT_MSG_PARTY = false,
	CHAT_MSG_RAID = false,
	CHAT_MSG_RAID_LEADER = false,
	CHAT_MSG_YELL = false,
	CHAT_MSG_SAY = false,
	CHAT_MSG_BATTLEGROUND = false,
	CHAT_MSG_BATTLEGROUND_LEADER = false,
}

hooksecurefunc("ChatFrame_MessageEventHandler", function(self, event, ...)
	local eventChan = select(9, ...)

	if(config[event]) then
		if(event ~= "CHAT_MSG_CHANNEL") then
			FCF_FlashTab(self)
		else
			for _, chan in ipairs(self.channelList) do
				if(chan == arg9) then
					FCF_FlashTab(self)
					break
				end
			end
		end
	end
end)
