# Using the handy factor command (GNU coreutils) makes this problem easy

read -a factors <<< $(factor 600851475143);
echo ${factors[${#factors[@]}-1]};
