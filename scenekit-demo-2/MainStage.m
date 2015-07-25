//
//  MainStage.m
//  game_background
//
//  Created by Ian Wang on 6/27/15.
//  Copyright (c) 2015 Ian Wang. All rights reserved.
//

#import "MainStage.h"
#import "GameObject.h"

@implementation MainStage

- (instancetype)init {
    
    if ( self = [super init] ) {
        
        _gameObjects = [NSMutableArray array];
    }
    return self;
}

- (NSArray*)gameObjects {
    
    return [NSArray arrayWithArray:_gameObjects];
}

- (void)addGameObject:(GameObject*)newObject {
    
    if ( [self.gameObjects containsObject:newObject] )
        return;
    
    newObject.stage = self;
    [_gameObjects addObject:newObject];
    [newObject start];
    
}

- (void)removeGameGameObject:(GameObject*)object {
    
    if ( ![self.gameObjects containsObject:object] )
        return;
    
    [object stop];
    object.stage = nil;
    [_gameObjects removeObject:object];
    
}

- (BOOL)update:(NSTimeInterval)dt {
    
    for ( GameObject *gameObject in self.gameObjects ) {
        [gameObject update:dt];
    }
    
    return NO;
}

@end
