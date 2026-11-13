FROM python:3.12-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY src/ ./src/
RUN useradd --system --uid 10001 appuser
USER 10001
HEALTHCHECK --interval=30s --timeout=3s CMD python -c "print('ok')"
CMD ["python", "-c", "print('baseline fixture')"]
