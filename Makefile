PROJECT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
BUCKET = [OPTIONAL] your-bucket-for-syncing-data (do not include 's3://')
PROFILE = default
PROJECT_NAME = mlopsnamegenerator
PYTHON_INTERPRETER = python3

reqs:
	$(PYTHON_INTERPRETER) -m pip install -r requirements.txt

dev_reqs:
	$(PYTHON_INTERPRETER) -m pip install -r requirements_dev.txt

clean:
	find . -type f -name "*.py[co]" -delete
	find . -type d -name "__pycache__" -delete

lint:
	flake8 exercises/