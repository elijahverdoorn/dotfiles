function deprecated_fish_prompt # Custom prompt for fish shell
	if set -q VIRTUAL_ENV
		# using a virtual python env, put that in the prompt
		echo -n -s (set_color -b blue white) "(" (basename "$VIRTUAL_ENV") ")" (set_color normal) " "
	end
	if git rev-parse --git-dir > /dev/null ^ /dev/null
		# this is a git directory, so we want to show the current branch
		set_color blue
		echo -n (pwd)
		set -l git_status (git status -s)
		if test -n "$git_status"
			# git dir is dirty, show branch name in red
			set_color red
		else
			# git dir is not dirty, green branch name
			set_color green
		end
		echo -n ' ('(git rev-parse --abbrev-ref HEAD)')'
		set_color blue
		echo -n ' > '
	else
		# not a git directory, don't need to show branch
		set_color blue
		echo (pwd) '> '
	end
end
