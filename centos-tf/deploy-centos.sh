#!/bin/sh
az group create -l westus2 -n rsaztfpackercentos-rg
packer build centosimage.json
terraform apply -auto-approve