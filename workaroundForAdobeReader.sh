[ "$1" ] && [ -f "$1" ] || { echo "Usage: $0 input.pdf"; exit; }
ADOBEREADER=`echo $1 | sed 's/.pdf$/-adobeCompat.pdf/g'`
gs -dSAFER -dBATCH -dNOPAUSE  -sDEVICE=pdfwrite -sOutputFile=$ADOBEREADER "$1"
