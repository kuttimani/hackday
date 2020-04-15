export KOPS_CLUSTER_NAME=mani.k8s.local
export KOPS_STATE_STORE=s3://mani.k8s.local
kops create cluster --cloud=aws --zones=eu-west-2a --name=mani.k8s.local --node-count=1 --master-size=t2.medium --node-size=t2.large --master-count=1
