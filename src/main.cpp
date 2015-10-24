/*
 * Copyright 2011-2015 Branimir Karadzic. All rights reserved.
 * License: http://www.opensource.org/licenses/BSD-2-Clause
 */

#include "base/base.h"
#include "base/bgfx_utils.h"
#include "game.h"

int _main_(int /*_argc*/, char** /*_argv*/)
{
    Game game(1280, 720);
    auto& render_sys = game.renderSystem();

    game.init();

	// Create program from shaders.
	bgfx::ProgramHandle program = loadProgram("vs_mesh", "fs_mesh");

	Mesh* mesh = meshLoad("meshes/bunny.bin");

    while (!entry::processEvents(render_sys.m_width, render_sys.m_height, render_sys.m_debug_flags, render_sys.m_render_flags))
	{
		// Use debug font to print information about this example.
		bgfx::dbgTextClear();
		bgfx::dbgTextPrintf(0, 1, 0x4f, "bgfx/examples/04-mesh");
		bgfx::dbgTextPrintf(0, 2, 0x6f, "Description: Loading meshes.");
		bgfx::dbgTextPrintf(0, 3, 0x0f, "Frame: % 7.3f[ms]", double(frameTime)*toMs);

        CameraComponent camera;
        camera.m_lookat = glm::vec3(0.0f, 0.0f, -1.f);
        camera.m_fov = 80.f;
        camera.m_near = 1.f;
        camera.m_far = 100.f;

        render_sys.setView(camera, TransformComponent(0.f, 0.5f, 2.5f));

        float at[3]  = { 0.0f, 0.0f,  -1.f };
        float eye[3] = { 0.0f, 0.5f, 2.5f };

        float view[16];
        bx::mtxLookAt(view, eye, at);

        float proj[16];
        bx::mtxProj(proj, 80.0f, float(width)/float(height), 1.f, 100.f);
        bgfx::setViewTransform(0, view, proj);

        // Set view 0 default viewport.
        bgfx::setViewRect(0, 0, 0, width, height);

        meshSubmit(mesh, 0, program, 0);

		// Advance to next frame. Rendering thread will be kicked to
		// process submitted rendering primitives.
		bgfx::frame();
	}

	meshUnload(mesh);

	// Cleanup.
	bgfx::destroyProgram(program);

//	bgfx::destroyUniform(u_time);

	// Shutdown bgfx.
	bgfx::shutdown();

	return 0;
}
