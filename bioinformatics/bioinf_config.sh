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

DATA_DIR="/data"
RAW_FASTQ_DIR="$DATA_DIR/sra_data"

OUT_DIR=$HOME/scratch/bioinf_intro
QC=$OUT_DIR/qc_output

GENOME_DIR="${DATA_DIR}/genome"
FASTA_PATH="${GENOME_DIR}/GRCm39.primary_assembly.genome.fa"
GFF_PATH="${GENOME_DIR}/gencode.vM27.primary_assembly.annotation.gff3"

TOTAL_THREADS=20
TOTAL_RAM=100000000000

TRIM_DIR="${OUT_DIR}/trimmed_fastq"
STAROUT_DIR="${OUT_DIR}/starout"
