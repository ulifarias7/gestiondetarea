# Usa una imagen base de Python
FROM python:3.9.7

# Configura el directorio de trabajo
WORKDIR /app

# Copia el archivo requirements.txt desde la carpeta src a /app
COPY src/requirements.txt /app/

# Instala las dependencias desde requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copia todo el contenido de src a /app
COPY src/ /src

# Comando por defecto para ejecutar tu aplicación (ajusta según sea necesario)
CMD ["python", "main.py"]