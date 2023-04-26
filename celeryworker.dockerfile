FROM python:3.10.5

COPY requirements.txt /celery-app/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /celery-app/requirements.txt

COPY app /celery-app

COPY scripts/worker-start.sh /celery-app/worker-start.sh
RUN chmod +x /celery-app/worker-start.sh

WORKDIR /celery-app
CMD ["bash", "worker-start.sh"]
