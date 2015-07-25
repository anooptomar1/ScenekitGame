//
//  Collider.m
//  scenekit-demo-2
//
//  Created by Ian Wang on 7/25/15.
//  Copyright (c) 2015 Ian Wang. All rights reserved.
//

#import "Collider.h"
#import "Transform.h"

@implementation Collider

- (void)start {
    Transform *trans = [self.gameObject firstComponentNamed:@"Transform"];
    
    _node = [SCNNode node];
    
    SCNPhysicsField
    
    _node.physicsField = [SCNPhysicsField customFieldWithEvaluationBlock:<#^SCNVector3(SCNVector3 position, SCNVector3 velocity, float mass, float charge, NSTimeInterval time)block#>];
}

@end
