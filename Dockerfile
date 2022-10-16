# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python:3.9.10

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE=1

# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED=1

# Set Evironment Variables
ENV SOURCE_DB_USER=retail_user
ENV SOURCE_DB_PASS=Changeme
ENV TARGET_DB_USER=retail_user
ENV TARGET_DB_PASS=Changeme 

# Copy source code
COPY app /app
WORKDIR /app

# Install pip requirements
COPY requirements.txt .
RUN python -m pip install -r requirements.txt

# During debugging, this entry point will be overridden. For more information, please refer to https://aka.ms/vscode-docker-python-debug
CMD ["python", "app/app.py", "dev", "all"]
