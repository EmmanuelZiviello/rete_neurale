FROM python:3.9.18-bookworm
WORKDIR /app

# Copia solo i file necessari
COPY ./requirements.txt ./
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

COPY ./app.py ./model.py ./
COPY ./config ./config
COPY ./resources ./resources

CMD ["flask", "run", "--host=0.0.0.0"]
