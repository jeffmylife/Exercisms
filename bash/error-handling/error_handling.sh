#!/usr/bin/env bash


main () { 
	echo "$1"
	echo "Hello, ${1:-}"

}

   main "$@"
