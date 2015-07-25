//
//  ActionController.h
//  scenekit-demo-2
//
//  Created by Ian Wang on 7/10/15.
//  Copyright (c) 2015 Ian Wang. All rights reserved.
//

#import "GameComponent.h"

@interface Action : GameObject

- (void)update:(NSTimeInterval)dt;

// Return NO if we are not allow action to be changed.
- (BOOL)actionWillChange:(Action*)nextAction;

@end

@interface ActionController : GameComponent

@property (nonatomic) Action *action;

- (void)update:(NSTimeInterval)dt;

@end
