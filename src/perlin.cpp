#include <math.h>
#include <sys/util.h>
#include <debug.h>

void perlinInit(uint24_t seed);
int24_t fade(int24_t t);
int24_t lerp(int24_t t, int24_t a, int24_t b);
int24_t grad(uint8_t hash, int24_t x, int24_t y);
uint8_t perlin2d(uint24_t x, uint24_t y);

uint8_t perm[512] = {0};

void perlinInit(uint24_t seed) {
    uint24_t j;
    srandom(seed);

    for (j = 0; j < 256; j++) {
        perm[j] = (uint8_t)j;
    }

    //Fisher-Yates shuffle :)
    for (j = 255; j > 0; j--) {
        uint8_t k = randInt(0, j);
        uint8_t tmp = perm[j];
        perm[j] = perm[k];
        perm[k] = tmp;
    }

    for (j = 0; j < 256; j++) {
        dbg_printf("%u\n",perm[j]);
        perm[256 + j] = perm[j];
    }
    dbg_printf("%u\n",seed);
}


int24_t fade(int24_t t) {
    int24_t a = (t * 6) - 3840;
    int24_t b = ((t * a) >> 8) + 2560;
    int24_t c = (t * b) >> 8;
    c = (t * c) >> 8;
    c = ((t * c) + 128) >> 8;
    return c;
}

int24_t lerp(int24_t t, int24_t a, int24_t b) {
    return a + ((t * (b - a)) >> 8);
}

int24_t grad(uint8_t hash, int24_t x, int24_t y) {
    // use lowest 3 bits to pick one of 8 gradient directions
    switch (hash & 7) {
        case 0: return  x + y;
        case 1: return  x - y;
        case 2: return -x + y;
        case 3: return -x - y;
        case 4: return  x;
        case 5: return -x;
        case 6: return  y;
        default: return -y;
    }
}

uint8_t perlin2d(uint24_t x, uint24_t y) {
    uint8_t xi = (x >> 8) & 0xFF;
    uint8_t yi = (y >> 8) & 0xFF;
    uint24_t xf = x & 0xFF;  
    uint24_t yf = y & 0xFF;  

    int24_t u = fade(xf);
    int24_t v = fade(yf);

    uint24_t aa = perm[perm[xi]     + yi];
    uint24_t ab = perm[perm[xi]     + yi + 1];
    uint24_t ba = perm[perm[xi + 1] + yi];
    uint24_t bb = perm[perm[xi + 1] + yi + 1];

    int24_t x1 = lerp(u, grad(aa, xf,   yf),   grad(ba, xf-256, yf));
    int24_t x2 = lerp(u, grad(ab, xf,   yf-256), grad(bb, xf-256, yf-256));

    return lerp(v, x1, x2) & 0xFF;
}