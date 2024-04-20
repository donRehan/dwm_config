#! /bin/bash
export stat=$(pacmd list-sinks | grep "muted")
export stat=$(echo $stat | xargs)

if [[ $stat == "muted: no" ]]; then
	echo "🔊"
elif [[ $stat == "muted: yes" ]]; then
	echo "🔇"
fi

#echo $stat
# TODO : Return muted / unmuted emoji based on the muted status
