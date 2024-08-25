# Use an officail Python base image as the base image
FROM python:3.9-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the requirments.txt file the working directory
COPY requirements.txt ./

# Install the required python packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code to the working directory
COPY . .

# Set the environment variables for the Flast app
ENV FLASK_RUN_HOST=0.0.0.0

# Expose the port on which the application will run. This is got while the application running on premise (window)
EXPOSE 5000

# Start the Flask app when the container is run
CMD ["python", "app.py"]

#  Build Create Dockerfile
# Build Docker image from the Dockerfile
# Run the Docker container