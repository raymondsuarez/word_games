FROM balenalib/raspberry-pi-alpine:latest

WORKDIR /word_games

#MKDIR templates
#MKDIR static
#MKDIR static/css
#MKDIR static/js
#MKDIR static/js/vendor

COPY requirements.txt . 
COPY templates templates
COPY static static
COPY static/css static/css
COPY static/js static/js
COPY static/js/vendor static/js/vendor

RUN pip install -r requirements.txt

EXPOSE 8003


ENTRYPOINT ["sh","./deploy.sh"]
#CMD ["gunicorn","app:app","-w 2","-b 0.0.0.0:8003"]
