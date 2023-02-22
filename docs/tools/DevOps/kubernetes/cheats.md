# Cheat codes (Kubernetes)


| Description                                       |                       commands                        |
|:-------------------------------------------------:|:-----------------------------------------------------:|
|Get pod information                                |      `kubectl get pod`                                  |
|Check logs for a given `$podname` you can get the<br>name from pod information command |      `kubectl logs $podname`                             |
| Access running container<br>`exec` -> execute<br>`it` -> interactive | `kubectl exec -it $podname`|
| Apply a configuration to the running service,<br>you can use any name for `config.yml` | `kubectl apply -f config.yml`
| Upon failures the pods <br> will shifted to evicted state <br> and to delete these pods | `kubectl get pods --all-namespaces --field-selector 'status.phase==Failed' -o json` <br> `kubectl delete -f -`|