# Compile lyx document to a pdf file and move to destination folder
# usage: ./compile_lyx.sh <PATH TO LYX FILE> <DESTINATION DIRECTORY>
# e.g. ./compile_lyx.sh ~/Desktop/github_repos/trade_materials_winter_2019/1-lecture.lyx ~/Desktop/test_path

LECTURE_PATH=$1
DESTINATION_PATH=$2

FILENAME_W_EXT="${LECTURE_PATH##*/}" # get filename with extension
FILENAME_NO_EXT="${FILENAME_W_EXT%%.*}"  # File name witout extension
DIRNAME=${LECTURE_PATH%/*}

#Compile lyx file and save pdf
/Applications/LyX.app/Contents/MacOS/lyx -e pdf2 "$LECTURE_PATH"

# Move to destination folder and add date
NAME_W_DATE=${FILENAME_NO_EXT}_`date +%d%b%y`.pdf
mv "$DIRNAME/$FILENAME_NO_EXT.pdf" "$DESTINATION_PATH/$NAME_W_DATE"
