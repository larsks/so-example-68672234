FROM quay.io/centos/centos:8

RUN curl -o /tmp/openshift-client.tar.gz \
		https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest/openshift-client-linux.tar.gz; \
    tar -C /bin -xf /tmp/openshift-client.tar.gz oc kubectl; \
    rm -f /tmp/openshift-client.tar.gz

ENTRYPOINT ["/bin/oc"]
