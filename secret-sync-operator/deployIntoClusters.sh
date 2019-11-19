#!/bin/bash
ibmcloud target -g "Dev Resources"

ibmcloud ks cluster config bl5ob85d0rdfkj3mgn80
export KUBECONFIG=/Users/dbellagio/.bluemix/plugins/container-service/clusters/bl5ob85d0rdfkj3mgn80/kube-config-dal12-inst-musc-dev-qa.yml
kubectl apply -f deploy/all-in-one.yaml

ibmcloud ks cluster config 85db7434d8ff47778d470762c64c9346
export KUBECONFIG=/Users/dbellagio/.bluemix/plugins/container-service/clusters/85db7434d8ff47778d470762c64c9346/kube-config-dal13-inst-ecu-dev-qa.yml
kubectl apply -f deploy/all-in-one.yaml

ibmcloud ks cluster config 62f6e6454c5041479f5e8b88781bbef3
export KUBECONFIG=/Users/dbellagio/.bluemix/plugins/container-service/clusters/62f6e6454c5041479f5e8b88781bbef3/kube-config-dal13-xcomp-dev-qa.yml
kubectl apply -f deploy/all-in-one.yaml

ibmcloud target -g "Prod Resources"
ibmcloud ks cluster config 876fcecefbfd41ecb923970426819140
export KUBECONFIG=/Users/dbellagio/.bluemix/plugins/container-service/clusters/876fcecefbfd41ecb923970426819140/kube-config-dal13-xcomp-prod-tmp.yml
kubectl apply -f deploy/all-in-one.yaml


