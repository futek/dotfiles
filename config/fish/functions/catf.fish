function catf --description "cat and follow"
	tail -f -n +1 $argv | cat
end