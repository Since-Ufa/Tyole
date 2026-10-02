# Tyole

This repository is a computational chemistry dataset for copper-containing coordination complexes and related electronic-structure studies. It is organized as a collection of ORCA and Turbomole inputs, optimized structures, property summaries, and supporting benchmark/reference materials rather than as a software package.

The project is centered on Cu–ligand cluster models, especially Cu–cysteine, Cu–glutathione (GSH), and Cu–SCH3 systems, with calculations in both vacuum and aqueous environments.

## Repository structure

- `Articles/` — literature and reference documents relevant to the chemistry and spectroscopy work.
- `orca/` — ORCA jobs for geometry optimization, excited-state calculations, and NBO analysis.
- `turbomole/` — Turbomole setup files, tutorial materials, and example job directories.
- `benchmark.xlsx` — benchmark/analysis spreadsheet.
- `geometry.xlsx` — structural and geometry dataset spreadsheet.
- `servers.txt` — environment or server notes used during the calculations.

## Main folders

### `Articles/`

Reference materials used throughout the project, including papers on copper complexes, ligand systems, and spectroscopy methods.

Examples:
- `Buglak_Prediciting_absorption_spectra_of_silver_ligand_complexes.pdf`
- `chen2012.pdf`
- `gell2013.pdf`
- `jia2013_Cu-GSH+others.pdf`
- `jia2014_Cu-DPA-ESI.pdf`
- `jia2014_Cu-DPA.pdf`
- `Cu-AAs_18032026_colorless.docx`

### `orca/`

The main data archive. The structure is grouped by ligand family and by solvent phase (`vacuum`/`water`).

#### `orca/cys/`

Cu–cysteine models and related ORCA calculations.

- `Cu_Cys2.xyz`, `Cu2_Cys2.xyz`, `Cu3_Cys2.xyz`, `Cu4_Cys3.xyz`, `Cu5_Cys4.xyz`
- `cys.xyz`
- `vacuum/` — gas-phase geometry optimizations and excited-state jobs
- `water/` — solvated analogues of the same workflow

Typical subfolders:
- `geoopt/` — optimization runs and optimized geometries
- `exci_CAM-B3LYP/` — TD-DFT CAM-B3LYP excitation calculations
- `exci_M06-2X/` — alternative excited-state calculations using M06-2X

#### `orca/gsh_ToDoLater/`

GSH-related Cu cluster models kept as a secondary or planned dataset.

- `Cu_Gsh2.xyz`, `Cu2_Gsh2.xyz`, `Cu3_Gsh2.xyz`, `Cu4_Gsh3.xyz`, `Cu5_Gsh4.xyz`, `gsh.xyz`
- `vacuum/` and `water/` branches
- `geoopt/` plus multiple functional-specific excited-state folders such as:
  - `exci_BHandHLYP/`
  - `exci_CAM-B3LYP/`
  - `exci_M06-2X/`
  - `exci_PBE0/`
  - `exci_r2SCAN50/`
  - `exci_wB97X/`

#### `orca/sch3/`

The most extensive ORCA dataset in this repository: Cu–SCH3 systems across multiple cluster sizes.

- `vacuum/` — gas-phase calculations
- `water/` — solvated calculations

Common subfolders:
- `geoopt/` — optimization jobs and optimized coordinate files
- `NBO/` — natural bond orbital analysis
- `exci_BHandHLYP/`, `exci_CAM-B3LYP/`, `exci_CCSD/`, `exci_M06-2X/`, `exci_PBE0/`, `exci_wB97X/`, `exci_wB97X-D3/` — excited-state or correlated calculations by method

### `turbomole/`

Turbomole setup, reference texts, and calculation examples.

- `SettingTurbomole_README.txt` — environment setup notes for Turbomole
- `Turbomole_Manual_7-9.pdf` — local reference manual
- `Tutorial_7-7.pdf` — tutorial PDF
- `tm_sch3/` — Cu–SCH3 Turbomole calculations
- `tm_tutorials/` — numbered tutorial examples from 1 to 24 plus screenshot assets in `!screenshots/`

#### `turbomole/tm_sch3/`

Cu–SCH3 Turbomole job directories, including files such as:
- `input/`
- `exci_adc2/`
- `jobex_cc2/`
- cluster folders like `1_Cu2C2H6S2/`, `2_Cu3C2H6S2/`, etc.

#### `turbomole/tm_tutorials/`

Tutorial benchmark and learning workspace. The folders are grouped numerically and include input decks, job control files, geometry files, and result logs.

Examples:
- `2/`, `10/`, `12/`, `17/`, `23/`, `24/`
- `!screenshots/` — visuals and examples from the tutorial collection

## File conventions

The repository consistently uses quantum-chemistry file patterns such as:

- `*.inp` — ORCA/Turbomole input decks
- `*.xyz` — molecular geometry files
- `*.out` — calculation output logs
- `*_property.txt` — extracted property summaries
- `*_trj.xyz` — optimization trajectories
- `results.txt`, `output.txt`, `notes.txt` — narrative or summary files

## Notes

- This is a data repository, not a codebase in the traditional software sense.
- The main workflow combines geometry optimization, solvent-vs-vacuum comparisons, and excited-state property calculations.
- The current structure reflects the active Cu–ligand datasets and the Turbomole tutorial/job archive used for benchmarking and method practice.
