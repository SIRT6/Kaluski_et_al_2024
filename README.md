[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.17250775.svg)](https://doi.org/10.5281/zenodo.17250775)

# Kaluski et al. (2025) — Source Code & Data

This repository contains the source data, scripts, and analysis code supporting t[he manuscript by **Kaluski et al. (2025)**. 

### Prerequisites
- R (>= 4.4.1)
- jupyterlab or jupyter notebook
- R kernel for jupyter notebook
```R
install.packages("devtools")
devtools::install_github("IRkernel/IRkernel")
IRkernel::installspec()
```

### Installation
Clone this repository:
   ```bash
   git clone https://github.com/SIRT6/Kaluski_et_al_2024.git
   cd Kaluski_et_al_2024
```

All R notebooks and scripts in this repository depend on a set of R packages.  
To simplify installation, we provide a `requirements.R` script.

#### Quick setup

1. Open R (or RStudio).
2. Run the following command:

```r
source("requirements.R")
```

### Citation
Kaluski et al. (2025). "Histone deacetylase SIRT6 regulates tryptophan catabolism and prevents metabolite imbalance associated with neurodegeneration". Nature Communications
