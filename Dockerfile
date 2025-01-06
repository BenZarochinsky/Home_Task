FROM python:3.13.1

ADD hello_world.py .

RUN pip install flask

CMD ["python", "./hello_world.py"]