FROM registry.access.redhat.com/ubi8/ubi

RUN yum -y install nc && yum clean all

EXPOSE 8080

CMD ["sh", "-c", "while true; do nc -l -p 8080 -e /bin/cat; done"]
