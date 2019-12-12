#include "src/graphics/window.h"
#include <GL/glew.h>
int main()
{
    double x,y;
    sparky::graphics::Window window("Minha Engine!",960,540);
    glClearColor(0.2f, 0.3f, 0.8f, 1.0f);

    while(!window.closed()){
        window.clear();
        window.getMousePosition(x,y);
        std::cout << x << ' ' << y << std::endl;
        if(window.isKeyPressed(GLFW_KEY_A)){
            std::cout << "Pressed" << std::endl;
        }
        if(window.isMouseButtonPressed(GLFW_MOUSE_BUTTON_LEFT)){
            std::cout << "Pressed" << std::endl;
        }
        glBegin(GL_TRIANGLES);
        glVertex2f(-0.5f, -0.5f);
        glVertex2f(0.0f, 0.5f);
        glVertex2f(0.5f, -0.5f);
        glEnd();
        window.update();
    }

    return 0;
}