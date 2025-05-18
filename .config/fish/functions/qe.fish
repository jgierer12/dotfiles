function qe
	set qe_file "$HOME/.config/quickedit.txt"

	if test -z $argv
		# Show fzf picker if no argument is given
		set sel (cat $qe_file | fzf)
	else
		# Pick best result if argument is given
		set sel (cat $qe_file | fzf --filter "$argv" | head -n 1)
	end

	# Expand `~` into $HOME
	set sel_expanded (string replace -r '^~' $HOME $sel)

	# Exit if nothing was selected
	if test -z $sel_expanded
		return 1
	end

	# Open selection in default editor
	$EDITOR "$sel_expanded"
end
