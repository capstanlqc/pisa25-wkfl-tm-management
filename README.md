# PISA 2025 -- omegat project administration on AWS

A few scripts for different tasks... For now, just TM management. 

## TM management

### Arrange TMX files with penalty

The script `arrange_tmx_files` is meant to activate or deactivate TMs depending on whether they apply for the batch(es) being currently translated. It checks the domains associated to the batch folders currently mapped in the team project, assess whether TMX files in the project are associated with those domains and batches and activates or deactivates them accordingly. 

Trend TMs (i.e. TMX files under parent folder `trend`) are checked against the domain, whereas step TMs (i.e. TMX files under parent folders `prev` or `next` ) are checked against the batch.

The principle is simple: activating the TM means moving the TMX file to `/tm/auto` or `/tm/enforce`, depending on the requirement of the project, specified by the PM. Deactivating the TM means moving the TMX file to `/tm/penalty-XX` (where XX is a pre-defined penalty -- 100 by default, which means that a 100% match will have a score of 0%, affecting both auto-population and match results).

If a TMX file is active and does not correspond to the current domain (or one of the current domains), it gets deactivated by adding the penalty folder in its path, hence moving the file. Hence, for domain `bar`:

	tm/auto/foo/file.tmx
	tm/enforce/foo/file.tmx

become

	tm/penalty-10/auto/foo/file.tmx
	tm/penalty-10/enforce/foo/file.tmx

Vice versa, if a TMX file is inactive and does correspond to the current domain (or one of the current domains), it gets activated by removing the penalty folder from its path, hence moving the file. Hence, for domain `bar`:

	tm/penalty-10/auto/foo/file.tmx
	tm/penalty-10/enforce/foo/file.tmx

become 

	tm/auto/foo/file.tmx
	tm/enforce/foo/file.tmx

### Variants

The script (either in Python or Node.js versions) is meant to run in the repository: 

- the Python version is meant to run in a lambda function in AWS
- the Node.js version is meant to be integrated in ACER's workflow manager application.

OUTDATED: The original Groovy version would run in the background when the OmegaT project loads and has a different logic (it deletes disallowed files rather than deactivating them) but fails to fulfil the need because the TMX files have already been read when they get deleted.

### Prune TMX content 

WIP