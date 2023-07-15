# Use the official Python base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file
COPY pyproject.toml .

# Install poetry
RUN pip install poetry

# Install the poetry python dependencies without virtualenvs
RUN poetry config virtualenvs.create false && poetry install

# Copy the Python source code to the container
COPY api.py .

# Expose the port on which the FastAPI app will run (adjust if necessary)
EXPOSE 5000

# Run the FastAPI app using uvicorn
CMD ["uvicorn", "api:app", "--host", "0.0.0.0", "--port", "5000"]
