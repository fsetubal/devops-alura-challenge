FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV DJANGO_SECRET_KEY '((+^^+tykvl@ov_^6mxh25ygr$)oh57^+d^+ul1i-rzz%72@gl'

RUN mkdir /challenge
WORKDIR /challenge
COPY . .
EXPOSE 8000

RUN pip install -r requirements.txt
RUN python manage.py migrate
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
