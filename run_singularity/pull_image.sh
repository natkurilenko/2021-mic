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

srun -A chsi -p chsi --cpus-per-task=4 --mem=10G singularity pull --dir images/mic_course docker://miccourse/jupyter-mic-2021:latest
