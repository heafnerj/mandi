#!/bin/bash

# shell script to build zip file for CTAN

# Version 2.0.2 2021-08-24
#   Minor tweaks
#   Removed local installation part; it causes texdoc conflicts.
# Version 2.0.1 2021-05-28
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
sed '38,50d' mandi.dtx > m1.dtx            # rm <readme>   lines 35-47
sed '46,105d' m1.dtx > m2.dtx              # rm <install>  lines 276-331
sed '47,55d' m2.dtx > mandinoreadme.dtx    # rm <internal> lines 277-284
sed '69,71d' mandi.ins > mandinoreadme.ins # rm            lines 63-65
rm m1.dtx                                  # rm temp file
rm m2.dtx                                  # rm temp file

# Touch all the files so they have the date/time.
echo Touching files...
touch mandi.dtx
touch mandistudent.dtx
touch mandiexp.dtx
touch mandi.sty
touch mandistudent.sty
touch mandiexp.sty
touch mandi.ins
touch vdemo.py
touch mandinoreadme.dtx
touch mandinoreadme.ins
touch NnnnnnnnCCPxx.tex
touch mandi.pdf
touch README.md

# Create CTAN distribution file.
echo Creating CTAN distribution file...
mkdir zip                                           # make new subdir
mkdir zip/mandi                                     # make new subdir
mv mandinoreadme.dtx zip/mandi/mandi.dtx            # mv and rename dtx
cp mandistudent.dtx zip/mandi/mandistudent.dtx      # cp mandistudent.dtx
cp mandiexp.dtx zip/mandi/mandiexp.dtx              # cp mandiexp.dtx
mv mandinoreadme.ins zip/mandi/mandi.ins            # mv and rename ins
cp mandi.pdf zip/mandi/mandi.pdf                    # cp documentation
cp README.md zip/mandi/README.md                    # cp README.md
cd zip                                             
zip -q -r mandi.zip * -x "*.DS_Store" "*.sh" "zip/" # exclude files
touch mandi.zip                                     # touch
mv mandi.zip ..                                     # mv to mandi dir
# Now mandi.zip can be uploaded to CTAN.

# Clean up.
echo Cleaning up...
rm mandi/mandi.dtx
rm mandi/mandistudent.dtx
rm mandi/mandiexp.dtx
rm mandi/mandi.ins
rm mandi/mandi.pdf
rm mandi/README.md
rmdir mandi
cd ..
rmdir zip
# Cleaned up.

# Delete README.md since it's in the zip file, and
#   create new README.md for GitHub.
echo Making README for GitHub...
rm README.md
# Rename READMEtxt.md to README.md for GitHub
cp READMEtxt.md README.md
echo README.md is now ready for GitHub.
echo You need to reprocess mandi.dtx to get the old REAME.md back
echo   before running this script again!
# README.md is now ready for GitHub.

# Delete vdemo.py since it's recreated every build.
rm vdemo.py
# vdemo.py deleted

# Create Overleaf zip file.
echo Creating Overleaf zip file...
zip -q overleaf-project.zip "mandi.pdf" "mandi.sty" "mandistudent.sty" "mandiexp.sty" "NnnnnnnnCCPxx.tex" -x "*.DS_Store"
touch overleaf-project.zip
# Now these files can be given to students to use on Overleaf.

# We're done.
echo "Don't forget to push this build to GitHub before making more changes."
echo DONE!
