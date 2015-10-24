#ifndef UTILS
#define UTILS

#include <glm/vec3.hpp>

inline void toArray(float* d, glm::vec3 v) { d[0] = v.x; d[1] = v.y; d[2] = v.z; }

#endif // UTILS

