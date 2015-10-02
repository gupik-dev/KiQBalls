--
-- Copyright 2010-2015 Branimir Karadzic. All rights reserved.
-- License: http://www.opensource.org/licenses/BSD-2-Clause
--

newoption {
	trigger = "with-amalgamated",
	description = "Enable amalgamated build.",
}

newoption {
	trigger = "with-ovr",
	description = "Enable OculusVR integration.",
}

newoption {
	trigger = "with-shared-lib",
	description = "Enable building shared library.",
}

solution "game"
	configurations {
		"Debug",
		"Release",
	}

	if _ACTION == "xcode4" then
		platforms {
			"Universal",
		}
	else
		platforms {
			"x32",
			"x64",
--			"Xbox360",
			"Native", -- for targets where bitness is not specified
		}
	end
	language "C++"

PROJECT_DIR = path.getabsolute("..")

local PROJECT_BUILD_DIR = path.join(PROJECT_DIR, ".build")
local PROJECT_THIRD_PARTY_DIR = path.join(PROJECT_DIR, "libs")
BX_DIR = path.join(PROJECT_THIRD_PARTY_DIR, "bx")
BGFX_DIR = path.join(PROJECT_THIRD_PARTY_DIR, "bgfx")

defines {
	"BX_CONFIG_ENABLE_MSVC_LEVEL4_WARNINGS=1"
}

dofile (path.join(BX_DIR, "scripts/toolchain.lua"))
if not toolchain(PROJECT_BUILD_DIR, PROJECT_THIRD_PARTY_DIR) then
	return -- no action specified
end

function copyLib()
end

dofile "bgfx.lua"
bgfxProject("", "StaticLib", {})

dofile "game.lua"
