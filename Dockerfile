FROM ubuntu:bionic
VOLUME /srv /opt /scratch /var/lib/apt/lists
RUN mkdir -p /dep
COPY /dep /dep
RUN /bin/bash /dep/installdeps.sh
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
COPY /obj /app
ENTRYPOINT ["/bin/bash", "/app/entrypoint.sh"]
