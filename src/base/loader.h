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
//   uint32_t cached = bgfx::setTransform(_mtx);
   int n=0;
   PosColorVertex::init();
    for (; n < nd->mNumMeshes; ++n)
    {
            const struct aiMesh* mesh = scene->mMeshes[nd->mMeshes[n]];

            PosColorVertex s_vertices[mesh->mNumVertices];
            for(int i=0; i<mesh->mNumVertices; i++){
                s_vertices[i].m_x = mesh->mVertices[i].x;
                s_vertices[i].m_y = mesh->mVertices[i].y;
                s_vertices[i].m_z = mesh->mVertices[i].z;
            }

            auto m_vbh = bgfx::createVertexBuffer(
                                bgfx::makeRef(s_vertices, sizeof(s_vertices)),
                                PosColorVertex::ms_decl
                            );

            int indicesTotal = 0;
            for(int t=0; t<mesh->mNumFaces; t++){
                indicesTotal += mesh->mFaces[t].mNumIndices;
            }

            uint16_t s_indices[indicesTotal];
            int i = 0;
            for(size_t t=0; t<mesh->mNumFaces; t++){
                const struct aiFace* face = &mesh->mFaces[t];
                for (int j=0; j<face->mNumIndices; j++) {
                    s_indices[i] = face->mIndices[j];
                    i++;
                }
            }

            auto m_ibh = bgfx::createIndexBuffer(
                            bgfx::makeRef(s_indices, sizeof(s_indices))
                            );

            bgfx::setVertexBuffer(m_vbh);
            bgfx::setIndexBuffer(m_ibh);
            bgfx::setState(BGFX_STATE_DEFAULT);
            bgfx::submit(0, _program);
//            }
    }
    for (n = 0; n < nd->mNumChildren ; ++n)
    {
        recursive_render(sc, nd->mChildren[n], scale, _program, _mtx);
    }
}
