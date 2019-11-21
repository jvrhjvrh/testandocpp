//
// Created by joao on 11/21/19.
//

#include <glfw3.h>
#include <iostream>
#ifndef TESTE_WINDOW_H
#define TESTE_WINDOW_H

#endif //TESTE_WINDOW_H


namespace sparky{
    namespace graphics{
        class Window {
        private:
            const char *m_Title;
            int m_Width, m_Height;
            GLFWwindow *m_Window;
            bool m_Closed;


        public:
            Window(const char *name, int width, int height);
            ~Window();
            bool closed() const;
            void update() const;

        private:
            bool init();
        };
    }
}