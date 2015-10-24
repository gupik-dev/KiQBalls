#include "transform_component.h"

const TransformComponent TransformComponent::None = TransformComponent();

TransformComponent::TransformComponent(glm::mat4 mtx) {
    m_mtx = mtx;
}

glm::mat4 TransformComponent::TransformComponent(glm::vec3 v) {
    return glm::translate(glm::mat4(), v);
}
