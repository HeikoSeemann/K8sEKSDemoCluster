# K8sEKSDemoCluster

The bash scripts and yaml files in this repo can be used to setup a kubernetes cluster on aws eks using the aws cli, eksctl and kubectl.


Prerequisites:
1.  AWS Cli, eksctl and kubectl are installed on your machine. If this isn't the case please refer to the "dependencies.sh" script to install those components.
2.  AWS Cli is configured with your IAM user and you provided a access and secret access key with the user having the necessary permissions to create the necessary resources.

The "deploycluster.sh" script will create a cluster according to the "cluster.yaml" file. This may take some time. After that it will apply all the other yaml configurations in the correct order. This will result in a mongo-db being installed on the cluster along with prometheus for monitoring and grafana for visualization.

The "destroycluster.sh" script will shut down and delete the cluster and in this process also delete all resources were being deployed into the k8s cluster.



Resources:

Kubectl commands:

https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands



Youtube Tutorial Application Deployment with K8s + Git Repo:

https://www.youtube.com/watch?v=EQNO_kM96Mo

https://gitlab.com/nanuchi/youtube-tutorial-series/-/tree/master/demo-kubernetes-components

https://gitlab.com/nanuchi/youtube-tutorial-series/-/tree/master/



Provision EKS Cluster with Terraform
https://developer.hashicorp.com/terraform/tutorials/kubernetes/eks


eksctl doku
https://eksctl.io/


install helm
https://helm.sh/docs/intro/install/