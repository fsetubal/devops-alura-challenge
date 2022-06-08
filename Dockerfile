FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV DJANGO_SECRET_KEY '((+^^+tykvl@ov_^6mxh25ygr$)oh57^+d^+ul1i-rzz%72@gl'

RUN mkdir /challenge
WORKDIR /challenge
COPY . .
RUN pip install -r requirements.txt
EXPOSE 8000