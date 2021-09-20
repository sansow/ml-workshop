# Kubeflow Pipeline

### Deploy Kubeflow and open the Kubeflow Pipelines UI[](https://www.kubeflow.org/docs/components/pipelines/pipelines-quickstart/#deploy-kubeflow-and-open-the-kubeflow-pipelines-ui)

There are several options to  [deploy Kubeflow Pipelines](https://www.kubeflow.org/docs/components/pipelines/installation/overview/), follow the option that best suits your needs. If you are uncertain and just want to try out kubeflow pipelines it is recommended to start with the  [standalone deployment](https://www.kubeflow.org/docs/components/pipelines/installation/standalone-deployment/).

Once you have deployed Kubeflow Pipelines, make sure you can access the UI. The steps to access the UI vary based on the method you used to deploy Kubeflow Pipelines.



### Run a basic pipeline[](https://www.kubeflow.org/docs/components/pipelines/pipelines-quickstart/#run-a-basic-pipeline)

Kubeflow Pipelines offers a few samples that you can use to try out Kubeflow Pipelines quickly. The steps below show you how to run a basic sample that includes some Python operations, but doesn’t include a machine learning (ML) workload:

1.  Click the name of the sample,  **[Tutorial] Data passing in python components**, on the pipelines UI:  ![Pipelines UI](https://www.kubeflow.org/docs/images/click-pipeline-sample.png)
    
2.  Click  **Create experiment**:  ![Creating an experiment on the pipelines UI](https://www.kubeflow.org/docs/images/pipelines-start-experiment.png)
    
3.  Follow the prompts to create an  **experiment**  and then create a  **run**. The sample supplies default values for all the parameters you need. The following screenshot assumes you’ve already created an experiment named  _My experiment_  and are now creating a run named  _My first run_:  ![Creating a run on the pipelines UI](https://www.kubeflow.org/docs/images/pipelines-start-run.png)
    
4.  Click  **Start**  to run the pipeline.
    
5.  Click the name of the run on the experiments dashboard:  ![Experiments dashboard on the pipelines UI](https://www.kubeflow.org/docs/images/pipelines-experiments-dashboard.png)
    
6.  Explore the graph and other aspects of your run by clicking on the components of the graph and the other UI elements:  ![Run results on the pipelines UI](https://www.kubeflow.org/docs/images/pipelines-basic-run.png)
    

You can find the  [source code for the  **Data passing in python components**  tutorial](https://github.com/kubeflow/pipelines/tree/master/samples/tutorials/Data%20passing%20in%20python%20components)  in the Kubeflow Pipelines repo.

## Run an ML pipeline[](https://www.kubeflow.org/docs/components/pipelines/pipelines-quickstart/#run-an-ml-pipeline)

This section shows you how to run the XGBoost sample available from the pipelines UI. Unlike the basic sample described above, the XGBoost sample does include ML components.

Follow these steps to run the sample:

1.  Click the name of the sample,  **[Demo] XGBoost - Iterative model training**, on the pipelines UI:  ![XGBoost sample on the pipelines UI](https://www.kubeflow.org/docs/images/click-xgboost-sample.png)
    
2.  Click  **Create experiment**.
    
3.  Follow the prompts to create an  **experiment**  and then create a  **run**.
    
    The following screenshot shows the run details:  ![Starting the XGBoost run on the pipelines UI](https://www.kubeflow.org/docs/images/pipelines-start-xgboost-run.png)
    
4.  Click  **Start**  to create the run.
    
5.  Click the name of the run on the experiments dashboard.
    
6.  Explore the graph and other aspects of your run by clicking on the components of the graph and the other UI elements. The following screenshot shows part of the graph when the pipeline has finished running:  ![XGBoost results on the pipelines UI](https://www.kubeflow.org/docs/images/pipelines-xgboost-graph.png)
