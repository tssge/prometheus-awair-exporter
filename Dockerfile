FROM golang:alpine

# copy the source code
COPY app /app
WORKDIR /app

# build the exporter
RUN go build -o awair-exporter

# expose the port used by the exporter
EXPOSE 9673

ENTRYPOINT ["/bin/sh", "/app/entrypoint.sh"]
