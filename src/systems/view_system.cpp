#include <bx/fpumath.h>

#include "base/utils.h"
#include "view_system.h"
#include "components/camera_component.h"
#include "components/transform_component.h"

ViewSystem::ViewSystem(Window& window):
    m_window(window)
{
    m_debug_flags = BGFX_DEBUG_TEXT;
    m_render_flags = BGFX_RESET_NONE;
}

void ViewSystem::init()
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

    bgfx::reset(m_window.width(), m_window.height(), m_render_flags);
}

void ViewSystem::onWindowResize(Window* window)
{
    bgfx::reset(window->width(), window->height(), m_render_flags);
    if (&m_window != window)
    {
        m_window = *window;
    }
}

void ViewSystem::updateCamera() {
    auto& camera = m_camera.getComponent<CameraComponent>();
    auto& t = m_camera.getComponent<TransformComponent>();

    float at[3];
    toArray(at, t.transform(camera.m_lookat));

    float eye[3];
    toArray(eye, t.pos());

    float view[16];
    bx::mtxLookAt(view, eye, at);

    auto aspect_ratio = camera.m_aspect ? camera.m_aspect : m_window.aspect();

    float proj[16];
    bx::mtxProj(proj, camera.m_fov, aspect_ratio, camera.m_near, camera.m_far);
    bgfx::setViewTransform(0, view, proj);
}

void ViewSystem::update()
{
    bgfx::setViewRect(0, 0, 0, m_window.width(), m_window.height());
    updateCamera();
}

void ViewSystem::setCamera(anax::Entity& camera)
{
    m_camera = camera;
}

ViewSystem::~ViewSystem() {
    bgfx::shutdown();
}



