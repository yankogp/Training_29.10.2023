FROM python:3.10
WORKDIR /app
COPY ./requirements.txt /app
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5001
ENV FLASK_APP=app.py
CMD ["flask", "run", "--host", "0.0.0.0"]

