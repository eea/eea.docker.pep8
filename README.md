# Docker image for pep8 checker

[pep8](https://pypi.python.org/pypi/pep8) is a Python style guide checker


## Supported tags and respective `Dockerfile` links

- [`latest` (*Dockerfile*)](https://github.com/eea/eea.docker.pep8/blob/master/Dockerfile)
- [`1.7.0` (*Dockerfile*)](https://github.com/eea/eea.docker.pep8/blob/1.7.0/Dockerfile)

## Usage

```console
$ docker run --rm -v /path/to/python/code:/code eeacms/pep8
```

## Advanced usage

Exclude files or directories:

```console
$ docker run --rm -v /path/to/python/code:/code eeacms/pep8 --exclude=skins /code
```

See pep8 `--help` for more options:

```console
$ docker run --rm eeacms/pep8 --help
```
