# Evidence Synthesis Pipeline: Quantitative Risk Stratification for Hypertension in Mass Gathering Cohorts

[![Preprint DOI](https://img.shields.io/badge/medRxiv-10.1101%2F2025.07.01.25330661-red.svg)](https://doi.org/10.1101/2025.07.01.25330661)
[![PROSPERO Registration](https://img.shields.io/badge/PROSPERO-CRD420251084054-blue.svg)](https://www.crd.york.ac.uk/prospero/)
[![PRISMA Compliant](https://img.shields.io/badge/Standard-PRISMA%202020-green.svg)](https://www.prisma-statement.org/)
[![R Version](https://img.shields.io/badge/R-%3E%3D%204.3.0-blue.svg)](https://www.r-project.org/)

---

## Executive Summary

This repository contains the end-to-end reproducible R biostatistical pipeline for the evidence synthesis study:  
"Risk Factors for Hypertension in Indonesian Hajj Pilgrims: A Systematic Review and Meta-Analysis" (medRxiv preprint: doi:10.1101/2025.07.01.25330661).

Synthesizing analytical observational cohorts encompassing 286,987 pilgrims, this project demonstrates applied competencies in clinical evidence synthesis: protocol-driven extraction, Mantel-Haenszel random-effects modeling, Paule-Mandel between-study heterogeneity estimation, and publication-standard graphic generation.

---

## Repository Architecture

- meta-analysis-hypertension-hajj/
  - README.md: Project documentation and clinical summary
  - analysis/
    - run_analysis.R: Primary reproducible R pipeline
  - data/
    - hajj_hypertension_data.csv: Curated extraction matrix (2x2 event data)
  - figures/
    - forest_plot_reproduced.png: High-resolution stratified Forest Plot

---

## Statistical Methodology

- Model Specification: Stratified random-effects meta-analysis via the Mantel-Haenszel (MH) method for dichotomous clinical events.
- Heterogeneity Estimation: Paule-Mandel (PM) algorithm for between-study variance (tau^2).
- Inconsistency Metrics: Cochran's Q statistic and Higgins' I^2.
- Effect Metric: Odds Ratio (OR) with corresponding 95% Confidence Intervals.

---

## Summary of Findings

The synthesized evidence identifies key metabolic and hereditary predictors of hypertension in mass gathering cohorts:

- Diabetes Mellitus: Associated with nearly double the odds of hypertension (pooled OR: 1.86, 95% CI: 1.72–2.01, p < 0.00001) with absolute consistency across trials (I^2 = 0%).
- Obesity / Excess BMI: Posed a significant risk increase (pooled OR: 1.39, 95% CI: 1.26–1.53, p < 0.00001) with low-to-moderate heterogeneity (I^2 = 34%).
- Family History of Hypertension: Demonstrated a strong association (pooled OR: 1.70, 95% CI: 1.29–2.23, p = 0.0001), accompanied by substantial heterogeneity (I^2 = 92%) due to self-reported ascertainment across regional embarkations.
- Dyslipidemia: Yielded an inconclusive association (pooled OR: 1.18, 95% CI: 0.99–1.40, p = 0.06) with significant inconsistency (I^2 = 94%).

---

## Reproducing Locally

Clone this repository and run the analysis script in R:

git clone [https://github.com/your-username/meta-analysis-hypertension-hajj.git](https://github.com/your-username/meta-analysis-hypertension-hajj.git)
cd meta-analysis-hypertension-hajj/analysis
Rscript run_analysis.R

---

## Biostatistical Consulting Services

Available for international research collaborations, clinical trial design, and evidence synthesis contracts:
- Systematic Review & Meta-Analysis Protocol Registration (PROSPERO guidelines)
- Advanced Evidence Modeling: Random-effects pooling, Network Meta-Analysis, Meta-Regression
- Publication-quality visualizations tailored for high-impact journals (ICMJE, Lancet, JAMA)

Contact: Muhammad Abdillah Roikhan  
Faculty of Medicine, Universitas Airlangga  