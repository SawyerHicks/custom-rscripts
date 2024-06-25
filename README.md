# custom-rscripts
Repository for custom R scripts used for RNA-seq analysis and data exploration.

### homer-motif-dot-plot.R
This script uses the packages dplyr, ggplot2, gridExtra, and grid to analyze homer's findMotifsGenome.pl output.

Groups (2) of .bed files (n=3) from different conditions (A and B) were combined into singular .bed files and used as input.

Homer execution command

findMotifsGenome.pl "combind_B.bed" "human_genome_GRCh38.dna.primary_assembly.fa" "/output_directory" -bg "combined_A.bed" -p 16

Custom r-script reads in Homer's findMotifsGenome output file and formats a plotting table based on the Motif_Name, LogPvalue, Delta_Percentage, and Concensus columns.

A dot plot is generated that displays the Motif name and the gene the motif is found in on the y-axis, a dot is plotted where the -log(P-value) is reflected by color and the Percentage Difference is reflected by dot size (with legends for both). Lastly, the motif is displayed to the right of the dot. 

See the homer-motif-processing.R script for analyzing the output. 

Custom conda environment contains the following:

| Package | Version |
| ------- | ------- |
| biopython | 1.81 |
| Bottleneck | 1.3.5 |
| brotlipy | 0.7.0 |
| bx-python | 0.11.0 |
| certifi | 2024.2.2 |
| cffi | 1.15.1 |
| charset-normalizer | 3.1.0 |
| contourpy | 1.0.7 |
| cryptography | 40.0.1 |
| cycler | 0.11.0 |
| Cython | 3.0.10 |
| et-xmlfile | 1.1.0 |
| fonttools | 4.39.3 |
| gtf2csv | 0.2 |
| idna | 3.4 |
| joblib | 1.2.0 |
| kiwisolver | 1.4.4 |
| logomaker | 0.8 |
| matplotlib | 3.7.1 |
| munkres | 1.1.4 |
| numexpr | 2.8.7 |
| numpy | 1.25.0 |
| openpyxl | 3.1.2 |
| packaging | 23.0 |
| pandas | 2.0.3 |
| patsy | 0.5.3 |
| pdfpages | 0.1.0 |
| Pillow | 9.5.0 |
| pip | 23.0.1 |
| platformdirs | 3.2.0 |
| ply | 3.11 |
| pooch | 1.7.0 |
| pyBigWig | 0.3.22 |
| pycparser | 2.21 |
| pyOpenSSL | 23.1.1 |
| pyparsing | 3.0.9 |
| PyPDF2 | 3.0.1 |
| PyQt5 | 5.15.7 |
