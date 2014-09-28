#include "cust_aal.h"

int lcmCnt = 1;

struct CUST_AAL_ALS_DATA aALSCalData =
{
    // als
    {0, 386, 631, 1430, 4471, 5258, 8617, 16598, 20770, 24870, 38843, 47976},
    // lux
    {0, 301, 500, 1002, 2001, 3006, 5007, 8006, 10010, 12010, 16010, 20010}
};

struct CUST_AAL_LCM_DATA aLCMCalData[] =
{
    // LCM 0
    {
        {
              0.43,   0.61,   1.21,   2.60,   5.90,   9.26,  14.21,  18.86,  25.56,  33.04,
             42.39,  50.64,  61.00,  71.34,  85.08,  95.42, 109.84, 125.11, 142.18, 159.55,
            178.12, 198.98, 219.35, 241.10, 263.97, 286.73, 309.32, 333.74, 360.63, 388.00,
            414.52, 449.07, 476.39
        },
    }
};

struct CUST_AAL_PARAM aAALParam[] =
{
    // LCM 0    
    { 5, 2, 5, 5, 0, 5 },
};

