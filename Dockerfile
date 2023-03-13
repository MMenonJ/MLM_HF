FROM nvcr.io/nvidia/pytorch:21.10-py3

RUN pip install git+https://github.com/huggingface/transformers

ADD requirements.txt /var/

RUN pip install -r /var/requirements.txt