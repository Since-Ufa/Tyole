# Tyole project structure

This repository contains a computational chemistry data set focused on copper-containing coordination complexes and their electronic-structure calculations. The project is organized around molecular systems and calculation types rather than a software package source tree: most folders hold ORCA or Turbomole input decks, optimized geometries, and property/output summaries.

The workflow is driven mainly by:

- ORCA input files (`*.inp`)
- XYZ molecular geometry files (`*.xyz`)
- property and result text files (`*_property.txt`, `results.txt`, `output.txt`, `notes.txt`)
- Turbomole input and job directories
- spreadsheet files for benchmark/geometry data

## Root overview

The project root includes:

- `Articles/` — literature references and papers used for the project context.
- `orca/` — ORCA quantum chemistry jobs for copper complexes with different ligands and environments.
- `turbomole/` — Turbomole setup notes and tutorial/job directories for benchmarking and learning workflows.
- `benchmark.xlsx` — benchmark/analysis spreadsheet.
- `geometry.xlsx` — structural/geometry dataset spreadsheet.
- `servers.txt` — machine/server configuration or environment notes.

## Articles

This folder holds literature PDFs and documents relevant to the project topic.

- `Buglak_Prediciting_absorption_spectra_of_silver_ligand_complexes.pdf` — paper on absorption spectra predictions for silver-ligand complexes.
- `chen2012.pdf`, `gell2013.pdf`, `jia2013_Cu-GSH+others.pdf`, `jia2014_Cu-DPA-ESI.pdf`, `jia2014_Cu-DPA.pdf` — literature sources on copper complexes and related spectroscopy/chemistry.
- `Cu-AAs_18032026_colorless.docx` — project or study notes in Word format.
- `._Buglak_Prediciting_absorption_spectra_of_silver_ligand_complexes.pdf` — macOS Finder metadata copy of the PDF.

## orca

The `orca/` folder contains the main computational chemistry data. It is organized by ligand type and by environment (`vacuum` vs `water`), with calculations for geometry optimization and excited-state/property analysis.

### orca/cys

This directory stores copper-cysteine structures and corresponding ORCA jobs.

- `Cu_Cys2.xyz`, `Cu2_Cys2.xyz`, `Cu3_Cys2.xyz`, `Cu4_Cys3.xyz`, `Cu5_Cys4.xyz` — XYZ geometries for Cu–cysteine cluster models of different sizes.
- `cys.xyz` — standalone cysteine geometry used as a reference/fragment.

#### orca/cys/vacuum

Gas-phase calculations for the cysteine series.

- `geoopt/` — geometry optimization runs. Each subfolder entry such as `0_Cu_Cys2.xyz`, `1_Cu2_Cys2.xyz`, `2_Cu3_Cys2.xyz`, etc., stores optimized coordinates and trajectory files (`*_trj.xyz`), plus `.property.txt` summaries and the ORCA input file `cu_cys_opt_mp2_vac.inp`.
- `exci_CAM-B3LYP/` — TD-DFT excited-state calculations using CAM-B3LYP. The `*.inp` files define UV-vis excitation jobs, and the `*_property.txt` files store computed properties for each cluster size.
- `exci_M06-2X/` — alternative excitation calculations using M06-2X, with the same pattern of inputs and property files.

#### orca/cys/water

Solvated calculations for the same Cu–cysteine system.

- `geoopt/` — optimized geometries in water, with trajectory and property files analogous to the vacuum case.
- `exci_CAM-B3LYP/` — water-phase UV-vis/CAM-B3LYP calculations.
- `exci_M06-2X/` — water-phase M06-2X excitation calculations.

### orca/gsh_ToDoLater

This folder contains a second ligand family, related to glutathione (GSH) or Cu–GSH type models. It appears to be kept as a future/secondary set of calculations.

- `Cu_Gsh2.xyz`, `Cu2_Gsh2.xyz`, `Cu3_Gsh2.xyz`, `Cu4_Gsh3.xyz`, `Cu5_Gsh4.xyz`, `gsh.xyz` — structural geometries for the GSH-based cluster models.

#### orca/gsh_ToDoLater/vacuum

Vacuum-phase GSH calculations.

- `geoopt/` — geometry-optimization input `cu_gsh_opt_mp2_vac.inp` with associated optimized structures and outputs.
- `exci_BHandHLYP/`, `exci_CAM-B3LYP/`, `exci_M06-2X/`, `exci_PBE0/`, `exci_r2SCAN50/`, `exci_wB97X/` — excited-state calculation folders for multiple functionals, each containing ORCA input decks for UV-vis-type calculations.

