# Run this file in R: source("requirements.R")

if (!requireNamespace("remotes", quietly = TRUE)) {
  install.packages("remotes", repos = "https://cloud.r-project.org")
}
if (!requireNamespace("BiocManager", quietly = TRUE)) {
  install.packages("BiocManager", repos = "https://cloud.r-project.org")
}

# CRAN packages
cran_pkgs <- list(
  ggplot2      = "3.5.2",
  dplyr        = "1.1.4",
  readxl       = "1.4.5",
  tibble       = "3.3.0",
  wesanderson  = "0.3.7",
  stringr      = "1.5.1",
  reshape2     = "1.4.4",
  ggpubr       = "0.6.0",
  rstatix      = "0.7.2",
  ggprism      = "1.0.5",
  gridtext     = "0.1.5",
  ggrepel      = "0.9.6",
  MASS         = "7.3.61",
  pheatmap     = "1.0.12",
  ggforce      = "0.4.2",
  corrplot     = "0.94",
  factoextra   = "1.0.7",
  RColorBrewer = "1.1.3",
  babelgene    = "22.9"
)

# Bioconductor packages
bioc_pkgs <- list(
  DOSE             = "3.30.5",
  EnhancedVolcano  = "1.22.0",
  ComplexHeatmap   = "2.20.0",
  circlize         = "0.4.16",
  DESeq2           = "1.44.0",
  variancePartition= "1.34.0",
  org.Dm.eg.db     = "3.19.1",
  clusterProfiler  = "4.12.6",
  edgeR            = "4.2.2",
  preprocessCore   = "1.66.0"
)

# Install CRAN
for (pkg in names(cran_pkgs)) {
  if (!requireNamespace(pkg, quietly = TRUE) ||
      packageVersion(pkg) != cran_pkgs[[pkg]]) {
    remotes::install_version(pkg, version = cran_pkgs[[pkg]], repos = "https://cloud.r-project.org")
  }
}

# Install Bioconductor packages
for (pkg in names(bioc_pkgs)) {
  if (!requireNamespace(pkg, quietly = TRUE) ||
      packageVersion(pkg) != bioc_pkgs[[pkg]]) {
    BiocManager::install(pkg, version = "3.18", ask = FALSE, update = FALSE)
  }
}
