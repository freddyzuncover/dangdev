#!/bin/bash
az group list -otable
read GROUP

STORAGE=metricsstorage$RANDOM

az storage account create \
    --name $STORAGE \
    --sku Standard_LRS \
    --location southeastasia \
    --resource-group $GROUP

az vm create \
    --name HaiDang \
    --image UbuntuLTS \
    --size Standard_D2s_v3 \
    --location southeastasia \
    --admin-username "tincowboy" \
    --admin-password "YeuAnhMai1luon" \
    --boot-diagnostics-storage $STORAGE \
    --resource-group $GROUP \
    --public-ip-sku Standard

az vm open-port --port 3389 --resource-group $GROUP --name HaiDang
