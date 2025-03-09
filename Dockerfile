FROM 5hojib/aeon:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

# Create virtual environment with the new name
RUN python3 -m venv tghbot-env

# Activate the virtual environment
RUN . tghbot-env/bin/activate

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
CMD ["bash", "start.sh"]
