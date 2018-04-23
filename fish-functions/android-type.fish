function android-type -d "send text to connected android device"
	set used_argv_count 0
	if count $argv > /dev/null
		for x in $argv
			adb shell input text $x
			set used_argv_count (math $used_argv_count + 1)
			if test (count $argv) -gt $used_argv_count
				adb shell input keyevent 62
			end
		end
	end
end
