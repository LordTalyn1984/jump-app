# Use a lightweight Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app code
COPY . .

# Expose the port
EXPOSE 8080

# Use gunicorn for a production-ready server
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "app:app"]