function pandora-app-build -d 'Build and start the pandora app without Android Studio'
	set current_dir $PWD
	cd ~/android
	./gradlew app:installInternalDebug
	adb shell am start -n "com.pandora.android.internal/com.pandora.android.Main" -a android.intent.action.MAIN -c android.intent.category.LAUNCHER
	cd $current_dir
end
