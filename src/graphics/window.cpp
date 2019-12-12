//
// Created by joao on 11/21/19.
//

#include "window.h"

namespace sparky{
    namespace graphics{

        void window_resize(GLFWwindow *window, int width, int height);
        void error_callback(int error, const char* description);

        void key_callback(GLFWwindow *window, int key, int scancode, int action, int mods);
        void mouse_button_callback(GLFWwindow *window, int button, int action, int mods);
        void cursor_position_callback(GLFWwindow *window, double xpos, double ypos);

        Window::Window(const char *title, int width, int height) {
            mx = 0;
            my = 0;
            m_Title = title;
            m_Width = width;
            m_Height = height;

            if(!init()){
                glfwTerminate();
            }

            for (int i = 0; i < MAX_KEYS; i++){
                m_Keys[i] = false;
            }

            for(int i = 0; i< MAX_BUTTONS; i++){
                m_MouseButtons[i] = false;
            }
        }

        Window::~Window() {
            glfwTerminate();
        }

        bool Window::init() {
            glfwSetErrorCallback(error_callback);
            if(!glfwInit()){
                std::cout << glfwGetError(nullptr) << std::endl;
                return false;
            }
            m_Window = glfwCreateWindow(m_Width, m_Height, m_Title, nullptr, nullptr);
            if(!m_Window){
                std::cout << "Failed to create GLFW window!" << std::endl;
                return false;
            }
            glfwMakeContextCurrent(m_Window);
            glfwSetWindowUserPointer(m_Window, this);
            glfwSetWindowSizeCallback(m_Window, window_resize);
            glfwSetMouseButtonCallback(m_Window, mouse_button_callback);
            glfwSetKeyCallback(m_Window, key_callback);
            glfwSetCursorPosCallback(m_Window, cursor_position_callback);

            if(glewInit() != GLEW_OK){
                std::cout << "Failed to initialize GLEW!" << std::endl;
                return false;
            }

            std::cout << "OpenGL " << glGetString(GL_VERSION) << std::endl;

            return true;

        }

        int Window::closed() const {
            return  glfwWindowShouldClose(m_Window);
        }

        void Window::clear() const {
            glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

        }

        void Window::update() {

            glfwPollEvents();
            glfwSwapBuffers(m_Window);

        }

        void Window::getMousePosition(double& x, double& y) const {
            x = mx;
            y = my;
        }

        bool Window::isKeyPressed(unsigned int keycode) const {

            //TODO: LOG THIS
            if(keycode >= MAX_KEYS)
                return false;

            return m_Keys[keycode];
        }

        bool Window::isMouseButtonPressed(unsigned int button) const {
            //TODO: LOG THIS
            if(button >= MAX_BUTTONS)
                return false;

            return m_MouseButtons[button];
        }

        void window_resize(GLFWwindow *window, int width, int height){
            glViewport(0,0, width, height);
        }
        void error_callback(int error, const char *description){
            fprintf(stderr, "Error: %s\n", description);
        }

        void key_callback(GLFWwindow *window, int key, int scancode, int action, int mods){
            auto *win = (Window *)glfwGetWindowUserPointer(window);
            win->m_Keys[key] = action != GLFW_RELEASE;
        }

        void mouse_button_callback(GLFWwindow *window, int button, int action, int mods){
            auto *win = (Window *)glfwGetWindowUserPointer(window);
            win->m_MouseButtons[button] = action != GLFW_RELEASE;
        }

        void cursor_position_callback(GLFWwindow *window, double xpos, double ypos) {
            auto *win = (Window *)glfwGetWindowUserPointer(window);
            win->mx = xpos;
            win->my = ypos;
        }

    }
}