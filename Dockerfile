FROM python:3-alpine

WORKDIR /usr/src/eha

COPY requirements.txt ./
RUN apk add --no-cache gcc musl-dev && \
    pip install --no-cache-dir -r requirements.txt

COPY eha/ .

EXPOSE 8080

ENTRYPOINT ["python", "/usr/src/eha/server.py", "-b", "0.0.0.0"]
