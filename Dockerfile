FROM python:3.7-alpine
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers 
ADD app.py /opt/slacko-api/
COPY requeriments.txt requeriments.txt
RUN pip install -r requeriments.txt 
EXPOSE 5000
CMD ["flask", "run"]