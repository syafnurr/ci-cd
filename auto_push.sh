#!/bin/bash

# Masuk ke direktori proyek Strapi
cd /home/divistant/research/ci-cd

# Dapatkan daftar perubahan yang belum ditambahkan dan untracked files
changes=$(git status --porcelain)

# Jika tidak ada perubahan yang belum ditambahkan, keluar dari skrip
if [ -z "$changes" ]; then
    echo "No changes to commit."
    exit 0
fi

# Inisialisasi variabel untuk pesan commit
commit_message=""

# Loop melalui setiap baris output dari git status
while IFS= read -r line; do
    # Cek apakah baris tersebut berisi nama file yang diubah atau ditambahkan
    if [[ $line == M* || $line == A* ]]; then
        # Dapatkan jenis perubahan dan nama file dari baris
        change_type=$(echo "$line" | awk '{print $1}')
        file=$(echo "$line" | awk '{print $2}')
        # Tambahkan informasi perubahan ke pesan commit
        commit_message="$commit_message $change_type $file,"
    fi
done <<< "$changes"

# Hapus koma terakhir dari pesan commit
commit_message=${commit_message%,}

# Buat commit dengan pesan yang deskriptif
git add .
git commit -m "Update: $changes"

# Lakukan push ke repository GitHub
git push origin staging # Ganti 'main' dengan nama branch yang Anda gunakan jika berbeda

