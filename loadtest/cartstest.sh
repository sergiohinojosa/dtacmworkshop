# Using ingress for accessing all services in the microk8s environment 
# See ingress folder for the definition of the services.
#  using wget -qO- http://ifconfig.me (quitet mode and pipeout) instead of curl since curl is not in the container.
export K8_IP=$(wget -qO- http://ifconfig.me)
export CARTS_DNS=http:\/\/carts.dev.$K8_IP.xip.io
sed -i "s/CARTS_URL_PLACEHOLDER/$CARTS_DNS/g" carts_load1.jmx
sed -i "s/CARTS_URL_PLACEHOLDER/$CARTS_DNS/g" carts_load2.jmx