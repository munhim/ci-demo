# 1. Base image
FROM python:3.10-slim

# 2. Set working directory
WORKDIR /app

# 3. Copy source files
COPY app.py requirements.txt ./

# 4. (Optional) install dependencies if any
RUN pip install --no-cache-dir -r requirements.txt

# 5. Default command
CMD ["python", "app.py"]
