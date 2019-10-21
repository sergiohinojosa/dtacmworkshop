# Using ingress for accessing all services in the microk8s environment 
# See ingress folder for the definition of the services.
export K8_IP=$(curl ifconfig.me)
export CARTS_URL=http://carts.dev.$K8_IP.xip.io
sed -i "s/CARTS_URL_PLACEHOLDER/$CARTS_URL/g" carts_load1.jmx
sed -i "s/CARTS_URL_PLACEHOLDER/$CARTS_URL/g" carts_load2.jmx