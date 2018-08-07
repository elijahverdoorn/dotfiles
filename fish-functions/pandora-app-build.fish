function pandora-app-build -d 'Build and start the pandora app without Android Studio'
	set dev_dir ~/dev/android # this is where I put the android repo
	if test -d $dev_dir # check if the code directory exists
		set current_dir $PWD # make sure we can navigate back to the user's current dir
		cd $dev_dir
		./gradlew app:installInternalDebug
		adb shell am start -n "com.pandora.android.internal/com.pandora.android.Main" -a android.intent.action.MAIN -c android.intent.category.LAUNCHER
		cd $current_dir # put the user back where they started
	else
		echo Code directory not found, aborting
	end
end
