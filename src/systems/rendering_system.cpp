#include <bx/fpumath.h>

#include "rendering_system.h"
#include "base/utils.h"

RenderingSystem::RenderingSystem(int width, int height)
{
    m_width = width;
    m_height  = height;
    m_debug_flags = BGFX_DEBUG_TEXT;
    m_render_flags = BGFX_RESET_NONE;
}

void RenderingSystem::init()
{
    bgfx::init();
    bgfx::reset(m_width, m_height, m_render_flags);

    // Enable debug text.
    bgfx::setDebug(m_debug_flags);

    // Set view 0 clear state.
    bgfx::setViewClear(0
        , BGFX_CLEAR_COLOR|BGFX_CLEAR_DEPTH
        , 0x303030ff
        , 1.0f
        , 0
        );

    bgfx::setViewRect(0, 0, 0, m_width, m_height);
}

void RenderingSystem::setView(const CameraComponent& camera, TransformComponent t)
{
    float at[3];
    toArray(at, t.transform(camera.m_lookat));

    float eye[3];
    toArray(eye, t.pos());

    float view[16];
    bx::mtxLookAt(view, eye, at);

    auto aspect_ratio = camera.m_aspect ? camera.m_aspect : float(m_width)/float(m_height);

    float proj[16];
    bx::mtxProj(proj, camera.m_fov, aspect_ratio, camera.m_near, camera.m_far);
    bgfx::setViewTransform(0, view, proj);
}

RenderingSystem::~RenderingSystem() {
    bgfx::shutdown();
}



