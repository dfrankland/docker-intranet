#! /bin/bash

USERNAME=${HTTP_USERNAME:-"username"}
PASSWORD=${HTTP_PASSWORD:-"password"}

DIR="/etc/nginx"

echo "Creating HTTP basic authentication file in \"$DIR\".";

echo "$USERNAME:$(echo -n $PASSWORD | openssl passwd -apr1 -stdin)" \
  > "$DIR/.htpasswd";
