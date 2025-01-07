FROM python:3.12-slim-bookworm

RUN pip install poetry

ENV POETRY_NO_INTERACTION=1 \
    POETRY_VIRTUALENVS_IN_PROJECT=0 \
    POETRY_VIRTUALENVS_CREATE=1 
    
WORKDIR /app

COPY poetry.lock pyproject.toml ./
RUN poetry install --no-root --no-cache 

COPY . .

CMD [ "poetry", "run", "python", "manage.py", "runserver", "0.0.0.0:8000" ]