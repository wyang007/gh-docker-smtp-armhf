docker run -d -p 25:25 \
           -e RELAY_NETWORKS=":192.168.1.0/24" -e DISABLE_IPV6="yes" \
           -e GMAIL_USER="mygmail-account" -e GMAIL_PASSWORD="mygmail-password" \
           -e CERTIFICATE_PATH="/tmp/me.crt" -e KEY_PATH="/tmp/me.key" \
           -v /tmp/me.key:/tmp/me.key -v /tmp/me.crt:/tmp/me.crt \
           --name mysmtp --rm myimage:latest
