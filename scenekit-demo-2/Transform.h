//
//  Transform.h
//  game_background
//
//  Created by Ian Wang on 6/27/15.
//  Copyright (c) 2015 Ian Wang. All rights reserved.
//

#import "GameComponent.h"
#import <SceneKit/SceneKit.h>

@interface Transform : GameComponent

@property (nonatomic,readwrite) SCNVector3 position;
@property (nonatomic,readwrite) float angle;
@property (nonatomic,readonly) SCNNode *node;
@property (nonatomic,readonly) SCNVector3 forward;

@end
