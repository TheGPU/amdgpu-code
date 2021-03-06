#include<iostream>
#include<time.h>
#include<sys/time.h>
#include<hip/hip_runtime.h>
#include<hip/hip_runtime_api.h>
#include<iostream>

#define fileName "fmul.2.co"
#define kernelName "DoFMul"

#define CU_COUNT 36

#define USECPSEC 1000000ULL
#define ITER 1024*1024*128
#define WI 64
#define WG 40*CU_COUNT
#define SIZE WI<<2

#define VAL 0x35553555

unsigned long long dtime_usec(unsigned long long start){
  timeval tv;
  gettimeofday(&tv, 0);
  return ((tv.tv_sec*USECPSEC)+tv.tv_usec)-start;
}

int main() {
  float *Ah, *Bh;
  hipDeviceptr_t Ad, Bd;
  Ah = new float[WI];
  Bh = new float[WI];

  for(unsigned i=0;i<WI;i++) {
    Ah[i] = VAL;
    Bh[i] = 0;
  }

  hipInit(0);
  hipDevice_t device;
  hipCtx_t context;
  hipDeviceGet(&device, 0);
  hipCtxCreate(&context, 0, device);
  hipModule_t Module;
  hipFunction_t Function;

  hipMalloc((void**)&Ad, SIZE);
  hipMalloc((void**)&Bd, SIZE);

  hipMemcpyHtoD(Ad, Ah, SIZE);
  hipMemcpyHtoD(Bd, Bh, SIZE);

  hipModuleLoad(&Module, fileName);
  hipModuleGetFunction(&Function, Module, kernelName);

  struct {
    void *Ad;
    void *Bd;
  } args;

  args.Ad = Ad;
  args.Bd = Bd;

  size_t size = sizeof(args);

  void *config[] = {
    HIP_LAUNCH_PARAM_BUFFER_POINTER, &args,
    HIP_LAUNCH_PARAM_BUFFER_SIZE, &size,
    HIP_LAUNCH_PARAM_END
  };

  unsigned long long dt = dtime_usec(0);
  hipModuleLaunchKernel(Function, WG,1,1, WI,1,1, 0, 0, NULL, (void**)&config);
  hipDeviceSynchronize();

  dt = dtime_usec(dt);
  unsigned long long ops = ITER;
  ops *= WI;
  ops *= WG;

  float et = dt/(float)USECPSEC;
  unsigned long long Mops = ops/1000000;
  std::cout<<et<<"s for "<<Mops<<" Float MULs"<<std::endl;
  float tp = (Mops) / (et*1000000);
  std::cout<<"Throughput: "<<tp<<" Tops/s"<<std::endl;
}
