# PISA 2025 -- omegat project administration on AWS

A few scripts for different tasks... For now, just TM management. 

## TM management

### Arrange TMX files

The script `arrange_tmx_files*` are meant to activate or deactivate TMs depending on whether they apply for the batch(es) being currently translated. It checks the batch folders currently mapped in the team project and their domain, assess whether TMX files in the project are associated with those domains or batches and activates or deactivates them accordingly. 

Trend TMs (i.e. TMX files under parent folder `trend`) are checked against the **domain** (e.g. SCI, MAT, REA, QQS, QQA), whereas step TMs (i.e. TMX files under parent folders `prev` or `next` ) are checked against the batch name.

#### With penalty

This version works  by applying or lifting a penalty.

The principle is simple: activating the TM means moving the TMX file to `/tm/auto` or `/tm/enforce`, depending on the requirement of the project, specified by the PM. Deactivating the TM means moving the TMX file to `/tm/penalty-XX` (where XX is a pre-defined penalty -- 100 by default, which means that a 100% match will have a score of 0%, affecting both auto-population and match results).

If a TMX file is active and does not correspond to the current domain/batch (or one of the current domains/batches), it gets deactivated by adding the penalty folder in its path, hence moving the file. Hence, active file:

	tm/auto/prev/file.tmx

will become inactive like so:

	tm/penalty-100/auto/prev/file.tmx


Vice versa, if a TMX file is inactive and does correspond to the current domain/batch (or one of the current domains(batches)), it gets activated by removing the penalty folder from its path, hence moving the file. Hence, inactive file:

	tm/penalty-100/auto/prev/file.tmx

will become active like so:

	tm/auto/prev/file.tmx


### With idle extension

This version works by adding or removing a dummy file extension. 

The principle is simple: deactivating the TM means adding the `.idle` extension to the TMX file, without changing its location, whereas activating the TM means removing the `.idle` extension from the TMX file. The added extension does not allow OmegaT to see those files.

If a TMX file is active and does not correspond to the current domain/batch (or one of the current domains/batches), it gets deactivated by appendign the idle extension to the file namee. Hence, active file:

	tm/auto/prev/file.tmx

will become inactive like so:

	tm/auto/prev/file.tmx.idle

Vice versa, if a TMX file is inactive and does correspond to the current domain/batch (or one of the current domains/batches), it gets activated by removing the idle extension from the file name. Hence, inactive file:

	tm/auto/prev/file.tmx.idle

will become active like so:

	tm/auto/prev/file.tmx


### Variants

The script (either in Python or Node.js versions) is meant to run in the repository: 

- the Python version is meant to run in a lambda function in AWS
- the Node.js version is meant to be integrated in ACER's workflow manager application.

OUTDATED: The original Groovy version would run in the background when the OmegaT project loads and has a different logic (it deletes disallowed files rather than deactivating them) but fails to fulfil the need because the TMX files have already been read when they get deleted.

### Prune TMX content 

WIP