# Use an official Python runtime as the parent image
FROM python:3.10.12

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Create and set working directory
WORKDIR /app

# Add `requirements.txt` to the container
COPY requirements.txt /app/

# Install system dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends gcc libpq-dev git \
    && apt-get clean \
    && pip install --upgrade pip \
    && pip install -r requirements.txt

# Add the entire project to the container
COPY . /app/
