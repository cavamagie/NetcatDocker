FROM registry.access.redhat.com/ubi8/ubi

# Installa netcat
RUN microdnf install -y nc && microdnf clean all

# Crea un utente non-root per compatibilità con OpenShift
RUN useradd -u 1001 netcatuser
USER 1001

# Espone la porta 80
EXPOSE 8080

# Comando per avviare netcat in ascolto sulla porta 80
CMD ["nc", "-lkp", "80"]
