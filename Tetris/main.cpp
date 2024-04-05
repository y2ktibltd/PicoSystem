#include "picosystem.hpp"
#include <cstdlib>
#include <ctime>

using namespace picosystem;

int x = rand()%115 + 1;
int y = rand()%115 + 1;
rand(0);
int x_movement = rand()%1 ? -1 : 1;
int y_movement = rand()%1 ? -1 : 1;

void init() {
}

void update(uint32_t tick) {
    if (x>115)
    {
        x_movement = -1;
    }
    if (x < 5)
    {
        x_movement = 1;
    }
    x += x_movement;
    
    if (y>115)
    {
        y_movement = -1;
    }
    if (y < 5)
    {
        y_movement = 1;
    }
    y += y_movement;
}

void draw(uint32_t tick) {
    pen(0,0,0);
    clear();
    pen(255,255,0);
    fcircle(x,y,5);
}
