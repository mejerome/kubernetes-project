Objective is to deploy odoo on kubernetes cluster using helm charts. Initially, we will deploy with postgresql installed the same cluster. Later, we may deploy with external postgresql server.

# Procedure
1. Install Kubeapps for deploying bitnami charts
2. Install helm
3. Create new service account for kubeapps
4. Retrieve token for service account
5. Start kubeapps
6. Deploy bitnami odoo using kubeapps
8. Configure and test odoo deployment