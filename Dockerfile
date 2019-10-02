FROM ubuntu:14.04
MAINTAINER Emil Gabrielli s341473@oslomet.no

RUN apt-get update -y
# installs python
RUN apt-get install -y python-pip python-dev build-essential

# adds our app into the container
ADD ./ /app
WORKDIR /app
# uses pip install to install required libraries
RUN pip install -r requirements.txt

ENTRYPOINT ["python"]
CMD ["run.py"]
