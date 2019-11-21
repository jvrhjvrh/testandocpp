#include "src/graphics/window.h"

int main()
{
    sparky::graphics::Window window("Sparky!",800,600);

    while(!window.closed()){
        window.update();
    }

    return 0;
}