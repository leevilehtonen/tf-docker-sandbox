FROM tensorflow/tensorflow:nightly-py3

WORKDIR /app

COPY src /app/src
COPY requirements.txt /app

RUN pip install --trusted-host pypi.python.org -r requirements.txt

CMD ["python", "src/app.py"]