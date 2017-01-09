#include<stdio.h>

//#include<stdlib.h>

//#include<cuda.h>

#include<cuda_runtime.h>//提供了时间计算的功能函数



__global__ void helloFromGPU(void)
{
	printf("Hello World from GPU!\n");
}
int main()
{
	printf("Hello world from CPU!\n");
	helloFromGPU <<<2,10>>>();
	cudaDeviceReset();
	return 0;

}