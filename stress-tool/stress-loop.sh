export LEN=13

echo "start to create stress namespace $LEN"

for ((i=11; i<=$LEN; i ++)) 
do  
export  NN="a"$i
echo "$NN"
kubectl create namespace $NN
kubectl -n=$NN create -f quota.yaml
kubectl -n=$NN create -f stress.yaml
done 


