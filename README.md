# PISA 2025 -- omegat project administration on AWS

A few scripts for different tasks... For now, just TM management. 

## TM management

The script `arrange_tmx_files` is meant to lift/activate or drop/deactivate TMs depending on whether they apply for the batch(es) being currently translated. It checks the domains associated to the batch folders currently mapped in the team project, assess whether TMX files in the project are associated with those domains and lifts them or drops them accordingly.

This applies only to TMX files under parent folders `prev`, `next` or `trend`.

The principle is simple: Lifing the TM means moving the TMX file to `/tm/auto` or `/tm/enforce`, depending on the requirement of the project, specified by the PM. Dropping the TM means moving the TMX file to `/tm/penalty-XX` (where XX is a pre-defined penalty -- 05 by default, which means that a 100% match will have a score of 95%, and auto-population is therefore not possible).

If a TMX file is lifted/active and does not correspond to the current domain (or one of the current domains), it is dropped/deactivated by adding the penalty folder in its path, hence moving the file. Hence, for domain `bar`:

	tm/auto/foo/file.tmx
	tm/enforce/foo/file.tmx

become

	tm/penalty-10/auto/foo/file.tmx
	tm/penalty-10/enforce/foo/file.tmx

Vice versa, if a TMX file is dropped/inactive and does correspond to the current domain (or one of the current domains), it is lifted/activated by removing the penalty folder from its path, hence moving the file. Hence, for domain `bar`:

	tm/penalty-10/auto/foo/file.tmx
	tm/penalty-10/enforce/foo/file.tmx

become 

	tm/auto/foo/file.tmx
	tm/enforce/foo/file.tmx

### Variants

The script (either in Python or Node.js versions) is meant to run in the repository: 

- the Python version is meant to run in a lambda function in AWS
- the Node.js version is meant to be integrated in ACER's workflow manager application.

The original Groovy version would run in the background when the OmegaT project loads and has a different logic (it deletes disallowed files rather than dropping them) but fails to fulfil the need because the TMX files have already been read when they get deleted.