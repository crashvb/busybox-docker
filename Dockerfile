FROM scratch
ARG org_opencontainers_image_created=undefined
ARG org_opencontainers_image_revision=undefined
LABEL \
	org.opencontainers.image.authors="Richard Davis <crashvb@gmail.com>" \
	org.opencontainers.image.base.name="scratch" \
	org.opencontainers.image.created="${org_opencontainers_image_created}" \
	org.opencontainers.image.description="Image containing busybox." \
	org.opencontainers.image.licenses="Apache-2.0" \
	org.opencontainers.image.source="https://github.com/crashvb/busybox-docker" \
	org.opencontainers.image.revision="${org_opencontainers_image_revision}" \
	org.opencontainers.image.title="crashvb/busybox" \
	org.opencontainers.image.url="https://github.com/crashvb/busybox-docker"

# TODO: How to set +x after ADD??? ; how to RUN w/o /bin/sh ???
#ADD https://busybox.net/downloads/binaries/1.21.1/busybox-x86_64 /bin/busybox
ADD bin /bin
RUN busybox --install -s

ENTRYPOINT ["/bin/busybox"]
