#!/bin/bash
#
#
#

################################################
#
# Functions
#
################################################

cd /home/raptorred/Downloads

DIR=$(pwd)


Music()
{
if [ -e "$DIR/Music" ];then
       echo -n ""
else
       mkdir Music
fi

mv *.mp3 "$DIR/Music" 2>/dev/null
mv *.wav "$DIR/Music" 2>/dev/null
mv *.midi "$DIR/Music" 2>/dev/null
}

Movies()
{
if [ -e "$DIR/Movies" ];then
       echo -n ""
else
       mkdir Movies
fi

mv *.avi "$DIR/Movies" 2>/dev/null
mv *.mpeg "$DIR/Movies" 2>/dev/null
mv *.mpg "$DIR/Movies" 2>/dev/null
}


Pictures()
{
if [ -e "$DIR/Pictures" ];then
       echo -n ""
else
       mkdir Pictures
fi

mv *.jpeg "$DIR/Pictures" 2>/dev/null
mv *.jpg "$DIR/Pictures" 2>/dev/null
mv *.gif "$DIR/Pictures" 2>/dev/null
mv *.png "$DIR/Pictures" 2>/dev/null
mv *.svg "$DIR/Pictures" 2>/dev/null
}

Compressed()
{
if [ -e "$DIR/Compressed" ];then
       echo -n ""
else
       mkdir Compressed
fi

mv *.zip "$DIR/Compressed" 2>/dev/null
mv *.rar "$DIR/Compressed" 2>/dev/null
mv *.7z "$DIR/Compressed" 2>/dev/null
mv *.tar "$DIR/Compressed" 2>/dev/null
mv *.tar.bz2 "$DIR/Compressed" 2>/dev/null
mv *.tar.gz "$DIR/Compressed" 2>/dev/null
}

Books()
{
if [ -e "$DIR/Books" ];then
       echo -n ""
else
       mkdir Books
fi

rsync -a --remove-sent-files *.epub "$DIR/Books" 2>/dev/null
rsync -a --remove-sent-files *.mobi "$DIR/Books" 2>/dev/null
}

Wine()
{
if [ -e "$DIR/Wine" ];then
       echo -n ""
else
       mkdir Wine
fi

mv *.exe "$DIR/Wine" 2>/dev/null
mv *.msi "$DIR/Wine" 2>/dev/null
mv *.EXE "$DIR/Wine" 2>/dev/null
mv *.MSI "$DIR/Wine" 2>/dev/null
}

Android()
{
if [ -e "$DIR/Android" ];then
       echo -n ""
else
       mkdir Android
fi

mv *.apk "$DIR/Android" 2>/dev/null
}

PDF()
{
if [ -e "$DIR/PDF" ];then
       echo -n ""
else
       mkdir PDF
fi

mv *.pdf "$DIR/PDF" 2>/dev/null
mv *.PDF "$DIR/PDF" 2>/dev/null
}


################################################
#
# Main Program
#
################################################

Music
Movies
Pictures
Compressed
Books
Wine
Android
PDF