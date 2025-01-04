# 🚀 Running Connectivity Tool CLI as a Docker Container

## 📝 Overview

This guide provides clear instructions for running the **Connectivity Tool CLI** as a Docker container.

👉 For the full CLI documentation, check out the [README.md](https://github.com/haimkastner/connectivity-tool/blob/main/README.md).

---

### Pull the Docker Image

```bash
docker pull haimkastner/connectivity-tool
```

### Run the Docker Container

```bash
docker run haimkastner/connectivity-tool --help
```

## Container interaction with host file-system

As Docker containers are isolated from the host file-system, in order to interact with the host file-system, the container should be run with the `-v` option.

### Generate Test Suite File
```bash
docker run -v ./config:/app/config haimkastner/connectivity-tool --generate-path ./config
```

### Running the CLI with the generated test suite file
```bash
docker run -v ./config:/app/config haimkastner/connectivity-tool -f ./test_suite.yaml
```

### Running the CLI with the test suite file in the container and the store data in the host file-system
```bash
docker run -v ./store_data:/app/store_data -v ./config:/app/config haimkastner/connectivity-tool -f ./config/test_suite.yaml
```
