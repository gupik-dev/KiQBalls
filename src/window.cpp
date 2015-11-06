#include "window.h"

Window::Window(uint32_t width, uint32_t height)
{
    m_width = width;
    m_height = height;
}

void Window::setSize(uint32_t width, uint32_t height)
{
    if (width != m_width || height != m_height)
    {
        m_width = width;
        m_height = height;

        for (auto& listener: m_resize_listeners)
        {
            if (listener)
            {
                listener->onWindowResize(this);
            }
        }
    }
}

