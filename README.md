# iiif-image-validator-docker

Runs the [IIIF Image API Validator](https://github.com/IIIF/image-validator) command line tool in a Docker container using the [iiif-validator](https://pypi.org/project/iiif-validator/) from PyPI.

## Installation

* Copy the test image directory `iif-validator-images` to your IIIF image server (you need either the JP2 or the PNG version).
* Build the Docker image by running

```
docker build -t iiif-image-validator .
```

## Running

The Docker container accepts the parameters of the command line validator `iiif-validate.py`. To get a list of the command line parameters run

```
docker run --rm iiif-image-validator -h
```

To validate a IIIF image server running on your machine on port 8080 (`host.docker.internal:8080`) with a URL prefix of `digilib/Scaler/IIIF` and a test image identifier of `iiif-validator!67352ccc-d1b0-11e1-89ae-279075081939`, run

```
docker run --rm iiif-image-validator -s host.docker.internal:8080 -p digilib/Scaler/IIIF -i 'iiif-validator!67352ccc-d1b0-11e1-89ae-279075081939'
```
