/*
 * Copyright 2011-2015 Branimir Karadzic. All rights reserved.
 * License: http://www.opensource.org/licenses/BSD-2-Clause
 */

#include "base/base.h"
#include "base/bgfx_utils.h"
#include "game.h"

int _main_(int /*_argc*/, char** /*_argv*/)
{
    Window window(1280, 720);
    Game game(window);
    auto& rendering = game.renderSystem();

    game.init();

	bgfx::ProgramHandle program = loadProgram("vs_mesh", "fs_mesh");

	Mesh* mesh = meshLoad("meshes/bunny.bin");

    while (!entry::processEvents(&window.m_width, &window.m_height, rendering.m_debug_flags, rendering.m_render_flags))
	{
        bgfx::dbgTextClear();

        rendering.update();

        CameraComponent camera;
        camera.m_fov = 80.f;
        camera.m_near = 1.f;
        camera.m_far = 200.f;
        camera.m_lookat.x = 0.;
        camera.m_lookat.y = 1.;
        camera.m_lookat.z = 0.;

        rendering.setView(camera, TransformComponent(glm::vec3(0.f, 1.f, -2.5f)));

        bgfx::setViewRect(0, 0, 0, window.m_width, window.m_height);

        meshSubmit(mesh, 0, program, 0);

		bgfx::frame();
	}

	meshUnload(mesh);

	bgfx::destroyProgram(program);

	return 0;
}
