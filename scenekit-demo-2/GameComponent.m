//
//  GameComponent.m
//  game_background
//
//  Created by Ian Wang on 6/27/15.
//  Copyright (c) 2015 Ian Wang. All rights reserved.
//

#import "GameComponent.h"

@interface GameComponent () {
    BOOL isStarted;
}

@end

@implementation GameComponent

- (void)componentWillUpdate {
    
    if ( !isStarted ) {
        [self start];
        isStarted = YES;
    }
    
}

- (void)start {
    // Default is do nothing.
}

- (void)update:(NSTimeInterval)dt {
    // Default is do nothing.
}

- (void)stop {
    // Default is do nothing.
}

@end
