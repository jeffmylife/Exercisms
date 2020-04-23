#!/usr/bin/env bash
main () {

	s=""

	if (( $1 % 3 == 0 )) 
	then
		s="Pling"
	fi

	if (( $1 % 5 == 0 ))
        then
                s="${s}Plang"
        fi

	if (( $1 % 7 == 0 ))
        then
                s="${s}Plong"
        fi

	if [[ -z $s ]]
	then
		echo $1
	else 
		echo $s
	fi

}
main "$@"
