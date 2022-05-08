# Usage

## With docker

```text
docker build -t pfci:latest .
# Linter
docker run --rm pfci:latest make linter
# Generate PDF
docker run --rm -v %cd%\artifacts:/repo/artifacts pfci:latest make pdf    # Windows
docker run --rm -v $(pwd)\artifacts:/repo/artifacts pfci:latest make pdf  # Linux
```

## Without docker

```text
make linter
make pdf
```
