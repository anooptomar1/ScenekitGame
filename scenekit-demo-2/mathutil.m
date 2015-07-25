//
//  mathutil.m
//  scenekit-demo-1
//
//  Created by Ian Wang on 2/1/15.
//  Copyright (c) 2015 Ian Wang. All rights reserved.
//

#import "mathutil.h"
#include <math.h>

SCNVector3 addition ( SCNVector3 vec1, SCNVector3 vec2 )
{
    return SCNVector3Make ( vec1.x+vec2.x, vec1.y+vec2.y, vec1.z+vec2.z );
}

SCNVector3 subtraction ( SCNVector3 vec1, SCNVector3 vec2 )
{
    return SCNVector3Make ( vec1.x-vec2.x, vec1.y-vec2.y, vec1.z-vec2.z );
}

SCNVector3 multiply ( float scalar, SCNVector3 vec )
{
    return SCNVector3Make ( scalar*vec.x, scalar*vec.y, scalar*vec.z );
}

SCNVector3 normalize ( SCNVector3 vec )
{
    float norm = sqrt ( vec.x*vec.x + vec.y*vec.y + vec.z*vec.z );
    
    if ( norm == 0.0f )
        return SCNVector3Zero;
    
    return SCNVector3Make ( vec.x/norm, vec.y/norm, vec.z/norm );
}


float norm ( SCNVector3 vec )
{
    return sqrt ( vec.x*vec.x + vec.y*vec.y + vec.z*vec.z );
}

float xzNorm ( SCNVector3 vec )
{
    return sqrt ( vec.x*vec.x + vec.z*vec.z );
}

float angleBetween ( SCNVector3 vec1, SCNVector3 vec2 )
{
    return acosf((vec1.x*vec2.x+vec1.y*vec2.y+vec1.z*vec2.z)/(norm(vec1)*norm(vec2)));
}

SCNVector4 applyMatrixToVec4 ( SCNMatrix4 mat, SCNVector4 vec )
{
    SCNVector4 result = SCNVector4Zero;
    
    result.x = mat.m11*vec.x + mat.m12*vec.y + mat.m13*vec.z + mat.m14*vec.w;
    result.y = mat.m21*vec.x + mat.m22*vec.y + mat.m23*vec.z + mat.m24*vec.w;
    result.z = mat.m31*vec.x + mat.m32*vec.y + mat.m33*vec.z + mat.m34*vec.w;
    result.w = mat.m41*vec.x + mat.m42*vec.y + mat.m43*vec.z + mat.m44*vec.w;
    
    return result;
}

SCNVector3 applyMatrixToVec3 ( SCNMatrix4 mat, SCNVector3 vec )
{
    SCNVector3 result = SCNVector3Zero;
    
    result.x = mat.m11*vec.x + mat.m12*vec.y + mat.m13*vec.z;
    result.y = mat.m21*vec.x + mat.m22*vec.y + mat.m23*vec.z;
    result.z = mat.m31*vec.x + mat.m32*vec.y + mat.m33*vec.z;
    
    return result;
}