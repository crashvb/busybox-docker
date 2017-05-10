FROM scratch

# TODO: How to set +x after ADD??? ; how to RUN w/o /bin/sh ???
#ADD https://busybox.net/downloads/binaries/1.21.1/busybox-x86_64 /bin/busybox
ADD bin /bin
RUN busybox --install -s

ENTRYPOINT ["/bin/busybox"]
