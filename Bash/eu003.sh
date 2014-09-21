# Using the handy factor command (GNU coreutils) makes this problem easy
# factor returns a space seperated string, largest prime at the end
# Use sed to match the last number on the line and extract it

factor 600851475143 | sed -r "s/.* ([0-9]+)$/\1/";
