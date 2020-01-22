# openhack-table7
doc used : https://docs.microsoft.com/en-us/azure/aks/azure-ad-integration
fixed adAksServer API Permission
fixed adAksClient API Permission + Auth (Treat application as a public client.Required for the use of the following flows where a redirect URI is not used:​)
applied the new assignments  

```az-cli
az aks update-credentials -g teamResources -n aksopenhack --reset-aad --aad-server-app-id 72a7ed5c-23da-476e-aeae-45d17a7d4751 --aad-server-app-secret 4sD.Rz-BcB1GR9?WMqQO@jdd0:bNlYpM --aad-client-app-id d1f8b80a-1f4a-479b-83fa-e84c7f4fa313 --aad-tenant-id e0a8d5d6-9574-40df-a69d-bd3f3e6029c2
```

```
az aks get-credentials --resource-group teamResources --name aksopenhack --admin
```
applied the binding :
```
 kubectl apply -f rbac.yaml
```
updated credentials : 
```
az aks get-credentials --resource-group teamResources --name aksopenhack
```
and voila !