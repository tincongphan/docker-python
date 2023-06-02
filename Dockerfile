FROM python:3.9-slim-buster
ENV FLASK_APP=hello_flask.py
WORKDIR /docker-python
COPY . .
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["flask","run","--host","0.0.0.0"]
