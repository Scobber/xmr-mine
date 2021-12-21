FROM ubuntu:focal
VOLUME /srv /opt /scratch /var/lib/apt/lists
RUN mkdir -p /dep
COPY /dep /dep
RUN /bin/bash /dep/installdeps.sh
COPY /obj /app
RUN bash /app/build.sh
ENTRYPOINT ["/bin/bash", "/app/entrypoint.sh"]
