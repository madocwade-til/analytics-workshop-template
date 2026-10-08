# staging_workshop_repo

A dbt workshop scaffold for declaring Snowflake sources and developing staging models. The instructor supplies the raw data in Snowflake; this repository contains no dataset.

## Repository contents

| Path | Purpose |
| --- | --- |
| `dbt_project.yml` | Project name, blank profile, resource paths, and default view materialization. |
| `models/staging/workshop/` | Source declarations, staging SQL, and model documentation/test templates. |
| `analyses/` | Exploratory SQL that dbt can compile without creating models. |
| `tests/` | Singular SQL data tests; column tests belong in model YAML. |
| `seeds/` | Optional small CSV reference datasets. |
| `macros/` | Reusable Jinja/SQL macros. |
| `snapshots/` | Historical tracking definitions. |
| `docs/` | Optional dbt documentation blocks. |
| `profiles.yml.example` | Snowflake connection template; actual credentials stay outside Git. |
| `.devcontainer/` | GitHub Codespaces environment that installs dbt Core and dbt-snowflake. |
| `requirements.txt` | Python dependencies for local development and Codespaces. |
| `packages.yml` | Empty optional dbt package list. |

## Participants: local setup

Install Git and Python 3.11, clone the repository, and open its root in VS Code:

```sh
git clone https://github.com/<OWNER>/staging_workshop_repo.git
cd staging_workshop_repo
python -m venv .venv
```

Activate the virtual environment:

```powershell
# Windows PowerShell
.\.venv\Scripts\Activate.ps1
```

```sh
# macOS / Linux
source .venv/bin/activate
```

Install the command-line tools:

```sh
python -m pip install -r requirements.txt
```

Create a new profile in your profiles.yml file. Fill in the Snowflake values and your authentication details. Set `profile:` to match the top-level key in your profile.

The profile's database and schema specify where dbt creates your views. The source YAML specifies where dbt reads the instructor's raw tables.
