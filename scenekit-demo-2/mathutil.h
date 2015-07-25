//
//  mathutil.h
//  scenekit-demo-1
//
//  Created by Ian Wang on 2/1/15.
//  Copyright (c) 2015 Ian Wang. All rights reserved.
//

#import <SceneKit/SceneKit.h>

SCNVector3 addition ( SCNVector3 vec1, SCNVector3 vec2 );
SCNVector3 subtraction ( SCNVector3 vec1, SCNVector3 vec2 );
SCNVector3 multiply ( float scalar, SCNVector3 vec );
SCNVector3 normalize ( SCNVector3 vec );
float norm ( SCNVector3 vec );
float xzNorm ( SCNVector3 vec );
float angleBetween ( SCNVector3 vec1, SCNVector3 vec2 );

SCNVector4 applyMatrixToVec4 ( SCNMatrix4 mat, SCNVector4 vec );
SCNVector3 applyMatrixToVec3 ( SCNMatrix4 mat, SCNVector3 vec );