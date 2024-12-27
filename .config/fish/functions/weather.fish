function weather
	set loc (echo $argv | sd ' ' '+')
	curl -s "wttr.in/$loc?m" | rg -v Follow
end

