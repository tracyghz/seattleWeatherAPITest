FROM python:3.9-slim
LABEL authors="huizhonggao"

# Set the working dir in the container
WORKDIR /seattleWeatherAPITest

# Copy the current working dir into the container under /app
COPY . /seattleWeatherAPITest/

# Install packages specified in requirements.txt
RUN pip3 install -r requirements.txt

# Run your Python script when the container starts
CMD ["python", "main.py"]