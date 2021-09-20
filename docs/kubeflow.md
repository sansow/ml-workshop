# Kubeflow


### What is Kubeflow?

[Kubeflow](https://www.kubeflow.org/)  is an open source AI/ML project focused on model training, serving, pipelines, and metadata. As part of the Open Data Hub project we integrate the latest Kubeflow release to install on OpenShift 4.2 and onward. The following Kubeflow components are included in the installation

#### Components

-   Central Dashboard
-   Jupyter Notebooks
-   Katib
-   Pipelines
-   Distributed Training: Pytorch, tf-jobs
-   Serving: Seldon
-   Istio

[Installation](https://opendatahub.io/docs/kubeflow/installation.html)

## Installation

### Pre-requisites

To install Kubeflow on OpenShift 4.2+ the following are the prerequisites:

1.  **Code Ready Container (CRC)**: A CRC-generated OpenShift cluster with the following specifications:
    
    Recommended:
    
    ```
    * 16GB memory
    * 6 cpu
    * 45G disk space
    
    ```
    
    Minimum:
    
    ```
    * 10GB memory
    * 6 cpu
    * 35G disk space (default for CRC)
    
    ```
    
    **NOTE**: At the minimum specs, the CRC OpenShift cluster may be unresponsive for ~20mins while Kubeflow components are being deployed.
    
    –OR–
    
    **OpenShift 4.2 or later**: An available OpenShift 4.2+ cluster or you can try a cluster on  [try.openshift.com](https://try.openshift.com/)
    
2.  **kfctl**: The installation tool  `kfctl`  is needed to install/uninstall Kubeflow only if following the manual method. Download the tool from  [github](https://github.com/kubeflow/kubeflow/releases/), make sure the  `kfctl`  release number matches the Kubeflow release you are trying to install.
    
3.  An OpenShift user account with  [cluster-admin](https://docs.openshift.com/container-platform/4.4/authentication/using-rbac.html#creating-cluster-admin_using-rbac)  privileges
    

### Install Kubeflow using Open Data Hub Operator

The easiest method to install Kubeflow is to use the Open Data Hub operator from the OpenShift OperatorHub as described in the  [Quick Installation](https://opendatahub.io/docs/getting-started/quick-installation)  instructions.

#### Install Kubeflow with Istio Enabled

To install Kubeflow on OpenShift 4.2(or later) please follow the steps below:

1.  Install the Open Data Hub operator by following the steps on  `Installing the Open Data Hub Operator`  in the Open Data Hub  [Quick Installation](https://opendatahub.io/docs/getting-started/quick-installation.html#installing-the-open-data-hub-operator)  guide.
    
2.  After the Open Data Hub operator is installed, follow the steps to  `Create a New Open Data Hub Deployment`  in the Open Data Hub  [Quick Installation](https://opendatahub.io/docs/getting-started/quick-installation.html#create-a-new-open-data-hub-deployment)  guide.
    
    **NOTE**: During these steps, you will need to use the [kfctl_openshift_.yaml](https://github.com/kubeflow/manifests/tree/master/kfdef) KfDef in the kubeflow/manifests repo that we have curated specifically for installing Kubeflow. Additionally, you will need to create the Open Data Hub instance in the namespace `kubeflow`.
    
3.  Verify installation
    
    ```
     oc get pods
    
    ```
    
4.  Launch the Kubeflow portal
    
    ```
     oc get routes -n istio-system istio-ingressgateway -o jsonpath='http://{.spec.host}/'
      http://<istio ingress route>/
    
    ```
    
    Once the pods are all running you can access the Kubeflow dashboard as shown below by going to the  `istio-system`  namespace and clicking on the  `istio-ingressgateway`  route.![Dashboard](https://opendatahub.io/assets/img/pages/docs/kubeflow/kfdashboard.png "Dashboard")
    

### Manual Installation of Kubeflow

To install Kubeflow manually, please follow the following instructions on the  [Kubeflow Openshift documentation](https://www.kubeflow.org/docs/openshift/install-kubeflow/)
