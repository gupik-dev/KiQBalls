#include "input_system.h"

InputSystem::InputSystem(Window& window):
    m_window(window)
{

}

bool InputSystem::processEvents()
{
    uint32_t width = m_window.width(), height = m_window.height();
    auto stopped = entry::processEvents(&width, &height, &m_mouse_state);
    m_window.setSize(width, height);

    return stopped;
}

