function breeze-build -d 'Build app using breeze remote builds'
	./gradlew gw -Igradle/breeze.init.gradle.kts $argv
end
