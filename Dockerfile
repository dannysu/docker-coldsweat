FROM tatsushid/tinycore-python:2.7

RUN easy_install pip

ADD coldsweat /coldsweat
ADD customization/config /coldsweat/etc/config

WORKDIR /coldsweat

RUN pip install -r requirements.txt

CMD ["python", "sweat.py", "serve", "-r"]
