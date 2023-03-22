#!/bin/bash
WORKDIR="${HOME}/.local/share/unsplash.sh"
mkdir -p $WORKDIR

DIM='1920x1080'
CAT='mountain'

restore() {
	feh --bg-fill "${WORKDIR}/current.jpg"
}

wp() {
	RANT=$(date +"%d-%m-%Y %H:%M")

	wget -O "${WORKDIR}/${RANT}.jpg" -q "https://source.unsplash.com/${DIM}/?${CAT}"
	cp "${WORKDIR}/${RANT}.jpg" "${WORKDIR}/current.jpg"

	feh --bg-fill "${WORKDIR}/current.jpg"
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