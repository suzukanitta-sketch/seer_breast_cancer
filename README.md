Survival Analysis for Metastatic Breast Cancer Patients
Undergraduate capstone project · SAS · SEER 1973–2015

**Overview**
This project investigates whether survival time for metastatic (AJCC stage IV) breast cancer patients improved between 1988 and 2009, and whether survival is modified by a patient's age at diagnosis, race, or marital status. The analysis uses the NCI SEER (Surveillance, Epidemiology, and End Results) registry, one of the most comprehensive population-based cancer databases in the United States.
The full write-up is included as long_term_metastatic.pdf.

**Research Questions**

Has survival time for metastatic breast cancer patients improved across diagnosis eras (1988–2009)?
Is survival time modified by age at diagnosis, race, or marital status?


**Data**
Source: SEER 1973–2015, accessed via SEER*Stat
Files used: Four registry text files merged into a combined dataset (N = 1,631,572 breast cancer patients total)
Study cohort construction:

Restricted to patients with AJCC stage IV (metastatic) classification: N = 58,654
Excluded patients with unknown survival time or diagnosed after 2009
Final analytic sample after exclusions: N = 35,649

The data is not included in this repository (access requires a SEER data use agreement; apply at seer.cancer.gov).

**Methods**

Kaplan-Meier survival analysis with log-rank tests, stratified by year of diagnosis, age group, race, and marital status
Cox proportional hazards regression for univariate and multivariate modeling of hazard ratios
Logistic regression (exploratory) for long-term survivor status (≥ 60 months)

Key covariates: year of diagnosis (grouped 1988–1993, 1993–1998, 1998–2003, 2003–2009), age at diagnosis (5 groups), race/ethnicity (Caucasian, Black, Hispanic, Asian, Other), marital status (married, single, unmarried partner), ER/PR receptor status.

**Key Findings**

Survival improved significantly across diagnosis eras overall (χ²=105.84, p<.0001), with meaningful improvement beginning around 1998 — consistent with the clinical introduction of targeted therapies such as trastuzumab in the late 1990s
Younger patients (≤49) showed greater survival improvement over time than older age groups (≥80)
Later year of diagnosis was associated with a ~1.7% decrease in hazard for death per year (HR=0.983, p<.0001)
Older age at diagnosis was associated with a ~1.7% increase in hazard for death per year (HR=1.017, p<.0001)
Married patients had a ~26% lower hazard for death compared to unmarried patients (HR=0.736, p<.0001) — though this association likely reflects confounding by socioeconomic and access-to-care factors not captured in the model
Black patients had a ~21% higher hazard for death relative to White patients; Asian patients had a ~17% lower hazard for death


Repository Structure
├── seer_data_import.sas          # Data ingestion: fixed-width SEER text files → SAS datasets
├── long_term_metastatic.sas      # Iterative analysis file with cohort construction,
│                                 # variable derivation, KM curves, and Cox regression
└── long_term_metastatic.pdf      # Full written report with figures, tables, and results

**Reflections (Written in 2025)**
This was an undergraduate capstone project. Looking back, a few things I'd approach differently now:

The marital status finding warrants caution — married patients may have better access to care, more social support, and differ on unmeasured socioeconomic variables; the association is almost certainly confounded
The Cox macro iterates univariate models across all SEER variables without correction for multiple comparisons, which was exploratory in intent but would need adjustment before any inference
The PROC SORT calls without explicit data= options work but rely on implicit dataset references — not a practice I'd use in production code
Race was ultimately excluded from the final model due to unbalanced group sizes; a weighted or stratified approach would have been more principled

That said: working with real registry data, navigating fixed-width file ingestion, and building a survival analysis pipeline from scratch was a genuinely useful foundation for the clinical trials work I do now.

Dependencies

SAS 9.4 (developed in SAS University Edition / SAS OnDemand)
SEER data access (free, requires registration)
