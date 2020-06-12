#!/bin/sh
docker run -p 8888:8888 -p 9092:9092 -p 9093:9093 -v $1:/home/jovyan/waymo_data -v $PWD/mkcert_data/:/mkcert_data -v $PWD:/home/jovyan vizviewer/vizviewer_notebook "/mkcert_data/start_notebook.sh" --certfile=/mkcert_data/localhost.pem --keyfile /mkcert_data/localhost-key.pem
