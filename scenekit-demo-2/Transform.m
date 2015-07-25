//
//  Transform.m
//  game_background
//
//  Created by Ian Wang on 6/27/15.
//  Copyright (c) 2015 Ian Wang. All rights reserved.
//

#import "Transform.h"

#import "MainStage.h"
#import "mathutil.h"

@implementation Transform

- (instancetype)init {
    
    if ( self = [super init] ) {
        _node = [SCNNode node];
    }
    return self;
}

- (void)start {
    [self.gameObject.stage.scene.rootNode addChildNode:self.node];
}

- (void)stop {
    [self.node removeFromParentNode];
}

- (SCNVector3)position {
    return self.node.presentationNode.position;
}

- (void)setPosition:(SCNVector3)position {
    self.node.position = position;
}

- (float)angle {
    return self.node.presentationNode.eulerAngles.y;
}

- (void)setAngle:(float)angle {
    SCNVector3 eulerAngles = self.node.eulerAngles;
    eulerAngles.y = angle;
    self.node.eulerAngles = eulerAngles;
}

- (SCNVector3)forward {
    return applyMatrixToVec3(SCNMatrix4Invert(self.node.presentationNode.transform), SCNVector3Make(0.0f, 0.0f, 1.0f));
}

@end
