//
//  ActionController.m
//  scenekit-demo-2
//
//  Created by Ian Wang on 7/10/15.
//  Copyright (c) 2015 Ian Wang. All rights reserved.
//

#import "ActionController.h"

@implementation Action

- (BOOL)actionWillChange:(Action *)nextAction {
    return YES;
}

- (void)update:(NSTimeInterval)dt {
    // Default is do nothing.
}

@end

@implementation ActionController

- (void)setAction:(Action *)action {
    
    if ( self.action == nil || [self.action actionWillChange:action] )
        _action = action;
}

- (void)update:(NSTimeInterval)dt {
    
    if ( self.action != nil )
        [self.action update:dt];
}

@end
