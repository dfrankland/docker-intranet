#! /bin/bash

DIR="/etc/nginx"

echo "Creating HTTP basic authentication file in \"$DIR\".";

echo "$HTTP_USERNAME:$(echo -n $HTTP_PASSWORD | openssl passwd -apr1 -stdin)" \
  > "$DIR/.htpasswd";
