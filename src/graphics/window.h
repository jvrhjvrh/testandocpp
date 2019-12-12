//
// Created by joao on 11/21/19.
//
#include <GL/glew.h>
#include <glfw3.h>
#include <iostream>
#ifndef TESTE_WINDOW_H
#define TESTE_WINDOW_H

#endif //TESTE_WINDOW_H
#define MAX_KEYS 1024
#define MAX_BUTTONS 32

namespace sparky{
    namespace graphics{
        class Window {
        private:
            const char *m_Title;
            int m_Width, m_Height;
            GLFWwindow *m_Window;
            bool m_Closed;

            static bool m_Keys[MAX_KEYS];
            static bool m_MouseButtons[MAX_BUTTONS];
            static double mx, my;
        public:
            Window(const char *name, int width, int height);
            ~Window();
            int closed() const;
            void update();
            void clear() const;

            inline int getWidth() const { return m_Width; };
            inline int getHeight() const { return m_Height; };

            static bool isKeyPressed(unsigned int keycode);
            static bool isMouseButtonPressed(unsigned int keycode);
        private:
            bool init();
            friend void key_callback(GLFWwindow *window, int key, int scancode, int action, int mods);
        };
    }
}