$input v_color0

/*
 * Copyright 2011-2015 Branimir Karadzic. All rights reserved.
 * License: http://www.opensource.org/licenses/BSD-2-Clause
 */

#include "base/base.sh"

//uniform vec4 u_time;

void main()
{
//    vec3 lightDir = vec3(0, 0, -1);
//    float ndotl = dot(normalize(v_normal), normalize(lightDir));
//    float spec = pow(ndotl, 5.0);
//    gl_FragColor = vec4(pow(v_color0.xyz * ndotl + spec*0.2, vec3_splat(1.0/2.2) ), 1.0);
      gl_FragColor = vec4(0.75, 0, 0, 1);
}
