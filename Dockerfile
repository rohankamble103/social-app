FROM python
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt 
RUN python manage.py createsuperuser
RUN python manage.py makemigrations
RUN python manage.py migrate
RUN python manage.py makemigrations
EXPOSE 8000
