FROM python:3.10.5

LABEL maintainer="Wallpay Tech Team"

COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

COPY app /app

COPY scripts/pre-start.sh /scripts/pre-start.sh
RUN chmod +x /scripts/pre-start.sh

COPY scripts/start.sh /scripts/start.sh
RUN chmod +x /scripts/start.sh
