#!/bin/bash
path_pv='/home/takis/Desktop/Kubernetes/pod-primes/pv.yaml'
path_pvc='/home/takis/Desktop/Kubernetes/pod-primes/pvc.yaml'
path_sts='/home/takis/Desktop/Kubernetes/pod-primes/stateful.yaml'

if [ $1 = "cr" ] 
then
    echo "Create sts primes..."
    kubectl apply -f $path_pv
    kubectl apply -f $path_pvc
    kubectl apply -f $path_sts
    echo "End of creation!"
elif [ $1 = "del" ] 
then
    echo "Delete sts primes..."
    kubectl delete sts primes
    kubectl delete pvc task-pv-claim
    kubectl delete pv task-pv-volume
    echo "End of deletion"
fi
