function sniff --description "capture 802.11 frames with airportd and view with wireshark"
	set -l interface en0
	if test (count $argv) -ge 1
		set interface $argv[1]
	end

	find /tmp/ -name "airportSniff*.cap" -delete # delete previous captures

	if test (count $argv) -ge 2
		set -l channel $argv[2]
		/usr/libexec/airportd $interface sniff $channel & # start capture on specific channel
	else
		/usr/libexec/airportd $interface sniff & # start capture current channel
	end

	sleep 1

	set -l capture (find /tmp/ -name "airportSniff*.cap") # find current capture

	if test (count $capture) -eq 1
		tail -f -n +1 $capture | cat -u | wireshark -k -i - # start wireshark
	else
		echo 'current capture not found'
	end

	killall airportd # stop capture when wireshark terminates
end