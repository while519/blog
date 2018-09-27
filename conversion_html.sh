#!/bin/bash
#
# Convert Jupyter notebook files (in _jupyter folder) to markdown files (in _posts folder).
#
# Arguments: 
# $1 filename (excluding extension)
# 

CURRENT_DATE="$(date -u +'%Y-%m-%d')"
TIME=$(date -u +"%T")


# Initial Content
initpost_content() {

echo "---"
echo "layout: post"
echo "title: ''"
echo "date: ${CURRENT_DATE} ${TIME}"
echo "image: ''"
echo "description:"
echo "category: ''"
echo "tags:"
echo "twitter_text:"
echo "introduction:"
echo "---"

}

# Generate a filename with today's date.
filename=${CURRENT_DATE}-$1

# Jupyter will put all the assets associated with the notebook in a folder with this naming convention.
# The folder will be in the same output folder as the generated markdown file.

# Do the conversion.
jupyter nbconvert ./_jupyter/$1.ipynb --to html --output-dir=./_posts --output=$filename

# Check if the conversion has left a blank line at the top of the file. 
# (Sometimes it does and this messes up formatting.)
firstline=$(head -n 1 ./_posts/$filename.html)
if [ "$firstline" = "" ]; then
  # If it has, get rid of it.
  tail -n +2 "./_posts/$filename.html" > "./_posts/$filename.tmp" && mv "./_posts/$filename.tmp" "./_posts/$filename.html"
fi

tail -n +2 "./_posts/$filename.html" > "./_posts/$filename.tmp" && mv "./_posts/$filename.tmp" "./_posts/$filename.html"

cat <(initpost_content) "./_posts/$filename.html" > "./_posts/$filename.tmp" && mv "./_posts/$filename.tmp" "./_posts/$filename.md"

# Remove backup file created by sed command.
rm ./_posts/$filename.html

echo "Done converting."
