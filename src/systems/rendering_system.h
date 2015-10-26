#ifndef BGFXSYSTEM_H
#define BGFXSYSTEM_H

#include <bgfx/bgfx.h>
#include <components/camera_component.h>
#include <components/transform_component.h>
#include "window.h"

struct RenderingSystem
{
    Window& m_window;
    uint32_t m_render_flags, m_debug_flags;

    RenderingSystem(Window& window);
    ~RenderingSystem();

    void init();
    void update();
    void setView(const CameraComponent& camera, TransformComponent t);
};

#endif // BGFXSYSTEM_H
