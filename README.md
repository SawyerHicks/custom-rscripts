# custom-rscripts
Repository for custom R scripts used for RNA-seq analysis and data exploration.

### homer-motif-processing.R
This script uses the packages dplyr, ggplot2, gridExtra, and grid to analyze homer's findMotifsGenome.pl output.

Groups (2) of .bed files (n=3) from different conditions (A and B) were combined into singular .bed files and used as input.

Homer execution command

findMotifsGenome.pl "combind_B.bed" "human_genome_GRCh38.dna.primary_assembly.fa" "/output_directory" -bg "combined_A.bed" -p 16

Custom r-script reads in Homer's findMotifsGenome output file and formats a plotting table based on the Motif_Name, LogPvalue, Delta_Percentage, and Concensus columns.

A dot plot is generated that displays the Motif name and the gene the motif is found in on the y-axis, a dot is plotted where the -log(P-value) is reflected by color and the Percentage Difference is reflected by dot size (with legends for both). Lastly, the motif is displayed to the right of the dot. 

See the homer-motif-processing.R script for analyzing the output. 
