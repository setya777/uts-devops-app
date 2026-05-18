# 1. Menggunakan base image Node.js versi 18 berbasis Alpine Linux (ringan)
FROM node:18-alpine

# 2. Menentukan direktori kerja di dalam container
WORKDIR /app

# 3. Menyalin file package.json (jika ada) ke dalam container
COPY package*.json ./

# 4. Perintah simulasi instalasi dependensi
RUN echo "Menginstal dependensi di dalam container..."

# 5. Menyalin seluruh kode proyek lokal ke direktori kerja container
COPY . .

# 6. Membuka port 3000 untuk akses aplikasi web
EXPOSE 3000

# 7. Ganti baris CMD lama dengan baris di bawah ini:
CMD ["sh", "-c", "echo 'Aplikasi web berjalan di port 3000...' && tail -f /dev/null"]