#!/bin/bash

mkdir -p augustus_prediction/proteins

for gff in augustus_prediction/gff/*.gff
do
    out="augustus_prediction/proteins/$(basename "$gff" .gff).faa"

    awk '
    /^# protein sequence = \[/{
        n++
        printf(">protein_%d\n",n)

        line=$0
        sub(/^# protein sequence = \[/,"",line)

        while (1) {

            if (line ~ /\]$/) {
                sub(/\]$/,"",line)
                gsub(/ /,"",line)
                print line
                break
            }

            gsub(/ /,"",line)
            printf("%s",line)

            getline
            sub(/^# /,"",$0)
            line=$0
        }

        printf("\n")
    }
    ' "$gff" > "$out"

done
