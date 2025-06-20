#!/bin/bash

# Create main directories
mkdir -p memory-bank
mkdir -p baby-steps-archive
mkdir -p src
mkdir -p vibe-guide # Should already exist but -p handles it

# Create placeholder files in memory-bank if they don't exist
touch memory-bank/spesifikasi-produk.md
touch memory-bank/architecture.md
touch memory-bank/progress.md

# Papan Proyek: Initialize if it doesn't exist, or reset if --reset is used
PAPAN_PROYEK="memory-bank/papan-proyek.md"
TEMPLATE_PAPAN="vibe-guide/template-papan.md"

# Function to handle papan-proyek.md creation/reset
initialize_or_reset_papan() {
  if [ -f "$TEMPLATE_PAPAN" ] && [ -s "$TEMPLATE_PAPAN" ]; then
    cp "$TEMPLATE_PAPAN" "$PAPAN_PROYEK"
    echo "Papan proyek '$PAPAN_PROYEK' diinisialisasi/direset dari template."
  else
    touch "$PAPAN_PROYEK" # Create empty if template doesn't exist or is empty
    echo "Template papan '$TEMPLATE_PAPAN' tidak ditemukan atau kosong. '$PAPAN_PROYEK' dibuat kosong."
  fi
}

if [ "$1" == "--reset" ]; then
  echo "Menjalankan reset alur kerja..."
  if [ -f "$PAPAN_PROYEK" ]; then
    TIMESTAMP=$(date +"%Y%m%d-%H%M")
    ARSIP_FILE="baby-steps-archive/arsip-baby-step-$TIMESTAMP.md"
    cp "$PAPAN_PROYEK" "$ARSIP_FILE"
    echo "Papan proyek diarsipkan ke '$ARSIP_FILE'"

    # Record progress (simple timestamp for now)
    echo "Reset dilakukan pada: $TIMESTAMP" >> memory-bank/progress.md
    echo "Progres dicatat di 'memory-bank/progress.md'"
  else
    echo "File '$PAPAN_PROYEK' tidak ditemukan, tidak dapat mengarsipkan."
  fi

  initialize_or_reset_papan

else
  echo "Inisialisasi proyek..."
  if [ ! -f "$PAPAN_PROYEK" ]; then
    initialize_or_reset_papan
  else
    echo "File '$PAPAN_PROYEK' sudah ada. Tidak ada tindakan."
  fi
fi

echo "Struktur folder dan file proyek Vibe Coding V1.4 telah disiapkan."
