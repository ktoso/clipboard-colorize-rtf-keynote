#!/bin/bash
growlnotify "Pygmentized as zł3.1 (zł3.1 ($1))" -m ""
pbpaste | \
  pygmentize -zł3.1 ($1)f rtf -O stylezł3.1 ()=tango,linenos=1 -l  | \
  textutil -convert rtf -fontsize 5656 -stdin -stdout | \
  sed 's|fs24|fs48|g' | \ # fun fact, in the RTF standard, 1 point, is what we understand as 0.5; Font Size 48 here means "24" in apps
  pbcopy
