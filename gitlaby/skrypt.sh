#!/bin/bash

if [ "$1" == "--date" ]; then
    date
elif [ "$1" == "--logs" ]; then
    if [ -z "$2" ]; then
        count=100
    else
        count=$2
    fi

    for ((i=1; i<=$count; i++)); do
        filename="log$i.txt"
        echo "Nazwa pliku: $filename" > "$filename"
        echo "Nazwa skryptu: skrypt.sh" >> "$filename"
        echo "Data: $(date)" >> "$filename"
    done
elif [ "$1" == "--help" ]; then
    echo "Dostępne opcje:"
    echo "  --date    Wyświetla dzisiejszą datę"
    echo "  --logs    Tworzy pliki logx.txt z danymi"
    echo "            Domyślnie tworzy 100 plików, można podać inną liczbę jako drugi argument"
    echo "  --help    Wyświetla dostępne opcje"
else
    echo "Nieznana opcja. Użyj --help, aby zobaczyć dostępne opcje."
fi
