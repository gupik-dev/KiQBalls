#ifndef INPUT_SYSTEM_H
#define INPUT_SYSTEM_H

#include "window.h"
#include "base/entry/entry.h"

class InputSystem
{
public:
    InputSystem(Window& window);
    bool processEvents();

private:
    Window& m_window;
    entry::MouseState m_mouse_state;
};

#endif // INPUT_SYSTEM_H
