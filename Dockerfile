# Use an official Python runtime as the parent image
FROM python:3.10.12

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Create a non-root user and switch to it
RUN useradd -m appuser
USER appuser

# Set the working directory
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt /tmp/

# Install both system and Python dependencies
RUN pip install --upgrade pip \
    && python -m ensurepip \
    && pip install -r /tmp/requirements.txt

# Copy the entire project to the container
COPY --chown=appuser:appuser . /app/

# Expose port 8000 for the app
EXPOSE 8000

# The default command to run. Adjust this if you're deploying an application.
CMD ["/bin/bash"]
