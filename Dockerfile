FROM alpine:3.16
RUN apk --no-cache add python3 py3-pip asciidoctor git build-base py3-psutil python3-dev libffi-dev
RUN pip install "Nikola[extras]" python-Levenshtein==0.12.1 pathlib beautifulsoup4 markdown && rm -rf /root/.cache/
WORKDIR /nikola
