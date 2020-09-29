RegisterCommand('instagram', function(source, args, rawCommand)
	local pname = GetPlayerName(source)
	exports['screenshot-basic']:requestScreenshotUpload('http://example.com/instagram/upload.php', 'files', function(data)
		local response = data
		TriggerServerEvent("screenshotTaked", pname, response)
		exports.pNotify:SendNotification({text = "Acabaste de tirar uma foto para o Instagram do Discord, se ficar bugada, tenta com o FiveM em modo janela!", type = "info", timeout = 10000, layout = "centerLeft"})
	end)
end)