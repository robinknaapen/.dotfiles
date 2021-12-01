#!/bin/bash
WORKDIR="$HOME/.local/share/unsplash.sh"
mkdir -p $WORKDIR

DIM='1920x1080'
CAT='mountain'

wp() {
	RANT=$(date +"%d-%m-%Y %H:%M")

	wget -O "$WORKDIR/$RANT.jpg" -q "https://source.unsplash.com/$DIM/?$CAT" &> /dev/null
	cp "$WORKDIR/$RANT.jpg" "$WORKDIR/current.jpg"

	feh --bg-fill "$WORKDIR/current.jpg"
}

restore() {
	if [ -f "$WORKDIR/current.jpg" ]; then
		feh --bg-fill "$WORKDIR/current.jpg"
	else 
		wp
	fi
}

daemon() {
	while true; do
		sleep 10m;
		wp
	done
}

declare -a COMMANDS
while [ ! $# -eq 0 ]
do
	case "$1" in
		--dim)
			DIM=$2
			shift
			;;
		--cat)
			CAT=$2
			shift
			;;
		--random)
			COMMANDS=(wp)
			;;
		-d)
			COMMANDS=(
				restore
				daemon
			)
			;;
		--restore)
			COMMANDS=(restore)
			;;
	esac
	shift
done

for COMMAND in "${COMMANDS[@]}"; do
	$COMMAND
done
