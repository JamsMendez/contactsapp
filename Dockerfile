FROM python:3.10.9

EXPOSE 3000

ADD . /app

COPY requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 --no-cache-dir install -r requirements.txt && \
    chgrp -R 0 /app && \
    chmod -R g=u /app

#USER 1001

CMD ["python3", "app.py"]