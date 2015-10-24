######################################################################
# Automatically generated by qmake (3.0) Sun Oct 4 11:27:18 2015
######################################################################

CONFIG += c++11
TEMPLATE = app
TARGET = kiq-qc
INCLUDEPATH +=  src \
                libs/bgfx/include \
                libs/bgfx/3rdparty \
                libs/bgfx/3rdparty/khronos \
                libs/bx/include \
                libs/anax/include \
                libs/glm

LIBS = -lrt -ldl -lX11 -lGL -lpthread

# Input
HEADERS += src/base/aviwriter.h \
           src/base/base.h \
           src/base/bgfx_utils.h \
           src/base/bounds.h \
           src/base/camera.h \
           src/base/cube_atlas.h \
           src/base/packrect.h \
           libs/bgfx/src/bgfx_p.h \
           libs/bgfx/src/charset.h \
           libs/bgfx/src/config.h \
           libs/bgfx/src/fs_clear0.bin.h \
           libs/bgfx/src/fs_clear1.bin.h \
           libs/bgfx/src/fs_clear2.bin.h \
           libs/bgfx/src/fs_clear3.bin.h \
           libs/bgfx/src/fs_clear4.bin.h \
           libs/bgfx/src/fs_clear5.bin.h \
           libs/bgfx/src/fs_clear6.bin.h \
           libs/bgfx/src/fs_clear7.bin.h \
           libs/bgfx/src/fs_debugfont.bin.h \
           libs/bgfx/src/glcontext_eagl.h \
           libs/bgfx/src/glcontext_egl.h \
           libs/bgfx/src/glcontext_glx.h \
           libs/bgfx/src/glcontext_nsgl.h \
           libs/bgfx/src/glcontext_ppapi.h \
           libs/bgfx/src/glcontext_wgl.h \
           libs/bgfx/src/glimports.h \
           libs/bgfx/src/image.h \
           libs/bgfx/src/ovr.h \
           libs/bgfx/src/renderdoc.h \
           libs/bgfx/src/renderer.h \
           libs/bgfx/src/renderer_d3d.h \
           libs/bgfx/src/renderer_d3d11.h \
           libs/bgfx/src/renderer_d3d12.h \
           libs/bgfx/src/renderer_d3d9.h \
           libs/bgfx/src/renderer_gl.h \
           libs/bgfx/src/renderer_mtl.h \
           libs/bgfx/src/shader_dx9bc.h \
           libs/bgfx/src/shader_dxbc.h \
           libs/bgfx/src/shader_spirv.h \
           libs/bgfx/src/vertexdecl.h \
           libs/bgfx/src/vs_clear.bin.h \
           libs/bgfx/src/vs_debugfont.bin.h \
           src/base/entry/cmd.h \
           src/base/entry/dbg.h \
           src/base/entry/entry.h \
           src/base/entry/entry_p.h \
           src/base/entry/input.h \
           src/base/font/font_manager.h \
           src/base/font/fs_font_basic.bin.h \
           src/base/font/fs_font_distance_field.bin.h \
           src/base/font/fs_font_distance_field_subpixel.bin.h \
           src/base/font/text_buffer_manager.h \
           src/base/font/text_metrics.h \
           src/base/font/utf8.h \
           src/base/font/vs_font_basic.bin.h \
           src/base/font/vs_font_distance_field.bin.h \
           src/base/font/vs_font_distance_field_subpixel.bin.h \
           src/base/imgui/droidsans.ttf.h \
           src/base/imgui/fs_imgui_color.bin.h \
           src/base/imgui/fs_imgui_cubemap.bin.h \
           src/base/imgui/fs_imgui_image.bin.h \
           src/base/imgui/fs_imgui_image_swizz.bin.h \
           src/base/imgui/fs_imgui_latlong.bin.h \
           src/base/imgui/fs_imgui_texture.bin.h \
           src/base/imgui/fs_ocornut_imgui.bin.h \
           src/base/imgui/imgui.h \
           src/base/imgui/ocornut_imgui.h \
           src/base/imgui/scintilla.h \
           src/base/imgui/vs_imgui_color.bin.h \
           src/base/imgui/vs_imgui_cubemap.bin.h \
           src/base/imgui/vs_imgui_image.bin.h \
           src/base/imgui/vs_imgui_latlong.bin.h \
           src/base/imgui/vs_imgui_texture.bin.h \
           src/base/imgui/vs_ocornut_imgui.bin.h \
           src/base/nanovg/fontstash.h \
           src/base/nanovg/fs_nanovg_fill.bin.h \
           src/base/nanovg/nanovg.h \
           src/base/nanovg/vs_nanovg_fill.bin.h \
           libs/bgfx/3rdparty/edtaa3/edtaa3func.h \
           libs/bgfx/3rdparty/forsyth-too/forsythtriangleorderoptimizer.h \
           libs/bgfx/3rdparty/freetype/freetype.h \
           libs/bgfx/3rdparty/ib-compress/indexbuffercompression.h \
           libs/bgfx/3rdparty/ib-compress/indexbuffercompressionformat.h \
           libs/bgfx/3rdparty/ib-compress/indexbufferdecompression.h \
           libs/bgfx/3rdparty/ib-compress/indexcompressionconstants.h \
           libs/bgfx/3rdparty/ib-compress/readbitstream.h \
           libs/bgfx/3rdparty/ib-compress/writebitstream.h \
           libs/bgfx/3rdparty/ocornut-imgui/imconfig.h \
           libs/bgfx/3rdparty/ocornut-imgui/imgui.h \
           libs/bgfx/3rdparty/ocornut-imgui/imgui_internal.h \
           libs/bgfx/3rdparty/ocornut-imgui/memory_editor.h \
           libs/bgfx/3rdparty/ocornut-imgui/stb_rect_pack.h \
           libs/bgfx/3rdparty/ocornut-imgui/stb_textedit.h \
           libs/bgfx/3rdparty/ocornut-imgui/stb_truetype.h \
           libs/bgfx/3rdparty/renderdoc/renderdoc_app.h \
           libs/bgfx/3rdparty/sdf/sdf.h \
           libs/bgfx/3rdparty/stb/stb_rect_pack.h \
           libs/bgfx/3rdparty/stb/stb_textedit.h \
           libs/bgfx/3rdparty/stb/stb_truetype.h \
           libs/bgfx/include/bgfx/bgfx.h \
           libs/bgfx/include/bgfx/bgfxdefines.h \
           libs/bgfx/include/bgfx/bgfxplatform.h \
           libs/bx/3rdparty/CL/cl.h \
           libs/bx/3rdparty/CL/cl_d3d10.h \
           libs/bx/3rdparty/CL/cl_d3d11.h \
           libs/bx/3rdparty/CL/cl_dx9_media_sharing.h \
           libs/bx/3rdparty/CL/cl_egl.h \
           libs/bx/3rdparty/CL/cl_ext.h \
           libs/bx/3rdparty/CL/cl_gl.h \
           libs/bx/3rdparty/CL/cl_gl_ext.h \
           libs/bx/3rdparty/CL/cl_platform.h \
           libs/bx/3rdparty/CL/opencl.h \
           libs/bx/include/bx/allocator.h \
           libs/bx/include/bx/bx.h \
           libs/bx/include/bx/cl.h \
           libs/bx/include/bx/commandline.h \
           libs/bx/include/bx/config.h \
           libs/bx/include/bx/cpu.h \
           libs/bx/include/bx/debug.h \
           libs/bx/include/bx/endian.h \
           libs/bx/include/bx/float4_langext.h \
           libs/bx/include/bx/float4_neon.h \
           libs/bx/include/bx/float4_ni.h \
           libs/bx/include/bx/float4_ref.h \
           libs/bx/include/bx/float4_sse.h \
           libs/bx/include/bx/float4_t.h \
           libs/bx/include/bx/float4x4_t.h \
           libs/bx/include/bx/foreach.h \
           libs/bx/include/bx/fpumath.h \
           libs/bx/include/bx/handlealloc.h \
           libs/bx/include/bx/hash.h \
           libs/bx/include/bx/macros.h \
           libs/bx/include/bx/maputil.h \
           libs/bx/include/bx/mpscqueue.h \
           libs/bx/include/bx/mutex.h \
           libs/bx/include/bx/os.h \
           libs/bx/include/bx/platform.h \
           libs/bx/include/bx/process.h \
           libs/bx/include/bx/radixsort.h \
           libs/bx/include/bx/readerwriter.h \
           libs/bx/include/bx/ringbuffer.h \
           libs/bx/include/bx/rng.h \
           libs/bx/include/bx/sem.h \
           libs/bx/include/bx/spscqueue.h \
           libs/bx/include/bx/string.h \
           libs/bx/include/bx/thread.h \
           libs/bx/include/bx/timer.h \
           libs/bx/include/bx/tokenizecmd.h \
           libs/bx/include/bx/uint32_t.h \
           libs/bx/include/tinystl/allocator.h \
           libs/bx/include/tinystl/buffer.h \
           libs/bx/include/tinystl/hash.h \
           libs/bx/include/tinystl/hash_base.h \
           libs/bx/include/tinystl/new.h \
           libs/bx/include/tinystl/stddef.h \
           libs/bx/include/tinystl/string.h \
           libs/bx/include/tinystl/traits.h \
           libs/bx/include/tinystl/unordered_map.h \
           libs/bx/include/tinystl/unordered_set.h \
           libs/bx/include/tinystl/vector.h \
           libs/bgfx/3rdparty/dxsdk/include/d3d10.h \
           libs/bgfx/3rdparty/dxsdk/include/d3d10_1.h \
           libs/bgfx/3rdparty/dxsdk/include/d3d10_1shader.h \
           libs/bgfx/3rdparty/dxsdk/include/d3d10effect.h \
           libs/bgfx/3rdparty/dxsdk/include/d3d10misc.h \
           libs/bgfx/3rdparty/dxsdk/include/d3d10sdklayers.h \
           libs/bgfx/3rdparty/dxsdk/include/d3d10shader.h \
           libs/bgfx/3rdparty/dxsdk/include/d3d11.h \
           libs/bgfx/3rdparty/dxsdk/include/d3d11_1.h \
           libs/bgfx/3rdparty/dxsdk/include/d3d11_2.h \
           libs/bgfx/3rdparty/dxsdk/include/d3d11_3.h \
           libs/bgfx/3rdparty/dxsdk/include/d3d11sdklayers.h \
           libs/bgfx/3rdparty/dxsdk/include/d3d11shader.h \
           libs/bgfx/3rdparty/dxsdk/include/d3d11shadertracing.h \
           libs/bgfx/3rdparty/dxsdk/include/d3d12.h \
           libs/bgfx/3rdparty/dxsdk/include/d3d12sdklayers.h \
           libs/bgfx/3rdparty/dxsdk/include/d3d12shader.h \
           libs/bgfx/3rdparty/dxsdk/include/d3d9.h \
           libs/bgfx/3rdparty/dxsdk/include/d3d9caps.h \
           libs/bgfx/3rdparty/dxsdk/include/d3d9types.h \
           libs/bgfx/3rdparty/dxsdk/include/d3dcommon.h \
           libs/bgfx/3rdparty/dxsdk/include/d3dcompiler.h \
           libs/bgfx/3rdparty/dxsdk/include/d3dx12.h \
           libs/bgfx/3rdparty/dxsdk/include/dxgi.h \
           libs/bgfx/3rdparty/dxsdk/include/dxgi1_2.h \
           libs/bgfx/3rdparty/dxsdk/include/dxgi1_3.h \
           libs/bgfx/3rdparty/dxsdk/include/dxgi1_4.h \
           libs/bgfx/3rdparty/dxsdk/include/dxgidebug.h \
           libs/bgfx/3rdparty/dxsdk/include/dxgiformat.h \
           libs/bgfx/3rdparty/dxsdk/include/dxgitype.h \
           libs/bgfx/3rdparty/khronos/EGL/egl.h \
           libs/bgfx/3rdparty/khronos/EGL/eglext.h \
           libs/bgfx/3rdparty/khronos/EGL/eglplatform.h \
           libs/bgfx/3rdparty/khronos/gl/glcorearb.h \
           libs/bgfx/3rdparty/khronos/gl/glext.h \
           libs/bgfx/3rdparty/khronos/gl/GRemedyGLExtensions.h \
           libs/bgfx/3rdparty/khronos/GLES2/gl2.h \
           libs/bgfx/3rdparty/khronos/GLES2/gl2ext.h \
           libs/bgfx/3rdparty/khronos/GLES2/gl2platform.h \
           libs/bgfx/3rdparty/khronos/GLES3/gl3.h \
           libs/bgfx/3rdparty/khronos/GLES3/gl31.h \
           libs/bgfx/3rdparty/khronos/GLES3/gl3ext.h \
           libs/bgfx/3rdparty/khronos/GLES3/gl3platform.h \
           libs/bgfx/3rdparty/khronos/glx/glxext.h \
           libs/bgfx/3rdparty/khronos/KHR/khrplatform.h \
           libs/bgfx/3rdparty/khronos/wgl/wglext.h \
           libs/bgfx/include/bgfx/c99/bgfx.h \
           libs/bgfx/include/bgfx/c99/bgfxplatform.h \
           libs/bx/include/compat/freebsd/alloca.h \
           libs/bx/include/compat/freebsd/malloc.h \
           libs/bx/include/compat/freebsd/signal.h \
           libs/bx/include/compat/ios/malloc.h \
           libs/bx/include/compat/mingw/alloca.h \
           libs/bx/include/compat/mingw/sal.h \
           libs/bx/include/compat/mingw/specstrings_strict.h \
           libs/bx/include/compat/mingw/specstrings_undef.h \
           libs/bx/include/compat/msvc/alloca.h \
           libs/bx/include/compat/msvc/dirent.h \
           libs/bx/include/compat/msvc/inttypes.h \
           libs/bx/include/compat/msvc/stdbool.h \
           libs/bx/include/compat/nacl/memory.h \
           libs/bx/include/compat/osx/malloc.h \
           libs/bx/include/compat/msvc/pre1600/stdint.h \
    src/vs_mesh.sc \
    src/fs_mesh.sc \
    libs/anax/include/anax/detail/AnaxAssert.hpp \
    libs/anax/include/anax/detail/BaseSystem.hpp \
    libs/anax/include/anax/detail/ClassTypeId.hpp \
    libs/anax/include/anax/detail/ComponentTypeList.hpp \
    libs/anax/include/anax/detail/EntityComponentStorage.hpp \
    libs/anax/include/anax/detail/EntityIdPool.hpp \
    libs/anax/include/anax/detail/Filter.hpp \
    libs/anax/include/anax/util/ContainerUtils.hpp \
    libs/anax/include/anax/anax.hpp \
    libs/anax/include/anax/Component.hpp \
    libs/anax/include/anax/Entity.hpp \
    libs/anax/include/anax/FilterOptions.hpp \
    libs/anax/include/anax/System.hpp \
    libs/anax/include/anax/World.hpp \
    src/game.h \
    src/systems/lighting_system.h \
    src/systems/movement_system.h \
    src/components/camera_component.h \
    src/systems/rendering_system.h \
    libs/glm/glm/detail/_features.hpp \
    libs/glm/glm/detail/_fixes.hpp \
    libs/glm/glm/detail/_noise.hpp \
    libs/glm/glm/detail/_swizzle.hpp \
    libs/glm/glm/detail/_swizzle_func.hpp \
    libs/glm/glm/detail/_vectorize.hpp \
    libs/glm/glm/detail/func_common.hpp \
    libs/glm/glm/detail/func_exponential.hpp \
    libs/glm/glm/detail/func_geometric.hpp \
    libs/glm/glm/detail/func_integer.hpp \
    libs/glm/glm/detail/func_matrix.hpp \
    libs/glm/glm/detail/func_packing.hpp \
    libs/glm/glm/detail/func_trigonometric.hpp \
    libs/glm/glm/detail/func_vector_relational.hpp \
    libs/glm/glm/detail/intrinsic_common.hpp \
    libs/glm/glm/detail/intrinsic_exponential.hpp \
    libs/glm/glm/detail/intrinsic_geometric.hpp \
    libs/glm/glm/detail/intrinsic_integer.hpp \
    libs/glm/glm/detail/intrinsic_matrix.hpp \
    libs/glm/glm/detail/intrinsic_trigonometric.hpp \
    libs/glm/glm/detail/intrinsic_vector_relational.hpp \
    libs/glm/glm/detail/precision.hpp \
    libs/glm/glm/detail/setup.hpp \
    libs/glm/glm/detail/type_float.hpp \
    libs/glm/glm/detail/type_gentype.hpp \
    libs/glm/glm/detail/type_half.hpp \
    libs/glm/glm/detail/type_int.hpp \
    libs/glm/glm/detail/type_mat.hpp \
    libs/glm/glm/detail/type_mat2x2.hpp \
    libs/glm/glm/detail/type_mat2x3.hpp \
    libs/glm/glm/detail/type_mat2x4.hpp \
    libs/glm/glm/detail/type_mat3x2.hpp \
    libs/glm/glm/detail/type_mat3x3.hpp \
    libs/glm/glm/detail/type_mat3x4.hpp \
    libs/glm/glm/detail/type_mat4x2.hpp \
    libs/glm/glm/detail/type_mat4x3.hpp \
    libs/glm/glm/detail/type_mat4x4.hpp \
    libs/glm/glm/detail/type_vec.hpp \
    libs/glm/glm/detail/type_vec1.hpp \
    libs/glm/glm/detail/type_vec2.hpp \
    libs/glm/glm/detail/type_vec3.hpp \
    libs/glm/glm/detail/type_vec4.hpp \
    libs/glm/glm/gtc/bitfield.hpp \
    libs/glm/glm/gtc/color_space.hpp \
    libs/glm/glm/gtc/constants.hpp \
    libs/glm/glm/gtc/epsilon.hpp \
    libs/glm/glm/gtc/integer.hpp \
    libs/glm/glm/gtc/matrix_access.hpp \
    libs/glm/glm/gtc/matrix_integer.hpp \
    libs/glm/glm/gtc/matrix_inverse.hpp \
    libs/glm/glm/gtc/matrix_transform.hpp \
    libs/glm/glm/gtc/noise.hpp \
    libs/glm/glm/gtc/packing.hpp \
    libs/glm/glm/gtc/quaternion.hpp \
    libs/glm/glm/gtc/random.hpp \
    libs/glm/glm/gtc/reciprocal.hpp \
    libs/glm/glm/gtc/round.hpp \
    libs/glm/glm/gtc/type_precision.hpp \
    libs/glm/glm/gtc/type_ptr.hpp \
    libs/glm/glm/gtc/ulp.hpp \
    libs/glm/glm/gtc/vec1.hpp \
    libs/glm/glm/gtx/associated_min_max.hpp \
    libs/glm/glm/gtx/bit.hpp \
    libs/glm/glm/gtx/closest_point.hpp \
    libs/glm/glm/gtx/color_space.hpp \
    libs/glm/glm/gtx/color_space_YCoCg.hpp \
    libs/glm/glm/gtx/common.hpp \
    libs/glm/glm/gtx/compatibility.hpp \
    libs/glm/glm/gtx/component_wise.hpp \
    libs/glm/glm/gtx/dual_quaternion.hpp \
    libs/glm/glm/gtx/euler_angles.hpp \
    libs/glm/glm/gtx/extend.hpp \
    libs/glm/glm/gtx/extended_min_max.hpp \
    libs/glm/glm/gtx/fast_exponential.hpp \
    libs/glm/glm/gtx/fast_square_root.hpp \
    libs/glm/glm/gtx/fast_trigonometry.hpp \
    libs/glm/glm/gtx/gradient_paint.hpp \
    libs/glm/glm/gtx/handed_coordinate_space.hpp \
    libs/glm/glm/gtx/hash.hpp \
    libs/glm/glm/gtx/integer.hpp \
    libs/glm/glm/gtx/intersect.hpp \
    libs/glm/glm/gtx/io.hpp \
    libs/glm/glm/gtx/log_base.hpp \
    libs/glm/glm/gtx/matrix_cross_product.hpp \
    libs/glm/glm/gtx/matrix_decompose.hpp \
    libs/glm/glm/gtx/matrix_interpolation.hpp \
    libs/glm/glm/gtx/matrix_major_storage.hpp \
    libs/glm/glm/gtx/matrix_operation.hpp \
    libs/glm/glm/gtx/matrix_query.hpp \
    libs/glm/glm/gtx/matrix_transform_2d.hpp \
    libs/glm/glm/gtx/mixed_product.hpp \
    libs/glm/glm/gtx/norm.hpp \
    libs/glm/glm/gtx/normal.hpp \
    libs/glm/glm/gtx/normalize_dot.hpp \
    libs/glm/glm/gtx/number_precision.hpp \
    libs/glm/glm/gtx/optimum_pow.hpp \
    libs/glm/glm/gtx/orthonormalize.hpp \
    libs/glm/glm/gtx/perpendicular.hpp \
    libs/glm/glm/gtx/polar_coordinates.hpp \
    libs/glm/glm/gtx/projection.hpp \
    libs/glm/glm/gtx/quaternion.hpp \
    libs/glm/glm/gtx/range.hpp \
    libs/glm/glm/gtx/raw_data.hpp \
    libs/glm/glm/gtx/rotate_normalized_axis.hpp \
    libs/glm/glm/gtx/rotate_vector.hpp \
    libs/glm/glm/gtx/scalar_multiplication.hpp \
    libs/glm/glm/gtx/scalar_relational.hpp \
    libs/glm/glm/gtx/simd_mat4.hpp \
    libs/glm/glm/gtx/simd_quat.hpp \
    libs/glm/glm/gtx/simd_vec4.hpp \
    libs/glm/glm/gtx/spline.hpp \
    libs/glm/glm/gtx/std_based_type.hpp \
    libs/glm/glm/gtx/string_cast.hpp \
    libs/glm/glm/gtx/transform.hpp \
    libs/glm/glm/gtx/transform2.hpp \
    libs/glm/glm/gtx/type_aligned.hpp \
    libs/glm/glm/gtx/vector_angle.hpp \
    libs/glm/glm/gtx/vector_query.hpp \
    libs/glm/glm/gtx/wrap.hpp \
    libs/glm/glm/common.hpp \
    libs/glm/glm/exponential.hpp \
    libs/glm/glm/ext.hpp \
    libs/glm/glm/fwd.hpp \
    libs/glm/glm/geometric.hpp \
    libs/glm/glm/glm.hpp \
    libs/glm/glm/integer.hpp \
    libs/glm/glm/mat2x2.hpp \
    libs/glm/glm/mat2x3.hpp \
    libs/glm/glm/mat2x4.hpp \
    libs/glm/glm/mat3x2.hpp \
    libs/glm/glm/mat3x3.hpp \
    libs/glm/glm/mat3x4.hpp \
    libs/glm/glm/mat4x2.hpp \
    libs/glm/glm/mat4x3.hpp \
    libs/glm/glm/mat4x4.hpp \
    libs/glm/glm/matrix.hpp \
    libs/glm/glm/packing.hpp \
    libs/glm/glm/trigonometric.hpp \
    libs/glm/glm/vec2.hpp \
    libs/glm/glm/vec3.hpp \
    libs/glm/glm/vec4.hpp \
    libs/glm/glm/vector_relational.hpp \
    src/components/transform_component.h \
    src/base/utils.h

