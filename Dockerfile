FROM python:2-alpine
MAINTAINER "EEA: IDM2 A-Team" <eea-edw-a-team-alerts@googlegroups.com>

ENV PEP8_VERSION=1.7.0

RUN pip install pep8==$PEP8_VERSION

ENTRYPOINT ["pep8"]
CMD ["/code"]
