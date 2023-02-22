# Cheat codes (Kubernetes)
Full description of the kubernetes cheat codes.
______________________________________________________________________

## Get pod information:
```
kubectl get pod
```
______________________________________________________________________
## Check logs 
For a given podname check the logs. Replace the `$podname` with the name of the pod, which you can get from pod information command.
```
kubectl logs $podname
```
______________________________________________________________________
## Access the running container
```
kubectl exec -it $podname
```
`exec` refers to execute

`it` refers to interactive
______________________________________________________________________
## Apply a configuration to the running service
```
kubectl apply -f config.yml
```
you can use any name for `config.yml`
______________________________________________________________________


## Delete Evicted pods
Upon failures the pods will shifted to evicted state and to delete these pods
```
kubectl get pods --all-namespaces --field-selector `status.phase==Failed` -o json | kubectl delete -f -
```
