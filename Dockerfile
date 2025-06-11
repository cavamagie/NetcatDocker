FROM registry.access.redhat.com/ubi8/ubi

# Install netcat
RUN yum -y install nc && yum clean all

# Espone la porta 80
EXPOSE 80

# Avvia netcat in ascolto sulla porta 80
CMD ["sh", "-c", "while true; do nc -l -p 80 -e /bin/cat; done"]
