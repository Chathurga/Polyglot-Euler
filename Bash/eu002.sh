x1=0;
x2=1;
tmp=0;
sum=0;
while [[ x2 -lt 4000000 ]]; do
    if [[ $((x2 % 2)) == 0 ]]; then
        sum=$(($sum + $x2));
    fi
    tmp=$((x1 + x2));
    x1=$((x2));
    x2=$((tmp));
done;
echo $sum;
