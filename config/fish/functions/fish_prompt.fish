function fish_prompt
	set -l pwd (prompt_pwd)
	set -l len (echo $pwd | wc -c)
	set -l max (math $COLUMNS)

	if test $len -gt $max
		set pwd (printf "%s…%s%s" (set_color red) (set_color $fish_color_cwd) (echo -n $pwd | cut -b (math $len - $max + 2)-))
	end

	set_color $fish_color_cwd
	echo $pwd

	if test (whoami) = "root"
		set_color red
		echo -n '☢ '
	end

	set_color magenta
	echo -n '❯ '

	set_color normal
end
