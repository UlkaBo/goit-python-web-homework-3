FROM python:3.9

RUN pip install pipenv 

ENV PROJECT_DIR /usr/src/app/

WORKDIR ${PROJECT_DIR}

COPY Pipfile Pipfile.lock ${PROJECT_DIR}

RUN pipenv install --system --deploy

RUN mkdir -p /usr/src/app/

COPY . /usr/src/app/

CMD ["python3", "main.py"]

