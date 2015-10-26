#ifndef CAMERACOMPONENT_H
#define CAMERACOMPONENT_H

#include <anax/Component.hpp>
#include <glm/vec3.hpp>

struct CameraComponent: anax::Component
{
    float m_aspect;
    float m_near, m_far;
    float m_fov;
    glm::vec3 m_lookat;

//    virtual ~CameraComponent() {}
    CameraComponent():
        m_aspect(0.f),
        m_near(0.f),
        m_far(0.f),
        m_fov(0.f)
    {}
};

#endif // CAMERACOMPONENT_H
