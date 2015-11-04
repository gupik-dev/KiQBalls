#ifndef BGFXSYSTEM_H
#define BGFXSYSTEM_H

#include <bgfx/bgfx.h>
#include <components/camera_component.h>
#include <components/transform_component.h>
#include <anax/Entity.hpp>

#include "window.h"

struct ViewSystem
{
    Window& m_window;
    uint32_t m_render_flags, m_debug_flags;

    ViewSystem(Window& window);
    ~ViewSystem();

    void init();
    void update();
    void setCamera(anax::Entity& camera);

private:
    void updateCamera();

    anax::Entity m_camera;
};

#endif // BGFXSYSTEM_H
