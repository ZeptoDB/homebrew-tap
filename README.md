# ZeptoDB Homebrew Tap

Official [Homebrew](https://brew.sh) formulae for [ZeptoDB](https://github.com/ZeptoDB/ZeptoDB) — ultra-low latency in-memory time-series database.

## Install

```bash
brew tap zeptodb/tap
brew install zeptodb
```

## Binaries included

| Binary | Description |
|--------|-------------|
| `zeptodb` | CLI REPL (SQL shell) |
| `zepto_http_server` | HTTP/REST server (ClickHouse-compatible port 8123) |
| `zepto_data_node` | Data node for multi-node clusters |
| `zepto_flight_server` | Arrow Flight + HTTP dual server |

## Supported platforms

- Linux x86_64 (amd64)
- Linux arm64 (Graviton, Apple Silicon via Rosetta)

## Update

```bash
brew update
brew upgrade zeptodb
```

## Formula auto-update

The formula is automatically updated when a new ZeptoDB release is published via GitHub Actions.
