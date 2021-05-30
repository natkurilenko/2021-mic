# ---
# jupyter:
#   jupytext:
#     formats: r:light
#     text_representation:
#       extension: .r
#       format_name: light
#       format_version: '1.5'
#       jupytext_version: 1.11.2
#   kernelspec:
#     display_name: R
#     language: R
#     name: ir
# ---

library(dplyr)
library(fs)

# +
data_dir="/data"
genome_dir=file.path(data_dir,"genome")

mouse_url_prefix="http://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_mouse/release_M27"
mouse_gff3_url=file.path(mouse_url_prefix,"gencode.vM27.primary_assembly.annotation.gff3.gz")
mouse_fasta_url=file.path(mouse_url_prefix,"GRCm39.primary_assembly.genome.fa.gz")
mouse_md5sum_url=file.path(mouse_url_prefix,"MD5SUMS")

mouse_gff3_url %>%
    basename %>%
    file.path(genome_dir,.) ->
    mouse_gff3_gz
# mouse_gff3_gz %>%
#     path_ext_remove ->
#     mouse_gff3
mouse_fasta_url %>%
    basename %>%
    file.path(genome_dir,.) ->
    mouse_fasta_gz
mouse_md5sum_url %>%
    basename %>%
    file.path(genome_dir,.) ->
    mouse_md5sum_path
