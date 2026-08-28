FROM public.ecr.aws/docker/library/python:3.10-slim

ENV FLASK_RUN_HOST=0.0.0.0

WORKDIR /app


RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc \
    python3-dev \
    build-essential \
    && rm -rf /var/lib/apt/lists/*


RUN pip install --no-cache-dir pipenv


RUN useradd -m -u 1001 app && \
    mkdir -p /var/www/app /app && \
    chown -R app:app /var/www/app /app

COPY Pipfile* /app/

RUN pipenv install --system --skip-lock

COPY . /app

CMD ["uwsgi", "--http", ":5000", "--master", "--enable-threads", "-s", "/var/www/app/app.sock", "--manage-script-name", "--mount", "/=app:app"]