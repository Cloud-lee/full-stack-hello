#include <stdio.h>
#include <stdint.h>

#include "profiler.h"

static uint32_t exec_instr_cnt = 0;

inline void profiling()
{
#if defined(profile)
    exec_instr_cnt++;
#endif
}

void show_profiling_info()
{
    printf("Instructions: %u\n", exec_instr_cnt);
}

