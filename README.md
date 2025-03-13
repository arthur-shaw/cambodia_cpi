# Background

To help with quality control of a price survey, one needs to compare current prices with past prices somehow.

For that, there are two broad strategies:

1. After data export
1. At the moment of data collection

This repository focuses on the second strategy: valdiating data in real time in the CAPI applicaiton, at the moment of data collection.

Within that strategy, there are two practical tactics:

1. Panel preloading
1. Lookup table

# Panel preloading

To demonstrate how this might be done, this repository:

- Creates fake data
- Creates an assignment file in the format expected by Survey Solutions.

To make the example reproducible, [here](https://designer.mysurvey.solutions/q/details/7cafce4a-c0c2-4b56-974e-c1638b1d7758) is the Designer questionnaire for which fake assignment data are created.

To create the necessary files and see the process for generating them, there are scripts in both R and Stata:

- `01_create_zip_for_preloading.do`
- `01_create_zip_for_preloading.R`

Each script contains comments describing what is being done and why.

# Lookup table

To provide a working example for the lookup table solution, this repository

- Creates fake data
- Creates a lookup file in the format expected by Survey Solutions.

To make this example fully reproducible, [here](https://designer.mysurvey.solutions/q/details/6e5417bf-c9c6-4175-95ef-086a4c411873) is the Designer questionnaire built to use this repository's example lookup table.

To create the necessary files and see the process for generating them, there are scripts in both R and Stata:

- `02_create_lookup_table.do`
- `02_create_lookup_table.R`
