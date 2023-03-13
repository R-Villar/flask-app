# raplace commands that are commented out
FROM python:3.10
# remove EXPOSE 5000 when deploying app
EXPOSE 5000
WORKDIR /app
COPY requirements.txt .
# RUN pip install --no-cache-dir --upgrade -r requirements.txt
RUN pip install -r requirements.txt
COPY . .
CMD ["flask", "run", "--host", "0.0.0.0"]
# CMD ["gunicorn", "--bind", "0.0.0.0:80", "app:create_app()"]