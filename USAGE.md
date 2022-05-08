# Usage

## With docker

```text
docker build -t pfci:latest .
# Linter
docker run --rm pfci:latest make linter
# Generate PDF
docker run --rm -v %cd%\artifacts:/repo/artifacts pfci:latest make pdf
```

docker run --rm pfci:latest "make pdf &> /dev/null && ls /repos/" > ./artifacts/python-for-coding-interview.pdf

## Without docker

```text
make linter
make pdf
```
