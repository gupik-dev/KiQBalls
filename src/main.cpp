/*
 * Copyright 2011-2015 Branimir Karadzic. All rights reserved.
 * License: http://www.opensource.org/licenses/BSD-2-Clause
 */

#include "base/base.h"
#include "base/bgfx_utils.h"
#include "game.h"
#include "frame_timer.h"

int _main_(int /*_argc*/, char** /*_argv*/)
{
    Window window(1280, 720);
    Game game(window);
    FrameTimer f_timer(&game, 0.01);

    game.init();

    bgfx::ProgramHandle program = loadProgram("vs_mesh", "fs_mesh");

    Mesh* mesh = meshLoad("meshes/bunny.bin");

    while (!game.inputSystem().processEvents())
    {
        bgfx::dbgTextClear();

        f_timer.update();
        game.update();

        meshSubmit(mesh, 0, program, 0);

        bgfx::frame();
    }

    meshUnload(mesh);

    bgfx::destroyProgram(program);

    return 0;
}
