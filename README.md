Clinical SAS Project — HTN101 Phase II Study
Overview

This project is a mock Phase II clinical trial created to practice an end-to-end Clinical SAS workflow.

The study evaluates an investigational drug HTN-101 compared with placebo in patients with hypertension.

Subjects: 120

Design: Randomized 1:1

Visits: 5

Objectives

Practice structured clinical programming workflow

Understand raw → analysis → reporting flow

Create ADaM-style datasets

Generate basic safety tables

This is a learning project focused on clarity rather than production-level complexity.

Workflow

Raw Data → Analysis Dataset → Tables

Datasets
Raw Data

DM — Demographics (age, sex, race, weight, treatment)

VS — Vital signs (systolic & diastolic BP across visits)

AE — Adverse events (term, severity, day)

All datasets are simulated using DATA step and RAND functions.

Analysis Data
ADSL

Derived variables:

SAFFL — Safety population flag

TRTAN — Numeric treatment

Baseline systolic BP

Baseline diastolic BP

ADAE

Derived variables:

TRTEMFL — Treatment emergent flag

Tables Generated
Demographics

Sex distribution by treatment

Age, weight, baseline BP summary

Adverse Events

Treatment emergent AE frequency by treatment group

Tables created using PROC FREQ and PROC MEANS.

Program Structure
Program	Purpose
01_create_raw_data.sas	Creates DM, VS, AE
02_create_adsl.sas	Builds ADSL
03_create_adae.sas	Builds ADAE
04_demographics_tables.sas	Demographic tables
05_ae_tables.sas	AE tables

Run programs sequentially.

How to Run

01_create_raw_data.sas

02_create_adsl.sas

03_create_adae.sas

04_demographics_tables.sas

05_ae_tables.sas

Datasets are created in the WORK library.

Notes

Simulated data only

For learning and portfolio use

Simplified ADaM logic

Not CDISC validated

Skills Demonstrated

DATA step programming

Dataset merging

Variable derivation

Basic ADaM concepts

Safety table generation

Organized workflow

Author

Beginner Clinical SAS learner building practical understanding of clinical trial programming.
