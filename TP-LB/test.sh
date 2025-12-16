count1=0
count2=0



for ((i=1;i<=500;i++)); do
    response=$(curl -s localhost:83)

    if [ "$response" = "<h1>Hello 1</h1>" ]; then
        count1=$((count1 + 1))
    elif [ "$response" = "<h1>Hello 2</h1>" ]; then
        count2=$((count2 + 1))
    fi
done


echo "Hello 1 (serveur port 81) : $count1"
echo "Hello 2 (serveur port 82) : $count2"

