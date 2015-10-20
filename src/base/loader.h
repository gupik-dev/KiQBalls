#include "stdio.h"
#include "stdlib.h"
#include "unistd.h"
#include "iostream"
#include "fstream"
#include "bgfx/bgfx.h"
#include "assimp/Importer.hpp"
#include "assimp/postprocess.h"
#include "assimp/scene.h"
#include "assimp/DefaultLogger.hpp"
#include "assimp/LogStream.hpp"

Assimp::Importer importer;
const aiScene* scene = NULL;
struct PosColorVertex
{
    float m_x;
    float m_y;
    float m_z;
    uint32_t m_abgr;

    static void init()
    {
        ms_decl
            .begin()
            .add(bgfx::Attrib::Position, 3, bgfx::AttribType::Float)
            .end();
    };

    static bgfx::VertexDecl ms_decl;
};

bgfx::VertexDecl PosColorVertex::ms_decl;

bool Import3DFromFile( const std::string& pFile)
{
    // Check if file exists
    std::ifstream fin(pFile.c_str());
    if(!fin.fail())
    {
        fin.close();
    }
    else
    {
        printf("Unable load file");
        return false;
    }
    scene = importer.ReadFile( pFile, aiProcessPreset_TargetRealtime_Quality);
    if( !scene)
    {
        printf("Unable load file");
        return false;
    }
    return true;
}
void recursive_render (const struct aiScene *sc, const struct aiNode* nd, float scale, bgfx::ProgramHandle _program, const float* _mtx){
   uint32_t cached = bgfx::setTransform(_mtx);
   int n=0;
    for (; n < nd->mNumMeshes; ++n)
    {
            const struct aiMesh* mesh = scene->mMeshes[nd->mMeshes[n]];
            for(int t=0; t<mesh->mNumFaces; t++){
                PosColorVertex::init();
                bgfx::IndexBufferHandle m_ibh;
                bgfx::VertexBufferHandle m_vbh;
                const struct aiFace* face = &mesh->mFaces[t];
                PosColorVertex s_vertices[3] = {
                    {-1.0f,  1.0f,  1.0f},
                    { 1.0f,  1.0f,  1.0f},
                    {-1.0f, -1.0f,  1.0f }
                };
                uint16_t s_cubeIndices[3] = {0,1,2};
//                for(int i=0; i<mesh->mNumVertices; i++){
//                    s_vertices[i].m_x = mesh->mVertices[i].x;
//                    s_vertices[i].m_y = mesh->mVertices[i].y;
//                    s_vertices[i].m_z = mesh->mVertices[i].z;
//                }
                m_vbh = bgfx::createVertexBuffer(
                                    bgfx::makeRef(s_vertices, sizeof(s_vertices)),
                                    PosColorVertex::ms_decl
                                );
                m_ibh = bgfx::createIndexBuffer(
                                bgfx::makeRef(s_cubeIndices, sizeof(s_cubeIndices))
                                );
                //bgfx::setTransform(cached);
                bgfx::setVertexBuffer(m_vbh);
                bgfx::setIndexBuffer(m_ibh);
                bgfx::setState(BGFX_STATE_DEFAULT);
                bgfx::submit(0, _program);
                sleep((3000))
            }
    }
    for (n = 0; n < nd->mNumChildren ; ++n)
    {
        recursive_render(sc, nd->mChildren[n], scale, _program, _mtx);
    }
}
