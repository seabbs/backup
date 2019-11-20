# Manage local GitHub backups

This repository contains an approach for dealing with backing up GitHub (and other remotes) locally. **It does not backup local work to remotes.** This approach has been developed for my own use so use with care. Please let me know if you have any suggestions for improvements.

# How it works

* Set up an archive folder (see `example` for pointers). This folder should contain a `projects.sh` file.

* `projects.sh` should contain an array of projects and `base_url` specifying where to pull from (currently this is shared across all projects).

* Modify the `archives.sh` file. This should contain all folders that need to be backed up (from remotes) and that have been setup as above. See `example-archives.sh` for a runnable example.

* (**Optional**) Run the following example bash command to check everything is work. *Warning: This will clone 3 of my repos - you may want to adjust this*.

```bash
bash update.sh example-archives.sh
```

* (**Optional**) Clean up the example.

```bash
mkdir tmp && cp example/projects.sh tmp/projects.sh
rm -r -f example && mv tmp example
```


* Run the following bash command (modifying to use your archives file). This will clone repositories listed in each `projects.sh` when they are not present and otherwise pull new updates.

```bash
bash update.sh archives.sh
```
