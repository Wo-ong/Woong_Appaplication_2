FROM python:3.9.0

WORKDIR /home/

RUN echo 'efiunevkd'

RUN git clone https://github.com/Wo-ong/Woong_Appaplication_2.git

WORKDIR /home/Woong_Appaplication_2/

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN pip install mysqlclient

EXPOSE 8000

CMD ["bash", "-c", "python manage.py collectstatic --noinput --settings=WebApplication_project_2.settings.deploy && python manage.py migrate --settings=WebApplication_project_2.settings.deploy && gunicorn --env DJANGO_SETTINGS_MODULE=WebApplication_project_2.settings.deploy WebApplication_project_2.wsgi --bind 0.0.0.0:8000"]
