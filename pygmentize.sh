#!/bin/bash
growlnotify "Pygmentized as $1" -m ""
pbpaste | \
  pygmentize -f rtf -O style=tango,linenos=1 -l $1 | \
  textutil -convert rtf -fontsize 5656 -stdin -stdout | \
  sed 's|fs24|fs48|g' | \
  pbcopy
