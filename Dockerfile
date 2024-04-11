FROM python:3.9-alpine
WORKDIR /app
EXPOSE 5000
COPY requirements.txt .
RUN apk update && pip install --no-cache-dir -r requirements.txt
ENV REDIS_HOST=localhost
COPY . .
CMD ["flask", "run", "--host=0.0.0.0"]

