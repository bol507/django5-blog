FROM python:3.13-alpine

WORKDIR /code

COPY . .

RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["python", "manage.py", "runserver"]
