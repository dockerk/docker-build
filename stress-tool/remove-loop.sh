export LEN=13

echo "start to create stress namespace $LEN"

for ((i=11; i<=$LEN; i ++)) 
do  
export  NN="a"$i
echo "$NN"
kubectl delete namespace $NN
done 


