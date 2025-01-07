FROM python:3.12

WORKDIR /app

COPY requirments.txt /app/

RUN pip install --upgrade pip \
    && pip install -r requirments.txt

COPY . /app

EXPOSE 5000

CMD ["python", "hello_world.py"]