#!/bin/bash

# shell script to build zip file for CTAN and to install mandi locally

# Version 2.0 2021-02-27
#   Rewritten for mandi 3.0.0

# This script should be run from the ~/Library/texmf/mandi folder.
sd="/Users/heafnerj/Library/texmf/mandi"
echo Running from $PWD 
echo Should be ~/Library/texmf/mandi
if [ "$sd" != "$PWD" ]
then
  echo You are in the wrong place.
  echo Move to the correct folder and start over.
  exit 1
fi

# The CTAN scripts don't need to generate a new README.md
# so let's create dtx and ins files with no README.md
# using sed to delete certain lines. The original
# mandi.dtx and mandi.ins are left completely unchanged. 
# Let's also remove all mention of files that will not be 
# generated from the .dtx file.

echo Editing dtx and ins files...
sed '35,45d' mandi.dtx > m1.dtx            # rm <readme> lines 35-45
sed '274,328d' m1.dtx > m2.dtx             # rm <install> lines 274-328
sed '275,282d' m2.dtx > mandinoreadme.dtx  # rm <internal> lines 275-282
sed '63,65d' mandi.ins > mandinoreadme.ins # rm lines 63-65
rm m1.dtx                                  # rm temp file
rm m2.dtx                                  # rm temp file

# Touch all the files so they have the date/time.
echo Touching files...
touch README.md
touch mandi.pdf
touch mandi.dtx
touch mandi.ins
touch mandi.sty
touch mandiexp.sty
touch vdemo.py
touch mandinoreadme.dtx
touch mandinoreadme.ins
touch NnnnnnnnCCPxx.tex

# Create CTAN distribution file.
echo Creating CTAN distribution file...
mkdir zip                                           # make new subdir
mkdir zip/mandi                                     # make new subdir
cp README.md zip/mandi/README.md                    # cp README.md
mv mandinoreadme.dtx zip/mandi/mandi.dtx            # mv and rename dtx
mv mandinoreadme.ins zip/mandi/mandi.ins            # mv and rename ins
cp mandi.pdf zip/mandi/mandi.pdf                    # cp documentation
cd zip                                             
zip -q -r mandi.zip * -x "*.DS_Store" "*.sh" "zip/" # exclude files
touch mandi.zip                                     # touch
mv mandi.zip ..                                     # mv to mandi dir
# Now mandi.zip can be uploaded to CTAN.

# Install in local texmf tree identical to what 
#  CTAN users will see installed.
# Remember that we're still in the zip folder.
# echo Installing in local texmf tree...
# if [ ! -d ../../doc/latex/mandi/ ]
# then
#   echo Making folder...
#   mkdir ../../doc/latex/mandi
# fi
# echo Copying files...
# cp mandi/README.md ../../doc/latex/mandi/README.md
# cp mandi/mandi.pdf ../../doc/latex/mandi/
# 
# if [ ! -d ../../source/latex/mandi/ ]
# then
#   echo Making folder...
#   mkdir ../../source/latex/mandi
# fi
# echo Copying files...
# cp mandi/mandi.dtx ../../source/latex/mandi/
# cp mandi/mandi.ins ../../source/latex/mandi/
# 
# if [ ! -d ../../tex/latex/mandi/ ]
# then
#   echo Making folder...
#   mkdir ../../tex/latex/mandi
# fi
# echo Copying file...
# cp ../mandi.sty ../../tex/latex/mandi/
# User's local texmf tree should now mirror what CTAN users will see.

# Clean up
echo Cleaning up...
rm mandi/README.md
rm mandi/mandi.dtx
rm mandi/mandi.ins
rm mandi/mandi.pdf
rmdir mandi
cd ..
rmdir zip
# Cleaned up

# Delete README.md since it's in the zip file, and
# create new README.md for GitHub
echo Making README for GitHub...
rm README.md
# Rename README.txt to README.md for GitHub
cp README.txt README.md
echo README.md is now ready for GitHub.
echo You need to reprocess mandi.dtx to get the old REAME.md back
echo   before running this script again!
# README.md is now ready for GitHub

# Create Overleaf zip file...
echo Creating Overleaf zip file...
zip -q overleaf-project.zip "mandi.pdf" "mandi.sty" "mandiexp.sty" "NnnnnnnnCCPxx.tex" -x "*.DS_Store"
touch overleaf-project.zip
# Now these files can be given to students to use on Overleaf.

# We're done
echo "Don't forget to push this build to GitHub before making more changes."
echo DONE!
