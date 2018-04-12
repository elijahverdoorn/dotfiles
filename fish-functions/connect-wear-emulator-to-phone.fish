function connect-wear-emulator-to-phone -d "Connect a running WearOS emulator to connected Android Phone"
	adb -d forward tcp:5601 tcp:5601
end
