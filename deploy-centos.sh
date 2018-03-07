#!/bin/sh
az group create -l westus2 -n rsaztfpacker-rg
packer build centosimage.json
terraform apply -auto-approve