function fish_right_prompt
	set -l s $status
	if test $s != 0
		set_color $fish_color_error
		echo "($s)"
	end
end