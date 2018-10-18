# debug-toolkit

A prebaked image containing useful tools such as -

- sslyze
- nmap
- httpie
## Run locally
To run locally, simply pull the image and run it via Docker

```
docker run -it --rm debug-toolkit /bin/bash
```

## Run inside k8s
If you want to run inside your current k8s cluster, simply deploy using

```
kubectl create -f https://raw.githubusercontent.com/kiseru-io/debug-toolkit/master/debug-toolkit.yml
```

Verify that the debug-toolkit Pod is running

```
$ kubectl get pods 
NAME                                      READY     STATUS             RESTARTS   AGE
debug-toolkit                             1/1       Running            0          15m
```
To connect just exec to the running instance 

```
kubectl exec -it debug-toolkit /bin/bash
```


