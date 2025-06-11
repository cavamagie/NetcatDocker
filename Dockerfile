FROM registry.access.redhat.com/ubi8/ubi

RUN yum -y install nc && yum clean all
RUN yum -y install top && yum clean all
RUN yum -y install tcpdump && yum clean all

EXPOSE 8080

CMD ["sh", "-c", "while true; do nc -l -p 8080 -e /bin/cat > file.txt; done"]
