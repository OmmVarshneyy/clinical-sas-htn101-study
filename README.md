# Clinical SAS Project — HTN101 Phase II Study

## Overview
This project simulates a Phase II clinical trial to practice a complete Clinical SAS workflow from raw data to reporting outputs.

The study evaluates investigational drug **HTN-101** versus placebo in hypertension patients.

- Subjects: 120
- Design: Randomized 1:1
- Visits: 5

---

## Objectives
- Practice structured clinical programming workflow
- Understand Raw → Analysis → Reporting flow
- Create ADaM-style datasets
- Generate basic safety tables

---

## Workflow
Raw Data → Analysis Dataset → Tables

---

## Datasets

### Raw Data
- **DM** — Demographics (age, sex, race, weight, treatment)
- **VS** — Vital signs (systolic and diastolic BP across visits)
- **AE** — Adverse events (term, severity, occurrence day)

### Analysis Data

#### ADSL
- SAFFL — Safety population flag
- TRTAN — Numeric treatment
- Baseline systolic BP
- Baseline diastolic BP

#### ADAE
- TRTEMFL — Treatment emergent flag

---

## Tables Generated

### Demographics
- Sex distribution by treatment
- Age, weight, baseline BP summary

### Adverse Events
- Treatment emergent AE frequency by treatment group

---

## Program Structure

| Program | Purpose |
|--------|------|
| 01_create_raw_data.sas | Creates DM, VS, AE |
| 02_create_adsl.sas | Builds ADSL |
| 03_create_adae.sas | Builds ADAE |
| 04_demographics_tables.sas | Demographic summaries |
| 05_ae_tables.sas | AE summaries |

---

## How to Run
1. Run 01_create_raw_data.sas
2. Run 02_create_adsl.sas
3. Run 03_create_adae.sas
4. Run 04_demographics_tables.sas
5. Run 05_ae_tables.sas

---

## Notes
- Simulated data only
- For learning purposes
- Simplified ADaM logic
- Not CDISC validated

---

## Skills Demonstrated
- DATA step programming
- Dataset merging
- Variable derivation
- Basic ADaM concepts
- Safety table generation

---

## Author
Beginner Clinical SAS learner building practical understanding of clinical trial workflow
