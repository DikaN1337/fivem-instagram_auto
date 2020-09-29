function sendToDiscord(name, message)
	local DiscordWebHookURL = "" -- WEBHOOK URL
	local embeds = {
		{
			["title"] = message,
			["type"] = "rich",
			["color"] = "11750815",
			["footer"] =  {
				["text"] = "Instagram Automatico",
		   },
		}
	}

  if message == nil or message == '' then return FALSE end
  PerformHttpRequest(DiscordWebHookURL, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embeds}), {['Content-Type'] = 'application/json' })
end

RegisterServerEvent("screenshotTaked")
AddEventHandler("screenshotTaked", function(pname, response)
   sendToDiscord("Instagram de " .. pname, response)
end)