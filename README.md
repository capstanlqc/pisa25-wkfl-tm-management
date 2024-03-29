# PISA 2025 -- OmegaT team project administration

A few scripts for different tasks... For now, just TM management.

## TM management

### Arrange TMX files

The script `arrange_tmx_files*` is meant to activate or deactivate TMs depending on whether they apply for the batch(es) in the omegat project. It checks the batches currently mapped in the team project and their domain, assess whether each reference TMX file in the TM folder of the project is associated with those domains/batches and activates or deactivates it accordingly.

Trend TMs (i.e. TMX files under parent folder `trend`) are checked against the **domain** (e.g. SCI, MAT, REA, QQS, QQA), whereas batch TMs (i.e. TMX files under parent folders `prev` or `next` ) are checked against the batch name.

#### Approaches:

There are different ways of doing this, namely:

- adding a suffix to the TMX file to disable it, removing that suffix to enable it
- putting the TMX file in a penalty folder to disable it, moving the file out of that penalty folder to enable it

We have chosen the forder approach.

##### With idle extension

This version works by adding or removing a dummy file extension.

The principle is simple: the `.idle` extension does not allow OmegaT to see those files. Hence, adding the `.idle` extension to the TMX file deactivates that TM, whereas removing the `.idle` extension activates the TM.

If a TMX file is active and does not correspond to the current domain/batch (or one of the current domains/batches), it gets deactivated by appendig the idle extension to the file namee. Hence, active TMX files like:

    tm/auto/trend/foo.tmx
    tm/auto/trend/bar.tmx.zip

will become inactive like so:

    tm/auto/trend/foo.tmx.idle
    tm/auto/trend/bar.tmx.zip.idle

Vice versa, if a TMX file is inactive and does correspond to the current domain(s) or batch(es) --which is normally one but there can be more if batches are dequeued--, it gets activated by removing the idle extension from the file name. Hence, inactive file:

    tm/auto/prev/file.tmx.idle

will become active like so:

    tm/auto/prev/file.tmx

##### With penalty

> To be disregarded in favour of the cleaner idle extension approach. Outdated code for this approach only available in the history of this repo.

This version works by applying or lifting a penalty.

The principle is simple: activating the TM means moving the TMX file to `/tm/auto` or `/tm/enforce`, depending on the requirement of the project, specified by the PM. Deactivating the TM means moving the TMX file to `/tm/penalty-XX` (where XX is a pre-defined penalty -- 100 by default, which means that a 100% match will have a score of 0%, affecting both auto-population and match results).

If a TMX file is active and does not correspond to the current domain/batch (or one of the current domains/batches), it gets deactivated by adding the penalty folder in its path, hence moving the file. Hence, active file:

    tm/auto/prev/file.tmx

will become inactive like so:

    tm/penalty-100/auto/prev/file.tmx

Vice versa, if a TMX file is inactive and does correspond to the current domain/batch (or one of the current domains(batches)), it gets activated by removing the penalty folder from its path, hence moving the file. Hence, inactive file:

    tm/penalty-100/auto/prev/file.tmx

will become active like so:

    tm/auto/prev/file.tmx

### Getting started

Clone this repository, and change directory to your local copy:

```
git clone https://github.com/capstanlqc/pisa25-git-omegat-project-admin.git
cd pisa25-git-omegat-project-admin
```

Create a virtual environment and activate it:

```
python3 -m venv venv
source venv/bin/activate
```

Install requirements:

```
pip install -r requirements.txt
```

### Execution

Run as:

```
python3 code/arrange_tmx_files_with_extension.py --repo /path/to/omegat/project/clone
```

### Backlog

Logging
