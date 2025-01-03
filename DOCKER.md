# Running Connectivity Tool CLL as a Docker Container

## Pull the Docker Image

```bash
docker pull haimkastner/connectivity-tool
```

## Run the Docker Container

```bash
docker run --rm haimkastner/connectivity-tool --help
```

## Store data

As default the CLI will store the JSONL store file under `connectivity-tool` in the Docker data root directory.

The exact directory shown at `docker info | grep "Docker Root Dir"`. 

To store the JSONL file in a different directory, mount the directory to the container and use the -f option to specify the file name.

