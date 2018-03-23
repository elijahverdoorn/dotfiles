function android-type -d "send text to connected android device"
	if count $argv > /dev/null
		for x in $argv
			adb shell input text $x
			adb shell input keyevent 62
		end
	end
end
