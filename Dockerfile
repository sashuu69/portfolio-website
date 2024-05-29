# start by pulling the python image
FROM docker.io/python:3.9.6-alpine

# add label for documentation
LABEL maintainer="sashwat0001@gmail.com"

# copy the requirements file into the image
COPY ./requirements.txt /app/requirements.txt

# switch working directory
WORKDIR /app

# install the dependencies and packages in the requirements file
RUN pip install -r requirements.txt

# copy every content from the local file to the image
COPY . /app

# Expose port for accessing the webpage
EXPOSE 6969

# configure the container to run in an executed manner
ENTRYPOINT [ "sh" ]

# runner script name
CMD [ "runner.sh" ]
