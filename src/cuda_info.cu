#include <cuda_runtime.h>
#include <iostream>

int main() {
    int device_count = 0;

    cudaError_t error = cudaGetDeviceCount(&device_count);

    if (error != cudaSuccess) {
        std::cerr << "CUDA error: "
                  << cudaGetErrorString(error) << '\n';
        return 1;
    }

    std::cout << "CUDA devices found: "
              << device_count << '\n';

    for (int i = 0; i < device_count; ++i) {
        cudaDeviceProp prop{};

        error = cudaGetDeviceProperties(&prop, i);

        if (error != cudaSuccess) {
            std::cerr << cudaGetErrorString(error) << '\n';
            return 1;
        }

        std::cout << "GPU: " << prop.name << '\n';
        std::cout << "Compute capability: "
                  << prop.major << '.' << prop.minor << '\n';
        std::cout << "Global memory: "
                  << prop.totalGlobalMem / (1024 * 1024)
                  << " MiB\n";
    }

    return 0;
}
