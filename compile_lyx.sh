#Description: This script compiles the .lyx file of your second year paper, moves the pdf output to the folder whose link is publicly shared, and renames that pdf file
#To execute, go to terminal, change directory to the location of this script, then execute the command: bash lyx_paper.sh

# Test the lyx file first by compiling it in the Lyx Editor to make sure there are no errors.
# The compiled pdf file will be located in the same folder as the .lyx file


cd ~

LECTURE_NAME="1-lecture"

LECTURES_PATH="/Users/palermospenano/Desktop/Dropbox/Work/teaching/ECO364-Trade-Summer2016/ECO364-Trade-OrrPenano/lectures/palermo-lectures/"

#Compile lyx file and save pdf
/Applications/LyX.app/Contents/MacOS/lyx -e pdf2 "$LECTURES_PATH/$LECTURE_NAME.lyx"

# Move to folders for student access (need to change temp !!!!!! in destination path)
mv "$LECTURES_PATH/$LECTURE_NAME.pdf" "$LECTURES_PATH/temp/$LECTURE_NAME.pdf"

# #Add date to file name (source: http://stackoverflow.com/questions/1795678/append-date-to-filename-in-linux)
# PAPER=PalermoPenano_2ndYrPaper.pdf
# PAPER=${PAPER%.*}_`date +%d%b%y`.${PAPER#*.}


# #Move the pdf to the drafts_misalloc folder (the link for which is sent to your supervisors)
# #You can change the title of the paper in the second path below (PalermoPenano_2ndYrPaper.pdf to QWERQWEQWR.pdf if you wish)
# mv "/Users/palermospenano/Desktop/Dropbox/Research/Ethnic Inequality Trade and Development/WriteUp_EthnicInequality/misallocation_writeup_eth/2ndYearPaper_MisallocationTalentIndia.pdf" "/Users/palermospenano/Desktop/Dropbox/research/Ethnic Inequality Trade and Development/WriteUp_EthnicInequality/misallocation_writeup_eth/drafts_misalloc/$PAPER"

