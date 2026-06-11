# Decadal Analysis of Cereal Crop Yield Dynamics and Experimental Design Workflows in West African Agriculture

## 🌾 Project Overview
This repository contains a comprehensive computational agriculture pipeline built in R to analyze multi-decadal crop yield trends, evaluate macro-agricultural correlations, and execute core agronomic experimental design workflows (CRD, RCBD, and Regression). 

Using a real-world global database tracking agricultural productivity from 1961 onwards, this project isolates and analyzes the historical performance of **Maize (*Zea mays*)** and **Rice (*Oryza sativa*)** in Nigeria. The objective is to extract data-driven insights regarding crop yield stability, annual technological progress, and the implications of these trends on sub-Saharan food security.

---

## 🔬 Core Statistical & Agronomic Insights

### 1. Macro-Yield Trends & Baseline Performance (T-Test)
* **Maize Mean Yield:** 1.30 tonnes/hectare
* **Rice Mean Yield:** 1.69 tonnes/hectare
* **Statistical Significance:** $p = 2.56 \times 10^{-8}$ (Highly Significant)
* **Biological Narrative:** A Welch Two-Sample t-test confirms a statistically significant long-term yield advantage for rice over maize in Nigeria. The gap of roughly 0.39 tonnes/hectare highlights historical disparities in crop-specific management systems, ecological adaptations, or regional resource allocations over the last six decades.

### 2. Rate of Agricultural Progress (Linear Regression)
* **Predictive Model:** $\text{Maize Yield} = -33.46 + 0.0175(\text{Year})$
* **Goodness of Fit ($R^2$):** 0.694 (69.4% of variance explained)
* **Statistical Significance:** $p = 4.87 \times 10^{-16}$
* **Agronomic Interpretation:** The linear regression model establishes that time is a highly significant predictor of yield growth. Nigeria's maize production has advanced at a reliable baseline rate of 0.0175 tonnes per hectare annually. This steady climb represents the cumulative real-world impact of agricultural innovations, including the deployment of improved quantitative genetics, open-pollinated/hybrid varieties, and optimized agronomic extensions. 

### 3. Crop Co-Fluctuation (Correlation Analysis)
* **Pearson Correlation Coefficient ($r$):** 0.358
* **Statistical Significance:** $p = 0.0058$
* **Socio-Economic Narrative:** A moderate, highly significant positive correlation exists between maize and rice yields. This co-fluctuation reveals that despite differing structural growth requirements, both cropping systems are bound to shared macro-environmental drivers, such as regional fertilizer subsidy policies, cross-cutting tractorization programs, and systemic climate variations over the data timeline.

### 4. Advanced Experimental Design (RCBD ANOVA)
To demonstrate practical mastery of field-trial biometrics, this repository includes an evaluation modeling 3 distinct crop varieties across 4 heterogeneous field blocks:
* **Genotypic Variation (Variety):** $p = 3.3 \times 10^{-7}$ (Highly Significant)
* **Environmental Gradient (Block):** $p = 0.0003$ (Highly Significant)
* **Methodological Significance:** By employing a Randomized Complete Block Design (RCBD), the model successfully partitions out micro-environmental field noise (such as soil fertility gradients or topographies). Controlling for block variance safeguards the true genetic signal of the varieties, preventing Type I errors in breeding selection.

---

## 🛠️ Tech Stack & Key Implementations
* **Language:** R (v4.6.0)
* **Environment:** RStudio / Posit Cloud
* **Core Libraries Used:**
  * `ggplot2`: For multi-layered, publication-ready data visualizations mapping decadal shifts using continuous color scales and integrated linear trendlines (`geom_smooth`).
  * `stats`: Core R package utilized for fitting linear models (`lm`), Analysis of Variance (`aov`), t-tests (`t.test`), and correlation tests (`cor.test`).

---

## 🔬 Chapter 2: Localized Agronomic Field Trial Analysis (UNN Experimental Design)

### 1. Treatment Background & Experimental Framework
To evaluate micro-level agricultural variables, this secondary pipeline processes data from a controlled agronomic experiment evaluating plant height response ($cm$) across three distinct organic soil amendments: **Poultry Manure**, **Pig Manure**, and an unamended **Control**. This setup simulates localized field trials used to optimize nutrient supply for regional cropping systems.

### 2. Mean Performance & Treatment Comparison
* **Poultry Manure Mean Height:** 50.0 cm (`Group a`)
* **Pig Manure Mean Height:** 48.0 cm (`Group a`)
* **Control Mean Height:** 20.0 cm (`Group b`)

### 3. Post-Hoc Mean Separation (Duncan's Multiple Range Test)
An Analysis of Variance (ANOVA) paired with a **Duncan's Multiple Range Test (DMRT)** reveals highly critical biometrical separations:
* **Statistical Grouping:** Poultry and Pig manures share the statistical letter assignment **`a`**, confirming that while Poultry yielded the highest numeric baseline, the difference between poultry and pig treatments is not statistically significant.
* **Agronomic Thresholds:** The Control plot occupies an isolated grouping **`b`**. The dramatic gap (a 30cm drop from organic treatments) statistically validates that incorporating livestock waste variants yields non-trivial enhancements in vegetative cell elongation compared to unamended soil.
* **Breeding & Extension Insight:** For smallholder management systems, this proves that Pig manure serves as an economically viable, statistically equivalent substitute to Poultry manure for promoting structural plant development.
