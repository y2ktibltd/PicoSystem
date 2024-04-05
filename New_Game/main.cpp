#include "picosystem.hpp"
#include <stdlib.h>
    
using namespace picosystem;

int RND_MAX = 240 + 1;
int i;
int x;
int y;

void rnd() {
    i = rand() % RND_MAX;
    x = rand() % RND_MAX;
    y = rand() % RND_MAX;
}

void init() {
}

void update(uint32_t tick) {
}

void draw(uint32_t tick) {
    pen(0,0,0);
    sleep(50);
    clear();
    rnd();
    sprite(i,x/2,y/2);
}
