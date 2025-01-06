# Home_Task

1. # Download hello_world.py to your local machine

2. # Install flask(used https://flask.palletsprojects.com/en/stable/quickstart/ to do it)

pip install flask

3. # In order to run the application, you'll need to set the FLASK_APP environment Variable, I used linux

export FLASK_APP=hello_world.py

4. # Run flask using this command

python -m flask run

5. # you will get this output(or similar), navigate to the url(with the port) via browser
# python -m flask run
#  Serving Flask app 'C:/Ben/Test/hello_world.py'
#  Debug mode: off
# WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
#  Running on http://127.0.0.1:5000

# For Dockerfile creation I used https://docs.docker.com/get-started/docker-concepts/building-images/writing-a-dockerfile/