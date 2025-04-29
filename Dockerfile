# Use an official Python runtime as a parent image
FROM python:3.13-slim

# Set the working directory to /app
WORKDIR /assessment
COPY assessment.ipynb /assessment/
COPY requirements.txt /assessment/

# Install any needed packages specified in requirements.txt

# Upgrade pip and install dependencies in one step
RUN pip install --upgrade pip && \
    pip install jupyter && \
    pip install --no-cache-dir -r requirements.txt


# Make port 8888 available to the world outside this container
EXPOSE 8888

# Define environment variable
ENV NAME=assessment

# Run Jupyter Notebook when the container launches
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]