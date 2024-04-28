changes=$(git status --porcelain)

# Mengambil hanya bagian yang menunjukkan perubahan dan status file (M, A, D, dst.)
file_changes=$(echo "$changes" | grep -E "^[ MADRCU??]{2}")

# Menghapus karakter awal dari setiap baris (spasi dan huruf M), lalu mengganti spasi dengan koma
commit_message=$(echo "$file_changes" | sed -E 's/^.{3}//' | sed -E 's/\..*//' | tr '\n' ',' | sed 's/,$//' | sed 's/,/, /g')

echo "$commit_message"

