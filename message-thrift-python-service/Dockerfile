FROM python_thrift:latest

ENV PYTHONPATH /

COPY message /message

ENTRYPOINT [ "python", "/message/message_service.py"]