FROM python:3

RUN pip install iiif-validator

ENTRYPOINT ["/usr/local/bin/iiif-validate.py"]
