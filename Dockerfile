COPY ./requirements.txt ./
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

COPY ./app.py ./model.py ./
COPY ./config ./config
COPY ./resources ./resources

CMD ["flask", "run", "--host=0.0.0.0"]