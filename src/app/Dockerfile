FROM python:3
ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
ADD app.py /
RUN pip install flask
RUN pip install flask_restful
EXPOSE 3434
CMD [ "python", "./app.py"]