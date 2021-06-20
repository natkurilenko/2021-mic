# ---
# jupyter:
#   jupytext:
#     formats: sh:light
#     text_representation:
#       extension: .sh
#       format_name: light
#       format_version: '1.5'
#       jupytext_version: 1.11.3
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
BED_PATH="${GENOME_DIR}/gencode.vM27.primary_assembly.annotation.bed"

TOTAL_THREADS=20
TOTAL_RAM=100000000000

ADAPTER_FASTA="${OUT_DIR}/adapter.fasta"
TRIM_DIR="${OUT_DIR}/trimmed_fastq"
STAROUT_DIR="${OUT_DIR}/starout"

# Paired-end
PE_OUT_DIR=$HOME/scratch/pe_analysis
PE_QC=$PE_OUT_DIR/qc_output
PE_TRIM_DIR="${PE_OUT_DIR}/trimmed_fastq"
PE_STAROUT_DIR="${PE_OUT_DIR}/starout"
