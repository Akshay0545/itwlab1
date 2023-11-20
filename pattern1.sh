read -p "Enter the number : " n

cur=1
for ((i = 1 ;i<= n;i++)); do
    for ((j = 0;j< n-i;j++)); do
        echo -n "  "
    done

    for ((j = 0;j< i;j++)); do
        echo -n "$cur "
    done 

    cur=$((cur+1))
    echo 
    check=1;
    for ((j = 0 ; check ;j++)); do
        num=$cur
        sum=0
        temp=$num
        len=0

        while [ $temp -gt 0 ]; do
            len=$((len+1));
            temp=$(( $temp / 10 ));
        done

        temp=$num;
        while [ $temp -gt 0 ]; do
            digit=$(( $temp % 10 ))
            x=1;
            tt=$len;
            while [ $len -gt 0 ]; do
                x=$(($x*$digit));
                len=$((len-1));
            done

            len=$tt;
            sum=$(( $sum + $x ))
            temp=$(( $temp / 10 ))
        done

        if [ $sum -eq $num ]; then
            check=0;
        else 
            cur=$((cur+1));
        fi

    done 

done