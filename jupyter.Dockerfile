FROM tensorflow/tensorflow:nightly-py3

COPY notebooks /notebooks
COPY requirements.txt .

RUN pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 6006
EXPOSE 8888

WORKDIR /notebooks

CMD ["/run_jupyter.sh", "--allow-root"]