FROM quay.io/keycloak/keycloak:20.0.3
COPY flyio-cache-config.xml /opt/keycloak/conf/flyio-cache-config.xml
ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
