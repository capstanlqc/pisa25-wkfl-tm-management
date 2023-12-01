# PISA 2025 -- omegat project administration on AWS

A few scripts for different tasks... For now, just TM management. 

## TM management

The script `prune_tmx_files` is meant to remove TMs that do not apply for the batch(es) being currently translated. It checks what are the domains associated to the batches currently mapped in the team project, assess whether trend TMX files in the project are associated with those domains and removes the rest.

The groovy version runs in OmegaT but fails at removing the files before OmegaT actually loads the project (therefore it's already too late, matches from those TMs might have already been used). The python version is meant to run in a lambda function in AWS. The nodejs version is meant to be integrated in ACER's the workflow manager application.