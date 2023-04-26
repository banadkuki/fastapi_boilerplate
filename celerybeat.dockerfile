FROM python:3.10.5

COPY requirements.txt /celery-app/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /celery-app/requirements.txt

COPY app /celery-app

COPY scripts/beat-start.sh /celery-app/beat-start.sh
RUN chmod +x /celery-app/beat-start.sh

WORKDIR /celery-app
CMD ["bash", "beat-start.sh"]
