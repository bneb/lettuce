# Lettuce

A Redis-compatible server in [Salt](https://github.com/bneb/salt). 314 lines.
Z3-proven bounds on every buffer access.

## Quick Start

```bash
cargo install saltc --git https://github.com/bneb/salt
git clone https://github.com/bneb/lettuce.git
cd lettuce
make
./lettuce
```

Connects on port 6379. Supports: PING, SET, GET, DEL, LPUSH, RPUSH, LPOP, RPOP,
LLEN, LRANGE, HSET, HGET, HGETALL, HDEL.

## Architecture

- kqueue/event loop, 16KB sliding window
- Zero-copy RESP protocol parser
- Arena-backed SwissTable hash map
- Append-Only File persistence
- Z3 contracts on every buffer access (`requires` on all slice/ptr ops)

## License

MIT

## Performance Benchmarks

See [Salt Benchmarks](https://github.com/bneb/salt-benchmarks) for Salt vs C/Rust across 36 algorithm problems.

## Built With

[Salt](https://github.com/bneb/salt) — a systems language with Z3-powered compile-time verification.
