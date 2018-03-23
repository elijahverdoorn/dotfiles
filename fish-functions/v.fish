function v -d 'Vim Alias'
	if [ (count $argv) -eq 0 ]
		vim .
	else
		vim $argv
	end
end
