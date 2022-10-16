import pendulum
import os

from airflow import DAG
from airflow.providers.docker.operators.docker import DockerOperator

os.environ["no_proxy"]="*"

args = {
    'owner': 'Obatola',
}

with DAG(
    dag_id='data-copier',
    schedule='* 0 * * *',
    catchup=False,
    default_args=args,
    start_date=pendulum.today('UTC').add(days=-2),
) as dag:
    departments = DockerOperator(
    task_id='departments',
    image='data-copier-live_dc-app',
    command='python app.py dev departments',
    network_mode='dc_af_nw',
    auto_remove='force',
    dag=dag,
    )
    categories = DockerOperator(
    task_id='categories',
    image='data-copier-live_dc-app',
    command='python app.py dev categories',
    network_mode='dc_af_nw',
    auto_remove='force',
    dag=dag,
    )
    customers = DockerOperator(
    task_id='customers',
    image='data-copier-live_dc-app',
    command='python app.py dev customers',
    network_mode='dc_af_nw',
    auto_remove='force',
    dag=dag,
    )
    products = DockerOperator(
    task_id='products',
    image='data-copier-live_dc-app',
    command='python app.py dev products',
    network_mode='dc_af_nw',
    auto_remove='force',
    dag=dag,
    )
    orders = DockerOperator(
    task_id='orders',
    image='data-copier-live_dc-app',
    command='python app.py dev orders',
    network_mode='dc_af_nw',
    auto_remove='force',
    dag=dag,
    )
    order_items = DockerOperator(
    task_id='order_items',
    image='data-copier-live_dc-app',
    command='python app.py dev order_items',
    network_mode='dc_af_nw',
    auto_remove='force',
    dag=dag,
    )
    
    departments >> categories >> customers >> products >> orders >> order_items

if __name__ == "__main__":
    dag.cli()


