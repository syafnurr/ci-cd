changes=$(git status --porcelain)

# Jika tidak ada perubahan yang belum ditambahkan, keluar dari skrip
if [ -z "$changes" ]; then
    echo "No changes to commit."
    exit 0
fi

# Inisialisasi variabel untuk pesan commit
echo $changes
