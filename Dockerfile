FROM python:3

WORKDIR /usr/src/app

COPY main.py ./
RUN pip install fastapi uvicorn

COPY . .

EXPOSE 8000

CMD ["uvicorn", "--debug", "--host", "0.0.0.0",  "--port", "8000", "main:app"]
