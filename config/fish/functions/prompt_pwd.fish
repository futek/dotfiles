function prompt_pwd --description 'print working directory for use in prompt'
	echo $PWD | sed -e "s|^$HOME|~|"
end