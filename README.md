# Airflow & Spark Cluster setup with sample DAG and Spark Submit

This is a sample project illustrating how we can setup and Apache Airflow and spark cluster on docker desktop with DAG's submitting multiple coade base in Python Scala and Java submissions to the Spark. 

## Description

This project is designed to setup the Apache Airflow and spark containers in the docker desktop by following the commands as listed: 

- Setup the cloned project python virtual environment to develop the DAG's and the neccesary packages installed in the environment.

    ```
    python -m venv .af
    pip install apache-airflow apache-airflow-providers-apache-spark pyspark
    python.exe -m pip install --upgrade pip
    ```

- Build the customized image of the Airflow with the neccesary packages and components installed to interacti with the Spark cluster
    ```
    docker compose build
    ```

- Intialize the Airflow Postgres and Redis component
    ```
    docker compose up airflow-init
    ```

- Intialize all the airflow component services and start the services
    ```
    docker compose up
    ```

- Debug: In case any container is not starting up or for any build errors the following command comes in handy to debug as the progressigve version introduces any breaking changes
```
docker run -it --entrypoint /bin/sh --user root  <<docker image ID>>
```

## Outcome


