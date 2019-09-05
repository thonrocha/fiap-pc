FROM python:3-slim
RUN mkdir /app
COPY requirements.txt /app/requirements.txt
RUN pip install --trusted-host pypi.org --trusted-host files.pythoonhosted.org -r /app/requirements.txt
COPY . /app
WORKDIR /app
ENTRYPOINT ["python"]
CMD ["teste.py"]