SOURCES += src/base/bgfx_utils.cpp \
           src/base/bounds.cpp \
           src/base/camera.cpp \
           src/base/cube_atlas.cpp \
           libs/bgfx/src/amalgamated.cpp \
           libs/bgfx/src/bgfx.cpp \
           libs/bgfx/src/glcontext_egl.cpp \
           libs/bgfx/src/glcontext_glx.cpp \
           libs/bgfx/src/glcontext_ppapi.cpp \
           libs/bgfx/src/glcontext_wgl.cpp \
           libs/bgfx/src/image.cpp \
           libs/bgfx/src/ovr.cpp \
           libs/bgfx/src/renderdoc.cpp \
           libs/bgfx/src/renderer_d3d11.cpp \
           libs/bgfx/src/renderer_d3d12.cpp \
           libs/bgfx/src/renderer_d3d9.cpp \
           libs/bgfx/src/renderer_gl.cpp \
           libs/bgfx/src/renderer_null.cpp \
           libs/bgfx/src/renderer_vk.cpp \
           libs/bgfx/src/shader_dx9bc.cpp \
           libs/bgfx/src/shader_dxbc.cpp \
           libs/bgfx/src/shader_spirv.cpp \
           libs/bgfx/src/vertexdecl.cpp \
           src/base/entry/cmd.cpp \
           src/base/entry/dbg.cpp \
           src/base/entry/entry.cpp \
           src/base/entry/entry_android.cpp \
           src/base/entry/entry_asmjs.cpp \
           src/base/entry/entry_glfw.cpp \
           src/base/entry/entry_nacl.cpp \
           src/base/entry/entry_qnx.cpp \
           src/base/entry/entry_sdl.cpp \
           src/base/entry/entry_windows.cpp \
           src/base/entry/entry_winrt.cpp \
           src/base/entry/entry_x11.cpp \
           src/base/entry/input.cpp \
           src/base/font/font_manager.cpp \
           src/base/font/text_buffer_manager.cpp \
           src/base/font/text_metrics.cpp \
           src/base/font/utf8.cpp \
           src/base/imgui/ocornut_imgui.cpp \
           src/base/imgui/scintilla.cpp \
           src/base/nanovg/nanovg.cpp \
           src/base/nanovg/nanovg_bgfx.cpp \
           libs/bgfx/3rdparty/edtaa3/edtaa3func.cpp \
           libs/bgfx/3rdparty/forsyth-too/forsythtriangleorderoptimizer.cpp \
           libs/bgfx/3rdparty/ib-compress/indexbuffercompression.cpp \
           libs/bgfx/3rdparty/ib-compress/indexbufferdecompression.cpp \
           libs/bgfx/3rdparty/ocornut-imgui/imgui.cpp \
           libs/bgfx/3rdparty/ocornut-imgui/imgui_demo.cpp \
           libs/bgfx/3rdparty/ocornut-imgui/imgui_draw.cpp \
           libs/bgfx/3rdparty/ocornut-imgui/imgui_node_graph_test.cpp \
           libs/bgfx/3rdparty/stb/stb_image.c \
            src/base/imgui/imgui_imp.cpp \
            src/main.cpp \
            libs/anax/src/anax/detail/BaseSystem.cpp \
            libs/anax/src/anax/detail/EntityComponentStorage.cpp \
            libs/anax/src/anax/detail/EntityIdPool.cpp \
            libs/anax/src/anax/detail/Filter.cpp \
            libs/anax/src/anax/Entity.cpp \
            libs/anax/src/anax/World.cpp \
            src/game.cpp \
            src/systems/lighting_system.cpp \
            src/systems/movement_system.cpp \
    src/systems/rendering_system.cpp \
    libs/glm/glm/detail/glm.cpp \
    src/components/transform_component.cpp \
    src/utils.cpp

DISTFILES += \
    src/varying.def.sc
