function fish_prompt # Custom prompt for fish shell
	if git rev-parse --git-dir > /dev/null ^ /dev/null
		set_color blue
		echo -n (pwd)
		set_color green
		echo -n ' ('(git rev-parse --abbrev-ref HEAD)')'
		set_color blue
		echo -n ' > '
	else
		set_color blue
		echo (pwd) '> '
	end
end
