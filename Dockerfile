FROM python:3

# Set working directory
WORKDIR /app

# Copy the requirements file first, install dependencies, then copy the rest of the application
COPY requirement.txt ./
RUN pip install -r requirement.txt

# Copy the rest of the application
COPY . .

# Run migrations
RUN python manage.py migrate

# Collect static files (if your app uses static files)
RUN python manage.py collectstatic --noinput

# Expose the port
EXPOSE 8000

# Start the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
