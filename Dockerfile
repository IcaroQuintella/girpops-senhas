FROM python:3.9-alpine
#FROM python:3.10-bullseye
WORKDIR /app
EXPOSE 5000
COPY requirements.txt .
#RUN apt update && apt-get install -y pip && pip install --no-cache-dir -r requirements.txt && apt install -y redis
RUN apk update && pip install --no-cache-dir -r requirements.txt
#ARG REDIS_SERVER
ENV REDIS_HOST=localhost
COPY . .
CMD ["flask", "run", "--host=0.0.0.0"]
