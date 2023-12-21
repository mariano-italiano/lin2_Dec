#!/bin/bash

LOGFILE=/tmp/skrypt.signals
COUNT=0

function przechwyc_sigint {
	COUNT=$(( $COUNT + 1 ))
	echo
	if [[ $COUNT > 0 ]] ; then
		echo "Wystąpił SIGINT po raz $COUNT" >> $LOGFILE
	fi
}

function przechwyc_sigterm {
	echo "Wystąpił SIGTERM ale nie zakończę programu bo jest sprytniejszy" >> $LOGFILE
}

trap przechwyc_sigint SIGINT
trap przechwyc_sigterm SIGTERM

while true
do
	sleep 10
done
