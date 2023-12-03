# PISA 2025 -- omegat project administration on AWS

A few scripts for different tasks... For now, just TM management. 

## TM management

The script `prune_tmx_files` is meant to lift or drop TMs depending on whether they apply for the batch(es) being currently translated. It checks the domains associated to the batch folders currently mapped in the team project, assess whether TMX files in the project are associated with those domains and lifts them or drops them accordingly.

Lifing the TM means moving the TMX file to `/tm/auto` or `/tm/enforce`, depending on the requirement of the project, specified by the PM. Dropping the TM means moving the TMX file to `/tm/penalty-XX` (where XX is a pre-defined penalty -- 05 by default, which means that a 100% match will have a score of 95%, and auto-population is therefore not possible).

The script (either in Python or Node.js versions) is meant to run in the repository: 

- the Python version is meant to run in a lambda function in AWS
- the Node.js version is meant to be integrated in ACER's workflow manager application.

The original Groovy version would run in the background when the OmegaT project loads and has a different logic (it deletes disallowed files rather than dropping them) but fails to fulfil the need because the TMX files have already been read when they get deleted.