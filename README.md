# CUDA Kernels from Scratch

An educational project exploring GPU programming through native
CUDA C++. Learn, implement, test, and benchmark GPU kernels from
first principles.

## Learning Roadmap

- [ ] Vector addition and thread indexing
- [ ] Element-wise operations and launch configuration
- [ ] Parallel reductions and synchronization
- [ ] Matrix multiplication and tiling
- [ ] GPU memory hierarchy and optimization
- [ ] Neural network operations
- [ ] Correctness and numerical error analysis
- [ ] Benchmarking against CPU and PyTorch

## Repository Structure

- `kernels/` — CUDA kernel implementations
- `tests/` — correctness tests
- `benchmarks/` — performance experiments and results
- `docs/` — theory, derivations, and implementation notes
- `python/` — Python comparisons and integrations

## Development Tools

- C++ and NVIDIA CUDA C++
- NVIDIA CUDA Toolkit
- CMake
- Git

## Project Principles

1. Understand the theory before optimizing.
2. Verify correctness against reference implementations.
3. Measure performance with reproducible benchmarks.
4. Document trade-offs and limitations.
5. Never claim speedups without measurements.

## Status

Early development. The first milestone is a working CUDA kernel
with correctness tests and a reproducible benchmark.

## License

This project is intended to use the MIT License.
