cmake_minimum_required(VERSION 3.24)

project(CUDAKernels
    VERSION 0.1.0
    LANGUAGES CXX CUDA
)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_CUDA_STANDARD 17)
set(CMAKE_CUDA_STANDARD_REQUIRED ON)

# NVIDIA RTX 3050 (Ampere, compute capability 8.6)
set(CMAKE_CUDA_ARCHITECTURES 86)

add_executable(cuda_info
    src/cuda_info.cu
)
