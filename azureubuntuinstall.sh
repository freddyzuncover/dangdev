STORAGE=metricsstorage$RANDOM

az storage account create \
    --name $STORAGE \
    --sku Standard_LRS \
    --location southeastasia \
    --resource-group learn-76d383c6-6982-4490-8b3a-d71c39b09f6e

az vm create \
    --name monitored-linux-vm \
    --image UbuntuLTS \
    --size Standard_D2s_v3 \
    --location southeastasia \
    --admin-username "tincowboy" \
    --admin-password "YeuAnhMai1luon" \
    --boot-diagnostics-storage $STORAGE \
    --resource-group learn-76d383c6-6982-4490-8b3a-d71c39b09f6e \
    --public-ip-sku Standard