#### orca/gsh_ToDoLater/water

Water-phase GSH calculations using the same set of functionals as in the vacuum branch.

- `geoopt/` — solvated geometry optimization input `cu_gsh_opt_mp2_water.inp`.
- Functional folders similar to the vacuum version: each contains ORCA input files for excited-state property calculations.

### orca/sch3

This section contains Cu–SCH3 model systems and is the most extensive ORCA dataset in the repository.

- `vacuum/` — gas-phase calculations.
- `water/` — solvent-phase calculations.

#### orca/sch3/vacuum

The vacuum directory includes several kinds of jobs:

- `geoopt/` — geometry optimization runs. Files such as `0_CuC2H6S2.xyz`, `1_Cu2C2H6S2.xyz`, `2_Cu3C2H6S2.xyz`, etc., are molecular geometries for the optimized structures, with corresponding `*_trj.xyz` trajectory files and `.property.txt` outputs. The optimization input file is `cu_sch3_opt_mp2_vac.inp`.
- `NBO/` — natural bond orbital analysis. `cu_sch3_NBO.inp` runs NBO calculations and the `*.property.txt` files hold NBO-related property summaries.
- `exci_BHandHLYP/`, `exci_CAM-B3LYP/`, `exci_CCSD/`, `exci_M06-2X/`, `exci_PBE0/`, `exci_wB97X/`, `exci_wB97X-D3/` — excited-state or correlated-property study directories. Each contains ORCA `.inp` input decks and property text files for different functionals and methods.

#### orca/sch3/water

The water-phase equivalent of the vacuum workflow.

- `geoopt/` — solvated geometry optimizations and trajectories for Cu–SCH3 systems.
- `exci_BHandHLYP/`, `exci_CAM-B3LYP/`, `exci_M06-2X/`, `exci_PBE0/`, `exci_wB97X/` — solvent-phase excited-state inputs and property outputs.

## turbmole

This directory is dedicated to Turbomole setup and calculations. It contains configuration notes, job folders, and tutorial material.

- `SettingTurbomole_README.txt` — shell setup instructions for Turbomole environment variables and path exports.
- `tm_sch3/` — Turbomole calculations for Cu–SCH3 complexes.
- `tm_tutorials/` — Turbomole tutorial exercise directories used to practice or reproduce workflows.

### turbmole/tm_sch3

This subfolder contains a small set of Cu–SCH3 calculation directories.

- `1_Cu2C2H6S2/` — first system in the series, with subfolders such as `input/`, `exci_adc2/`, and `jobex_cc2/` for input, ADC(2) excited states, and CC2 job execution files.
- `2_Cu3C2H6S2/`, `3_Cu4C3H9S3/`, `4_Cu5C4H12S4/` — larger cluster directories for the same line of calculations.

Each case stores a complete job workspace, including input decks, outputs, and staging directories for Turbomole calculations.

### turbmole/tm_tutorials

This is the tutorial library of the Turbomole installation. It is divided into numbered directories from `1` to `24`, plus a `!screenshots` folder.

- `1`, `2`, `3`, ..., `24` — each tutorial folder contains examples or training problems for different Turbomole tasks.
- Several folders contain `input/` directories with input decks, and some have result logs such as `output.txt`, `results.txt`, `notes.txt`, or a final geometry `final_structure.xyz`.
- `!screenshots/` — screenshot or visual reference material for the tutorial set.

Examples of tutorial content include:

- `2/` — includes `final_structure.xyz` as a final optimized geometry.
- `7/SVP/` — contains `results.txt` from an SVP calculation.
- `10/` — includes job setup folders such as `JOBEX`, `JOBEX_RI-DFT`, `JOBEX_RI-MP2`, and `MAN`.
- `12/` — has `FF_PREOPT` and `NO_PREOPT` directories.
- `17/` — includes `input/` and `numforce/` directories with force-related calculation materials.
- `23/` and `24/` — contain additional numforce and input-based examples.

## File-level notes and conventions

The repository uses a consistent convention for quantum-chemistry studies:

- `*.inp` files: ORCA or Turbomole input decks defining the method, basis set, solvent model, and job type.
- `*.xyz` files: molecular coordinate files for structures and optimized geometries.
- `*_property.txt`: property summaries from ORCA calculations (energies, excited-state data, etc.).
- `*_trj.xyz`: trajectory files from geometry optimization.
- `results.txt`, `output.txt`, `notes.txt`: textual notes or run summaries.

These patterns are repeated throughout the `orca` and `turbomole` folders, indicating that this repository is a collection of computational chemistry calculation archives rather than a code project.
