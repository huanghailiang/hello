//git hello 0
//git hello 1
#include<stdio.h>

//#include<stdlib.h>

//#include<cuda.h>

#include<cuda_runtime.h>//�ṩ��ʱ�����Ĺ��ܺ���



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
//end 1
