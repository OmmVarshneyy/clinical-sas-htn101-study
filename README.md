Clinical SAS Project — HTN101 Phase II Study
Overview

This project simulates a Phase II clinical trial to practice a complete Clinical SAS workflow from raw data to reporting outputs.

The study evaluates investigational drug HTN-101 versus placebo in hypertension patients.

Subjects: 120

Design: Randomized 1:1

Visits: 5

Objectives

Practice structured clinical programming workflow

Understand Raw → Analysis → Reporting flow

Create ADaM-style datasets

Generate basic safety tables

This project focuses on learning logic and structure rather than production-level complexity.

Workflow

Raw Data → Analysis Dataset → Tables

Datasets
Raw Data

DM — Demographics (age, sex, race, weight, treatment)

VS — Vital signs (systolic and diastolic blood pressure across visits)

AE — Adverse events (term, severity, occurrence day)

All datasets are simulated using DATA step and RAND functions.

Analysis Data
ADSL

Derived variables:

SAFFL — Safety population flag

TRTAN — Numeric treatment

BASE_SYSBP — Baseline systolic BP

BASE_DIABP — Baseline diastolic BP

ADAE

Derived variables:

TRTEMFL — Treatment emergent flag

Tables Generated
Demographics

Sex distribution by treatment

Age summary

Weight summary

Baseline BP summary

Adverse Events

Treatment emergent adverse event frequency by treatment group

Tables created using PROC FREQ and PROC MEANS.

Program Structure
Program	Purpose
01_create_raw_data.sas	Creates DM, VS, AE
02_create_adsl.sas	Builds ADSL
03_create_adae.sas	Builds ADAE
04_demographics_tables.sas	Demographic summaries
05_ae_tables.sas	AE summaries

Programs should be run sequentially.

How to Run

Run 01_create_raw_data.sas

Run 02_create_adsl.sas

Run 03_create_adae.sas

Run 04_demographics_tables.sas

Run 05_ae_tables.sas

All datasets are created in the WORK library.

Notes

Simulated data only

Created for learning and portfolio demonstration

Simplified ADaM logic

Not CDISC validated

Skills Demonstrated

DATA step programming

Dataset merging and sorting

Variable derivation

Basic ADaM concepts

Safety table generation

Structured workflow organization

Author

Beginner Clinical SAS learner building hands-on understanding of clinical trial programming workflow.
