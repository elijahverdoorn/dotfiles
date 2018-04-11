function fish_prompt # Custom prompt for fish shell
	if git rev-parse --git-dir > /dev/null ^ /dev/null
		# this is a git directory, so we want to show the current branch
		set_color blue
		echo -n (pwd)
		set_color green
		echo -n ' ('(git rev-parse --abbrev-ref HEAD)')'
		set_color blue
		echo -n ' > '
	else
		# not a git directory, don't need to show branch
		set_color blue
		echo (pwd) '> '
	end
end
