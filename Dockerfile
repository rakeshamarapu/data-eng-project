FROM python:3.11-slim
WORKDIR /app
COPY scripts/fetch_api_data.py .
RUN pip install requests
CMD ["python", "fetch_api_data.py"]
