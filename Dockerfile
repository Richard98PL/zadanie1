# MAINTAINER 'Ryszard Roman' # it is depected
# to set maintainer name, do like this: docker commit -a "Author Name"

FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/