FROM python:3.10-slim
 
# Ustaw katalog roboczy
WORKDIR /app
 
# Skopiuj pliki
COPY requirements.txt ./
COPY app.py ./
COPY model.py ./
COPY model/ model/.
 
# Zainstaluj zależności
RUN pip install --no-cache-dir -r requirements.txt
 
# Otwórz port (domyślny Streamlit to 8501)
EXPOSE 8501
 
# Uruchom aplikację Streamlit
CMD ["streamlit", "run", "app.py", "--server.port=8501"]
