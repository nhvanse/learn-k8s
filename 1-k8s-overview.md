# K8S overview
- [K8S overview](#k8s-overview)
  - [Definition](#definition)
  - [Architecture](#architecture)
  - [Simple flow to create a new pod](#simple-flow-to-create-a-new-pod)
  - [Others Images](#others-images)
  

## Definition
**K8S** (kubernetes): An open source container orchestration platform, a system that automates the deployment, scaling, and management of containerized applications.

## Architecture
- Main architecture
![architecture](./images/k8s-architecure-1.png)
    - **1 cluster** = **control-plane (master-nodes)** + **worker-nodes**
    - 1 worker:
      - **Pod**: smallist unit in k8s, contains some containers, k8s will scale, delete pods, not each container
      - **Kube-proxy**: control access from external
      - **Kubelet**: manager of each worker, manage its status and connect to the master
    - 1 master: 
      - **Api-server**: provide apis
      - **Scheduler**: periodically check tasks and do tasks
      - **Controller-manager**: periodically check status of workers and adjust them to expected status
      - **etcd**: key-value Database to save info of the cluster

## Simple flow to create a new pod
  ![](./images/k8s-simple-flow-create-pod.png)
  - **kubectl**: client cli tool to control cluster through api-server


## Others Images

<p>Architecture from homepage</p>
<img src="./images/k8s-architecture-2.svg" />
<p>Node and Pod</p>
<img src="./images/k8s-node-pod.png" />
<p>Architecture from somewhere</p>
<img src="./images/k8s-architecture-3.png">
