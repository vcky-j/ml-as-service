FROM ubuntu
ENV INSTALL_PATH samplemlproject 
RUN mkdir -p $INSTALL_PATH
WORKDIR /$INSTALL_PATH
LABEL classifier_version="1.0" 
LABEL owner="VCKY-J"

#Install libraries and packages
RUN apt-get update && apt-get install -y python3-pip python3-dev python3-numpy python3-scipy
RUN pip3 install scikit-learn flask flask-restful



COPY ./models  models/
COPY ./iris_classifier.py iris_classifier.py
#Expose the port for the API
EXPOSE 5000
#Set Environment variables
ENV environment development 
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8
ENV FLASK_APP iris_classifier.py

CMD ["python3", "-m", "flask", "run", "--host", "0.0.0.0"]



