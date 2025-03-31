local modem = peripheral.find("modem") or error("no modem found", 0)

modem.open(80)

local event, side, channel, replyChannel, message, distance

while true do
	repeat
		event, side, channel, replyChannel, message, distance = os.pullEvent("modem_message")
	until channel == 80
	print("message:", tostring(message), "\n Channel:", tostring(replyChannel))
end
