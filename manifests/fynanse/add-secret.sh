#!/bin/bash

kubectl create secret generic temp --from-literal=$1=$2 --namespace fynanse -o yaml --dry-run=client | kubeseal --cert pub-sealed-secrets.pem --merge-into fynanse-api-secrets.yml -o yaml
