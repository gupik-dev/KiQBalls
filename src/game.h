#ifndef GAME_H
#define GAME_H

#include <anax/anax.hpp>
#include "systems/rendering_system.h"

class Game
{
public:
    Game(int view_width, int view_height);

    /// Initializes the game
    void init();

    /// Updates the game
    /// \param deltaTime The change in time
    void update(float deltaTime);

    /// Renders the game
    void render();

    void registerEventHandler();

    /// Loads game resources
    void loadResources();

    RenderingSystem& renderSystem() { return m_render_system; }
    int& width_ref() {

private:
    /// Abstraction of bgfx graphics view
    RenderingSystem m_render_system;

    /// An anax entity world
    anax::World m_world;

    /// The movement system
//    MovementSystem m_movementSystem;

//    /// The animation system
//    AnimationSystem m_animationSystem;

    /// The player input system
//    PlayerInputSystem m_playerInputSystem;

    /// The current player
    anax::Entity m_player;

};


#endif // GAME_H
