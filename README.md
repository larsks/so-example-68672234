This is the example described in https://stackoverflow.com/a/68673285/147356.

## Deploying the example

This example can be deployed using the `kustomize` support built into
`kubectl`; just run:

```
kubectl apply -k .
```

You will need to ensure that a namespace named `oc-client-example`
exists first (or change the `namespace` setting in
`kustomization.yaml`).

## A note about images

The `CronJob` needs a Docker image that provides the `oc` client. You
can use the included `Dockerfile` to build one. While the `CronJob` in
this repository will run as written (using
`docker.io/larsks/openshift-client`), you really should replace the
image it's using with one of your own, because you're running code
with privileges in your OpenShift environment and you don't want to
trust me (or anyone else) with that access.
