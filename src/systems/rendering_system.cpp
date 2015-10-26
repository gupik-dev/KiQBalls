#include <bx/fpumath.h>

#include "rendering_system.h"
#include "base/utils.h"

RenderingSystem::RenderingSystem(Window& window):
    m_window(window)
{
    m_debug_flags = BGFX_DEBUG_TEXT;
    m_render_flags = BGFX_RESET_NONE;
}

void RenderingSystem::init()
{
    bgfx::init();
    bgfx::setDebug(m_debug_flags);

    // Set view 0 clear state.
    bgfx::setViewClear(0
        , BGFX_CLEAR_COLOR|BGFX_CLEAR_DEPTH
        , 0x303030ff
        , 1.0f
        , 0
        );

    bgfx::reset(m_window.m_width, m_window.m_height, m_render_flags);
}

void RenderingSystem::update()
{
    bgfx::setViewRect(0, 0, 0, m_window.m_width, m_window.m_width);
}

void RenderingSystem::setView(const CameraComponent& camera, TransformComponent t)
{
    float at[3];
    toArray(at, camera.m_lookat);

    float eye[3];
    toArray(eye, t.pos());

    float view[16];
    bx::mtxLookAt(view, eye, at);

    auto aspect_ratio = camera.m_aspect ? camera.m_aspect : m_window.aspect();

    float proj[16];
    bx::mtxProj(proj, camera.m_fov, aspect_ratio, camera.m_near, camera.m_far);
    bgfx::setViewTransform(0, view, proj);
}

RenderingSystem::~RenderingSystem() {
    bgfx::shutdown();
}



