# Use an official Python runtime as a parent image
FROM python:3.11.0

# Set the working directory in the container
WORKDIR /app

# Copy the Python script and requirements file into the container at /app
COPY word-frequency.py /app/
COPY requirements.txt /app/
COPY random_paragraphs.txt /app/

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Run python script when the container launches
CMD ["python", "word-frequency.py"]