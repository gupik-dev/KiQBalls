#ifndef WINDOW_H
#define WINDOW_H

#include <vector>
#include <bx/uint32_t.h>

class Window;

class ResizeEventListener {
public:
    virtual void onWindowResize(Window* window) = 0;
};

class Window
{
    uint32_t m_width, m_height;
    std::vector<ResizeEventListener*> m_resize_listeners;

public:
    Window(uint32_t width, uint32_t height);
    float aspect() { return (float)m_width/(float)m_height; }

    uint32_t width() { return m_width; }
    uint32_t height() { return m_height; }
    void addResizeListener(ResizeEventListener* listener) { m_resize_listeners.push_back(listener); }

    void setSize(uint32_t width, uint32_t height);
};

#endif // WINDOW_H
