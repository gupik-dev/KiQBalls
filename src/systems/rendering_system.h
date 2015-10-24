#ifndef BGFXSYSTEM_H
#define BGFXSYSTEM_H

#include <bgfx/bgfx.h>
#include <components/camera_component.h>
#include <components/transform_component.h>

struct RenderingSystem
{
    int m_width, m_height;
    uint32_t m_render_flags, m_debug_flags;

    RenderingSystem(int width, int height);
    ~RenderingSystem();

    void init();
    void setView(const CameraComponent& camera, TransformComponent t);
};

#endif // BGFXSYSTEM_H
