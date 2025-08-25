# Usamos la imagen base de Python
FROM python:3.12-slim

# Definimos directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos el archivo de dependencias y lo instalamos
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copiamos todo el proyecto
COPY . .

# Exponemos el puerto que usará Flask
EXPOSE 5000

# Comando para ejecutar la app
CMD ["python", "app.py"]
