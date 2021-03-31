# Introduction to Open Data Hub

[Open Data Hub (ODH)](http://opendatahub.io/) is an open source project based on [Kubeflow](https://kubeflow.org/) that provides open source AI tools for running large and distributed AI workloads on OpenShift Container Platform. Currently, the Open Data Hub project provides open source tools for data storage, distributed AI and Machine Learning (ML) workflows, Jupyter Notebook development environment and monitoring. The Open Data Hub project [roadmap](http://opendatahub.io/docs/roadmap/future.html) offers a view on new tools and integration the project developers are planning to add.

AI Library is also an open source project initiated by Red Hat AI Center of Excellence team as an effort to provide ML models as a service on OpenShift Container Platform. The development of these models as services is a community driven open source project to make AI/ML models more accessible.

Open Data Hub includes several open source components, which can be individially enabled. They include:

* Apache Airflow
* Apache Kafka
* Apache Spark
* Apache Superset
* Argo
* Grafana
* JupyterHub
* Prometheus
* Seldon

## Considerations

All the tools and components listed below are currently being used as part of Red Hat’s internal ODH platform cluster. This internal cluster is utilized by multiple internal teams of data scientists running AI/ML workloads for functions such as Anomaly Detection and Natural Language Processing. A subset of these components and tools are included in the ODH release available today and the rest are scheduled to be integrated in future releases as described in the roadmap section below. Support for each component is provided by the source entity, for example Red Hat supports Red Hat components such as OpenShift Container Platform and Ceph while open source communities support Seldon, Jupyterhub, Prometheus and so on.

![Open Data hub components](components.png)

## Current Included Components

The ODH platform is installed on OpenShift as a native operator and is available on the OperatorHub.io. The operator framework (https://operatorhub.io/getting-started) is an open source toolkit that provides effective, scalable and automated native application management. Operators manage custom resources that provide specific cluster wide functionalities. The ODH operator manages the ODH platform AI/ML services cluster-wide. Some of the components within the ODH platform are also operators such as Apache Spark™. Currently ,when installing the ODH operator it includes the following components: Ceph, Apache Spark, Jupyterhub, Prometheus and Grafana.

*Apache Spark™* operator is an open source operator implementation of Apache Spark™. It is developed as part of the Radanalytics community (https://radanalytics.io/) to provide distributed Spark cluster workloads on OpenShift. This implementation creates a Spark cluster with master and worker/executor processes. Applications send tasks to executors using the SparkContext and these executors run the tasks on the cluster nodes they are assigned to. Distributed parallel execution as provided by Spark clusters are typical and essential for the success of AI/ML workloads.

*JupyterHub* (https://jupyter.org/hub) is an open source multi-user notebook platform that ODH provides with multiple notebook image streams that incorporate embedded features such as Spark libraries and connectors. JupyterHub provides many features such as multi-user experience for data scientists allowing them to run notebooks in their own workspaces. Authentication can also be customized as a pluggable component to support authentication protocols such as OAuth. Data scientists can use familiar tools such as Jupyter notebooks for developing complex algorithms and models. Frameworks such as numpy, scikit-learn, Tensorflow and more are available for use.

*Prometheus* (https://prometheus.io/) is an open source monitoring and alerting tool that is widely adopted across many enterprises. Prometheus can be configured to monitor targets by scraping or pulling metrics from the target’s HTTP endpoint and storing the metric name and a set of key-value pairs in a time series database. For graphing or querying this data, Prometheus provides a web portal with rudimentary options to list and graph the data. It also provides an endpoint for more powerful visualization tools such as Grafana to query the data and create graphs. An Alert Manager is also available to create alert rules to produce alerts on specific metric conditions.

*Grafana* (https://grafana.com/) is an open source tool for data visualization and monitoring. Data sources such as Prometheus can be added to Grafana for metrics collection. Users create Dashboards that include comprehensive graphs or plots of specific metrics. It includes powerful visualization capabilities for graphs, tables, and heatmaps. Ready-made dashboards for different data types and sources are also available giving Grafana users a head start. It also has support for a wide variety of plugins so that users can incorporate community-powered visualisation tools for things such as scatter plots or pie charts.

*Argo* (https://argoproj.github.io/) is an open source container-native workflow engine for orchestrating parallel jobs on Kubernetes. It is useful for defining workflows using containers, running computer intensive jobs, and running CI/CD pipelines natively on Kubernetes.

*Apache Kafka* (https://kafka.apache.org/ is a distributed streaming platform for publishing and subscribing records as well as storing and processing streams of records. It is deployed on ODH using Strimzi (https://strimzi.io) a community supported operator.

*Seldon* (https://www.seldon.io) is an open source framework that makes it easier to deploy AI/ML models on Kubernetes and OpenShift. The model can be created and trained using many tools such as Apache Spark, scikit-learn and TensorFlow. Seldon also provides metric for Prometheus scraping. Metrics can be custom model metrics or Seldon core system metrics.

*BeakerX* (http://beakerx.com/) is an extension to Jupyter Notebooks that includes tools for plotting, creating tables and forms and many more.

