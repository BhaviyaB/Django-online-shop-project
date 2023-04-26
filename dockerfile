# Base image
FROM python:3.9

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Create and set the working directory
WORKDIR /C:/Users/BhaviyaBabu/myshop

# Copy the requirements file to the container
COPY requirements.txt /C:/Users/BhaviyaBabu/myshop/

# Install the required packages
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Copy the application code to the container
COPY . /C:/Users/BhaviyaBabu/myshop

# Set the entrypoint command for the container
ENTRYPOINT ["/C:/Users/BhaviyaBabu/myshop/entrypoint.sh"]
