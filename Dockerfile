FROM python:3.8

RUN mkdir /code

WORKDIR /code

COPY requirements.txt /code/

RUN pip install -r requirements.txt

COPY . /code/

RUN python manage.py migrate

EXPOSE 8000

CMD python manage.py runserver 0.0.0.0:8000