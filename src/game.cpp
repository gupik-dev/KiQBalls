#include "game.h"

Game::Game(Window& window)
    : m_window(window),
      m_view_system(window)
{
    m_camera = m_world.createEntity();

    auto &camera = m_camera.addComponent<CameraComponent>();
    camera.m_fov = 80.f;
    camera.m_near = 1.f;
    camera.m_far = 200.f;
    camera.m_lookat.x = 0.;
    camera.m_lookat.y = -1.f;
    camera.m_lookat.z = 2.5f;

    m_camera.addComponent<TransformComponent>(glm::vec3(-0.5f, 1.f, -3.5f));
    m_view_system.setCamera(m_camera);
}

void Game::step(double t, double dt)
{
}

void Game::update()
{
    m_view_system.update();
}

void Game::init()
{
    m_view_system.init();
}

