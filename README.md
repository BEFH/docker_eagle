# Eagle docker container

This is a repo that contains the code for a docker container with the phasing tool Eagle.

The original repositories can be found at https://github.com/poruloh/Eagle

## Installation

To install the container, run the following using docker:

```bash
docker pull befh/eagle
```

or the following with singularity:

```bash
singularity pull --name eagle.img docker://befh/eagle:latest
```

To use with Snakemake, you do not need to install. Just put the following in the Snakefile:

```
container: 'docker://befh/eagle:latest'
```

Then run with `snakemake --use-singularity` see https://snakemake.readthedocs.io/en/stable/snakefiles/deployment.html for more info.

## Usage

To run with docker, `docker run eagle [ARGS]`.

To run with singularity, `singularity run eagle.img [ARGS]`.

To access tools other than bcftools, open a shell.
