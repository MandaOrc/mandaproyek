#!/bin/bash

# Script untuk membuat struktur proyek website profesional dengan Tailwind CSS

echo "🚀 Memulai setup proyek MandaCloud Store..."

# Membuat struktur direktori utama
echo "-> Membuat folder src, public, dan assets..."
mkdir -p src/css src/js src/assets/images
mkdir public

# Membuat file dasar
echo "-> Membuat file-file dasar..."
touch src/index.html src/css/input.css README.md .gitignore tailwind.config.js package.json

# Mengisi konten ke .gitignore
echo "-> Mengkonfigurasi .gitignore..."
cat <<EOL > .gitignore
# Abaikan folder node_modules
/node_modules

# Abaikan folder output
/public

# Abaikan file environment
.env
EOL

# Mengisi konten ke README.md
echo "-> Membuat README.md..."
cat <<EOL > README.md
# MandaCloud Store

Website untuk menjual layanan cloud, dibuat dengan sepenuh hati ❤️.
Dibuat dengan:
- HTML
- Tailwind CSS
- JavaScript
EOL

# Mengisi konten ke src/css/input.css (perintah dasar tailwind)
echo "-> Mengkonfigurasi input.css untuk Tailwind..."
cat <<EOL > src/css/input.css
@tailwind base;
@tailwind components;
@tailwind utilities;
EOL

# Mengisi konten ke src/index.html (boilerplate awal)
echo "-> Membuat boilerplate index.html..."
cat <<EOL > src/index.html
<!DOCTYPE html>
<html lang="en" class="scroll-smooth">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MandaCloud Store</title>
    <link href="/css/output.css" rel="stylesheet">
    </head>
<body class="bg-gray-900 text-white">
    
    <h1 class="text-3xl font-bold text-purple-500 text-center my-10">
        Proyek MandaCloud Store Dimulai!
    </h1>

    </body>
</html>
EOL

# Mengisi konten ke tailwind.config.js
echo "-> Mengkonfigurasi tailwind.config.js..."
cat <<EOL > tailwind.config.js
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/**/*.{html,js}"],
  theme: {
    extend: {},
  },
  plugins: [],
}
EOL

# Mengisi konten ke package.json (dengan script build & dev)
echo "-> Mengkonfigurasi package.json dengan script..."
cat <<EOL > package.json
{
  "name": "mandacloud-store",
  "version": "1.0.0",
  "description": "Website untuk menjual layanan cloud.",
  "main": "index.js",
  "scripts": {
    "dev": "npx tailwindcss -i ./src/css/input.css -o ./public/css/output.css --watch",
    "build": "npx tailwindcss -i ./src/css/input.css -o ./public/css/output.css --minify"
  },
  "author": "Manda",
  "license": "ISC"
}
EOL

echo "✅ Setup Selesai! Struktur file dan folder telah dibuat."
echo "➡️ Langkah selanjutnya, jalankan 'npm install -D tailwindcss postcss autoprefixer' lalu 'npm run dev'."

