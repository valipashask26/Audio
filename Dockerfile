FROM python:3

WORKDIR /usr/src/app

COPY /model .
COPY app.py .
COPY Y.txt.npy .
COPY test.py .
COPY test.csv .
COPY requirements.txt .
COPY my.csv .

RUN pip install joblib
RUN Pip install tkinter
RUN pip install --no-cache-dir --upgrade pip \
  && pip install --no-cache-dir -r requirements.txt

CMD ["python", "./app.py"]
