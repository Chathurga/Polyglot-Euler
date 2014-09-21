# Bash is hilarious, reverse if (fi) closes if statement but done closes for?
# Very useful to know bash and its ecosystem (standard *nix commands) even
#   though I'm not a fan of the language

sum=0;
for i in {1..999}; do
    if [[ $((i % 3)) == 0 || $((i % 5)) == 0 ]]; then
        sum=$(($sum + $i));
    fi
done;
echo $sum
