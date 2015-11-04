#ifndef GAME_H
#define GAME_H

#include <anax/anax.hpp>
#include "systems/view_system.h"
#include "window.h"
#include "frame_timer.h"

class Game: public FramedObj
{
    /// Window settings
    Window& m_window;

    /// Abstraction of bgfx graphics view
    ViewSystem m_view_system;

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

    /// Camera
    anax::Entity m_camera;

public:
    Game(Window& window);

    /// Initializes the game
    void init();

    /// Steps the game simulation
    /// \param t Elapsed time
    /// \param dt The change in time
    void step(double t, double dt);

    /// Update on each frame
    void update();

    /// Renders the game
    void render();

    void registerEventHandler();

    /// Loads game resources
    void loadResources();

    ViewSystem& viewSystem() { return m_view_system; }
    const Window& window() const { return m_window; }
};


#endif // GAME_H
