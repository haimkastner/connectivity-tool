# Prepare Environment

## Create a virtual environment

It's not mandatory, you can use a global scope for Paython packages, but it's recommended to use a virtual environment to avoid conflicts with other packages.

```bash
python -m venv .venv
```

## Activate the virtual environment

```bash
cd ./.venv/scripts
```
Run the activation script according to your OS.

## Install the CLI dependencies

```bash
pip install -r requirements.txt
```

## Entry point & Debug
The `./connectivity_tool_cli/index.py` is the entry point for the CLI. 

Set `./connectivity_tool_cli` as the working directory and run directly or via IDE to test the CLI.

## Test the CLI

```bash
python -m unittest discover -s tests
```


## Build source as "CLI"

```bash
pip install .
```

## Run as a CLI

```bash
connectivity_tool --help
```

# Modifying dependencies 

The dependencies are listed in the `requirements.txt` file.

Any change in the dependencies should be reflected in the `requirements.txt` file.

After doing the change using PIP tool, run the following command to update the `requirements.txt` file.

```bash
pip freeze > requirements.txt
```

## Build the Docker Image

Build it locally by the command:
```bash
docker build -t connectivity-tool-local:latest .
```

Run the Docker container:
```bash
docker run connectivity-tool-local --help
```
