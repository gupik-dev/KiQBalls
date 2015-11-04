#include "transform_component.h"

const TransformComponent TransformComponent::None = TransformComponent();

glm::vec3 TransformComponent::transform(glm::vec3 v)
{
    return glm::vec3(m_mtx * glm::vec4(v, 1));
}

glm::vec3 TransformComponent::pos()
{
    return glm::vec3(m_mtx * glm::vec4(0, 0, 0, 1));
}

TransformComponent::TransformComponent(glm::vec3 v)
{
    m_mtx = glm::translate(glm::mat4(), v);
}
