# ---
# jupyter:
#   jupytext:
#     formats: sh:light
#     text_representation:
#       extension: .sh
#       format_name: light
#       format_version: '1.5'
#       jupytext_version: 1.11.2
#   kernelspec:
#     display_name: Bash
#     language: bash
#     name: bash
# ---

# +
set -u
# source("common_config.r")
echo "NEED TO SHARE VARS BETWEEN R AND BASH!!"

DATA_DIR="/data"

GENOME_DIR="${DATA_DIR}/genome"
# FASTA_GZ="${GENOME_DIR}/GRCm39.primary_assembly.genome.fa.gz"
# GFF_GZ="${GENOME_DIR}/gencode.vM27.primary_assembly.annotation.gff3.gz"

FASTA_PATH="${GENOME_DIR}/GRCm39.primary_assembly.genome.fa"
GFF_PATH="${GENOME_DIR}/gencode.vM27.primary_assembly.annotation.gff3"

TOTAL_THREADS=80

OUT_DIR="/workspace"
RAW_FASTQ_DIR="${DATA_DIR}/sra_data"
TRIM_DIR="${OUT_DIR}/trimmed_fastq"
