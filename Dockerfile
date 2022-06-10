FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/Chan0226/Pinterest.git

WORKDIR /home/pragmatic/

RUN pip install -r requirements.txt

RUN echo "SECRET_KEY=django-insecure-yg-(ryf%-+l2$6_e(x0=rqq#v2@xb+dce#mil-wr9xlcp(mrwp" > .env

RUN python manage.py migrate

EXPOSE 8000

CMD ["python","manage.py","runserver","0.0.0.0:8000"]