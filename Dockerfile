FROM python:3.13.1

ADD hello_world.py .

CMD ["python", "./hello_world.py"]