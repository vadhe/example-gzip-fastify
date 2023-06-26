# Base image yang akan digunakan
FROM node:14-alpine

# Direktori kerja di dalam kontainer
WORKDIR /app

# Menyalin file package.json dan package-lock.json
COPY package*.json ./

# Menginstal dependensi aplikasi
RUN npm install

# Menyalin seluruh file proyek ke dalam kontainer
COPY . .

# Port yang akan digunakan oleh aplikasi
EXPOSE 3000

# Menjalankan aplikasi saat kontainer dijalankan
CMD ["node", "app.js"]
