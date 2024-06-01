#!/bin/bash

while [[ $# -gt 0 ]]; do
    key="$1"

    case $key in
        -d|--date)
        echo $(date)
        shift
        ;;
        -l|--logs)
        num_logs="${2:-100}"
        for ((i=1; i<=$num_logs; i++)); do
            echo "log$i.txt created by skrypt.sh on $(date)" > "log$i.txt"
        done
        shift
        ;;
        -h|--help)
        echo "Usage: skrypt.sh [options]"
        echo "Options:"
        echo "  -d, --date      Display today's date"
        echo "  -l, --logs      Create log files"
        echo "  -h, --help      Display this help message"
        exit 0
        ;;
        *)
        echo "Unknown option: $1"
        echo "Use -h or --help for usage information."
        exit 1
        ;;
    esac
done
