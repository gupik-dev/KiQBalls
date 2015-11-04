#ifndef TRANSFORMCOMPONENT_H
#define TRANSFORMCOMPONENT_H

#include <glm/vec3.hpp>
#include <glm/vec4.hpp>
#include <glm/mat4x4.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <anax/Component.hpp>

struct TransformComponent: anax::Component
{
    glm::mat4 m_mtx;

    const static TransformComponent None;

    TransformComponent() {}
    TransformComponent(glm::mat4 mtx) { m_mtx = mtx; }
    TransformComponent(glm::vec3 v);

    glm::vec3 transform(glm::vec3 v);
    glm::vec3 pos();
};

#endif // TRANSFORMCOMPONENT_H
