#!/usr/bin/awk -f
#
# Reads input from `receivemidi` and outputs it to pianoroll format.
#
# $ receivemidi dev <name> note nn | ./receivemidi-parser.awk

# example input:  channel  1   note-on          120  73
# example output: on 120

$3 == "note-on" || $3 == "note-off" {
	# 21 is where A0 starts in midi
	key = $4 - 21

	if (key < 0 || key >= 88) {
		next
	}

	if ($3 == "note-off" || $5 == "0") {
		print "off", key
	} else {
		print "on", key
	}

	fflush()
}
