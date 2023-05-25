start all yaml files using this command:

kubectl apply -f "filename"

Give it a couple of minutes to start up, Then type:

"kubectl get pods -o wide" to see all pods (it should list the Ip addresses and the pod names, pretty much the status of the pods)

To check if pods are acutaly talking to each other, get into the pod.

To get in,type this command:

kubectl exec -it "pod name"

Once in, install the necessary upadate, commands are as below:

apt-get update -y
apt-get install -y iputils-ping


Once install you should be able to ping other pods using the IP address.

You can view the IP address either using "kubectl get pods -o wide" or using k9s

To install k9s, use brew install k9s
