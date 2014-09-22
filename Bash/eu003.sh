# Using the handy factor command (GNU coreutils) makes this problem easy
# factor returns a space seperated string, largest prime at the end
# Use awk to print out the last column which is the number we need

factor 600851475143 | awk '{print $(NF)}';
