#!/usr/bin/env bash


main () {
	echo "Hello, ${1:-}"
}

   main "$@"
