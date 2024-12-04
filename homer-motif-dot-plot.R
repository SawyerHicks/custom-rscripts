library(dplyr)
library(gridExtra)
library(grid)
library(ggplot2)
# working dir
setwd("path-to/R-processing-and-plotting/")

# load in results file
headers = c("Motif_Name", "Consensus", "Pvalue", "LogPvalue", "Qvalue(Benjamini)", "Target_seqs_w_Motif", "Perc_Targets_w_Motif", "Background_w_Motif", "Perc_Background_w_Motif")
known_data_in = read.csv(file = "../homer-output/knownResults.txt", sep = "\t", header = T)
colnames(known_data_in) = headers

# Convert perc to number and substract for delta percentage
known_data_in$Perc_Targets_w_Motif <- as.numeric(sub("%", "", known_data_in$Perc_Targets_w_Motif))
known_data_in$Perc_Background_w_Motif <- as.numeric(sub("%", "", known_data_in$Perc_Background_w_Motif))
known_data_in$Delta_Percentage <- known_data_in$Perc_Targets_w_Motif - known_data_in$Perc_Background_w_Motif

# get nice gene names
gene_name = sub("/.*", "", known_data_in$Motif_Name)

## BUILD PLOT TABLE ## 
plot_table = known_data_in
# convert Motif_Names to only gene name
plot_table$Motif_Name = gene_name
# select columns to plot with
plot_table = plot_table %>% select("Motif_Name", "LogPvalue", "Delta_Percentage", "Consensus")
# convert logPValue to negative logPValue (making values positive)
plot_table$LogPvalue = -(plot_table$LogPvalue)
plot_table[order(plot_table$LogPvalue), decreasing = TRUE]
# select for -logPValue > 1.30103 (0.05) AND delta difference by 1%
#plot_table = plot_table[plot_table$LogPvalue >= 1.30103, ]
#plot_table = plot_table[plot_table$Delta_Percentage >= 1, ]
plot_table = head(plot_table, n = 50)
plot_table$Group = rep("Enriched")
plot_table$Motif_Name <- factor(plot_table$Motif_Name, levels = rev(unique(plot_table$Motif_Name)))

# GENERATE PLOT
ggplot(plot_table, aes(x = Group, y = Motif_Name, color = LogPvalue, size = Delta_Percentage)) +
  geom_point() +
  scale_color_gradient(low = "yellow", high = "red") +
  theme_minimal() +
  theme(panel.background = element_rect(fill = "grey95", colour = "grey50"), # Set the background to light grey
        panel.grid.major = element_line(color = "grey80"), # Change major grid lines to be lighter
        panel.grid.minor = element_line(color = "grey90")) + # Minor grid lines even lighter
  labs(title = "Dot Plot of Ctrl2 125nM HM033 Enriched Motifs",
       x = "",
       y = "Motifs",
       color = "-Log(P-value)",
       size = "Percentage Difference") +
  geom_text(aes(x = 1.1, label = Consensus), hjust = 0, vjust = 0.3, color = "black", size = 3)  # Adjust text placement

# Custom nucleotide annotations
nucleotide_info <- data.frame(
  Symbol = c("A", "C", "G", "T", "U", "R", "Y", "K", "M", "S", "W", "B", "D", "H", "V", "N"),
  FullName = c("Adenine", "Cytosine", "Guanine", "Thymine", "Uracil", "Guanine / Adenine (purine)", "Cytosine / Thymine (pyrimidine)", 
               "Guanine / Thymine", "Adenine / Cytosine", "Guanine / Cytosine", "Adenine / Thymine",
               "Guanine / Thymine / Cytosine", "Guanine / Adenine / Thymine", "Adenine / Cytosine / Thymine", "Guanine / Cytosine / Adenine",
               "Adenine / Guanine / Cytosine / Thymine")
)

legend_table <- tableGrob(nucleotide_info, rows = NULL, theme = ttheme_minimal(base_size = 8))

grid.arrange(legend_table)
