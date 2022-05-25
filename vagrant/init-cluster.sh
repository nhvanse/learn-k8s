# Init cluster
kubeadm reset -f
kubeadm init --apiserver-advertise-address=192.168.56.10 --pod-network-cidr=192.168.56.0/21

# Copy config
sudo rm -r $HOME/.kube
sudo mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config


# Install pod network
# IMPORTANT: Make sure that the CIDR in `calico-custom-resources.yaml` is same to `--pod-network-cidr` when init cluster

# Check: https://kubernetes.io/docs/concepts/cluster-administration/addons/
# Check: https://projectcalico.docs.tigera.io/getting-started/kubernetes/quickstart

pwd
ls -a
kubectl create -f ./yaml/calico-tigera-operator.yaml
kubectl create -f ./yaml/calico-custom-resources.yaml



# Print join command for workders to join cluster
echo "Please run this command on worker nodes to join cluster"
kubeadm token create --print-join-command