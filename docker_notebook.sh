#!/bin/sh
docker run -p 8888:8888 -p 9092:9092 -p 9093:9093 -v $1:/waymo_data -v $PWD/certificate_storage/:/mkcert_data -v $PWD:/home/jovyan registry.gitlab.com/vizsana/vizviewer_notebook "start-notebook.sh" --certfile=/mkcert_data/localhost.pem --keyfile=/mkcert_data/localhost-key.pem --port 8888 --NotebookApp.custom_display_url=https://localhost:8888
