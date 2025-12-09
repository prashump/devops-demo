
FROM python:3.12-slim

# Set workdir
WORKDIR /app

# Install deps
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy source
COPY app/ ./app

# Expose port
EXPOSE 8000

# Run
CMD ["python", "app/main.py"]

