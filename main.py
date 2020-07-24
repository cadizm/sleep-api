import time

from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def root():
    return 'Hello world'

@app.get("/sleep/{sec}")
def sleep(sec: int = 0):
    time.sleep(sec)

    return f'Slept {sec} seconds'

# uvicorn --debug main:app
