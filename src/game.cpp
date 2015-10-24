#include "game.h"

Game::Game(int view_width, int view_height)
    : m_render_system(view_width, view_height)
{
}

void Game::init()
{
    m_render_system.init();
}

