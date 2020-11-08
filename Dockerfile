FROM python:3.9-alpine

RUN mkdir /app
RUN pip install speedtest-cli prometheus-client

COPY run-speedtest.py /app/

EXPOSE 9104
ENTRYPOINT ["/usr/local/bin/python", "-u", "/app/run-speedtest.py"]
