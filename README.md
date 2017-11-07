# Docker image for pep8 checker

[pep8](https://pypi.python.org/pypi/pep8) is a Python style guide checker


## Supported tags and respective `Dockerfile` links

- [`latest` (*Dockerfile*)](https://github.com/eea/eea.docker.pep8/blob/master/Dockerfile)
- [`1.7.0.1` (*Dockerfile*)](https://github.com/eea/eea.docker.pep8/blob/1.7.0.1/Dockerfile)

## Usage

    $ docker run --rm -v /path/to/python/code:/code eeacms/pep8

or

    $ docker run --rm eeacms/pep8 https://github.com/eea/eea.alchemy.git

## Running in jenkins, including pull requests:

* GIT_NAME, GIT_SRC  - must be given
* GIT_BRANCH - defaults to master
* GIT_CHANGE_ID - can be empty or pull request id

    $ docker run -i --rm -e GIT_SRC="https://github.com/eea/$GIT_NAME.git" -e GIT_NAME="$GIT_NAME" -e GIT_BRANCH="$BRANCH_NAME" -e GIT_CHANGE_ID="$CHANGE_ID" eeacms/pep8

## Advanced usage

Exclude files or directories:

    $ docker run --rm -e GIT_SRC="https://github.com/eea/eea.alchemy.git" eeacms/pep8 --exclude=Extensions,skins,tests,api /code

See pep8 `--help` for more options:


    $ docker run --rm eeacms/pep8 --help
