function calc --wraps numbat
	if test -z $argv
		numbat
	else
		numbat --pretty-print=always -e "$argv"
	end
end

