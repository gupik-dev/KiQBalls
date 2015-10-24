#ifndef TRANSFORMCOMPONENT_H
#define TRANSFORMCOMPONENT_H

#include <glm/vec3.hpp>
#include <glm/vec4.hpp>
#include <glm/mat4x4.hpp>
#include <glm/gtc/matrix_transform.hpp>

struct TransformComponent
{
    const static TransformComponent None;

    TransformComponent(glm::mat4 mtx);
    TransformComponent(glm::vec3 v);

    glm::vec3 transform(glm::vec3 v) { return glm::vec3(glm::vec4(v, 0) * m_mtx); }
    glm::vec3 pos() { return transform(glm::vec3(0, 0, 0)); }

private:
    glm::mat4 m_mtx;
};

#endif // TRANSFORMCOMPONENT_H
