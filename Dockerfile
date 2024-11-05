FROM python
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.xt
COPY. /app/
EXPOSE 5000
CMD ["gunicorn,"--bind","0.0.0.0:5000","app:app"]

