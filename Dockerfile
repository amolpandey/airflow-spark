FROM apache/airflow:2.10.5

USER root

RUN apt-get update && \
    apt-get install -y gcc python3-dev default-jdk && \
    apt-get clean

# Set JAVA_HOME environment variable
ENV JAVA_HOME /usr/lib/jvm/default-java

USER airflow

RUN pip install apache-airflow apache-airflow-providers-apache-spark pyspark