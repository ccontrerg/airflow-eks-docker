FROM apache/airflow:2.10.3-python3.11

# LABEL version="1.0.0"

# RUN pip install --user pytest

COPY ./requirements.txt /code/requirements.txt
 
RUN pip install --progress-bar off --no-cache-dir --upgrade -r /code/requirements.txt

# COPY dags/ ${AIRFLOW_HOME}/dags
# COPY unittests.cfg ${AIRFLOW_HOME}/unittests.cfg
# COPY airflow.cfg ${AIRFLOW_HOME}/airflow.cfg
# COPY unittests/ ${AIRFLOW_HOME}/unittests
# COPY integrationtests ${AIRFLOW_HOME}/integrationtests