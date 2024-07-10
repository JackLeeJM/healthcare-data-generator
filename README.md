# Healthcare Data Generator

> [!NOTE]
> A dockerized healthcare data generator based on [**Synthea**](https://github.com/synthetichealth/synthea)

## Getting Started

### Local Setup

1. Git clone this repository into your preferred directory.
2. Run `make setup` to download the necessary dependencies.
3. Modify the properties for synthetic data generation in `app/synthea.properties` if needed.
4. Run `make build` to build the docker image.
5. Run `make generate p=20` to generate 20 synthetic patients data, with specified number of patient to be generated.
6. Otherwise, run `make generate` to generate a default of 10 synthetic patients data.
7. Generated patients data will be stored in the `/data` folder.

### From Docker Hub

1. Pull image with `docker pull jackleejm/healthcare-data-gen:0.1.0`.
2. Create a temporary folder called `data/`.
3. Run `make generate` or `make generate p=20` to generate synthetic patient data. 

## Generated Data

- The default generated data should assume the following folder structure with the standard unchanged `synthea.properties` config file.
- More details on the specifics of the CSVs, please visit the official Synthea's [wiki](https://github.com/synthetichealth/synthea/wiki/CSV-File-Data-Dictionary).

```
data/
├── csv/
│   ├── allergies.csv
│   ├── careplans.csv
│   ├── claims.csv
│   ├── claims_transactions.csv
│   ├── conditions.csv
│   ├── devices.csv
│   ├── encounters.csv
│   ├── imaging_studies.csv
│   ├── immunizations.csv
│   ├── medications.csv
│   ├── observations.csv
│   ├── organizations.csv
│   ├── patients.csv
│   ├── payer_transitions.csv
│   ├── payers.csv
│   ├── procedures.csv
│   ├── providers.csv
│   └── supplies.csv
├── fhir/
│   ├── hospitalInformation1717732754594.json
│   └── practitionerInformation1717732754594.json
├── metadata/
│   └── 2024_06_07T03_59_14Z_100_Massachusetts_59f5e3a2_c0f2_4600_a4df_21d854747e53.json
└── symptoms/
    └── csv/
        └── symptoms.csv
```