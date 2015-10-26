#include "game.h"

Game::Game(Window &window)
    : m_window(window),
      m_render_system(window)
{
}

void Game::init()
{
    m_render_system.init();
}

