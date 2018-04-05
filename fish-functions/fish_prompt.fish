function fish_prompt # Custom prompt for fish shell
	if git rev-parse --git-dir > /dev/null ^ /dev/null
		echo (pwd) '>' (git rev-parse --abbrev-ref HEAD) '> '
	else
		echo (pwd) '> '
	end
end
