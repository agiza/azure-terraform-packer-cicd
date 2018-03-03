#!/bin/sh
az group create -l westus2 -n rsaztfpacker-rg
packer build ubuntuimage.json
terraform apply -auto-approve
