## Prerequisites

- Docker installation
- Google Chrome

## How to Install

1. Within your working directory, clone the github repository.

`git clone git@github.com:vizsana/vizviewer-notebook-waymo-example.git`

2. Login into the docker registry. Replace PASSWORD with the registry password.

`docker login --username vizviewer-notebook-user --password PASSWORD`

3. Change directories

`cd vizviewer-notebook-waymo-example`

4. Create and install the local CA Root certificates to your machine. These certificates are unique to each machine and are never shared.

`./docker_mkcert.sh`

## Running the notebook example

1. Launch the notebook container via Docker

`./docker_notebook.sh ABSOLUTE_PATH_TO_WAYMO_DATASET`

2. Copy the Notebook localhost url from the console into your Chrome web browser

3. Open the Notebook file: `waymo-nbvizviewer.ipynb`  

4. Run all cells via Kernel -> Restart and Run All -> Accept

5. Open the Vizviewer URL in another tab.

6. To connect Vizviewer to your notebook, open the side panel, click 'Data Sources' -> '+' -> Select Notebook as Connection type -> Type 'localhost:9093' as Host -> Connect

7. To view the Waymo tfrecords in Vizviewer, select 'Data Records' -> click a data record.

8. Enjoy browsing the Waymo Dataset!

