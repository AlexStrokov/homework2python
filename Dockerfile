FROM python

RUN mkdir -p /usr/flask/templates/ 
WORKDIR /usr/flask/

COPY app.py /usr/flask/
COPY index.html /usr/flask/templates/

RUN pip install flask

CMD ["python", "app.py"]

EXPOSE 5000



