//
//  GameComponent.h
//  game_background
//
//  Created by Ian Wang on 6/27/15.
//  Copyright (c) 2015 Ian Wang. All rights reserved.
//

#import <SceneKit/SceneKit.h>
#import "GameObject.h"

@interface GameComponent : NSObject

@property (nonatomic,readwrite) GameObject *gameObject;

// Do not override it!
- (void)componentWillUpdate;

- (void)start;
- (void)update:(NSTimeInterval)dt;
- (void)stop;

@end
