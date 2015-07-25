//
//  GameObject.m
//  game_background
//
//  Created by Ian Wang on 6/27/15.
//  Copyright (c) 2015 Ian Wang. All rights reserved.
//

#import "GameObject.h"
#import "GameComponent.h"

@implementation GameObject

- (instancetype)init {
    
    if ( self = [super init] ) {
        _components = [NSMutableArray array];
    }
    
    return self;
}

- (NSArray*)components {
    return [NSArray arrayWithArray:_components];
}

- (void)start {
    
    for ( GameComponent *component in self.components ) {
        [component start];
    }
}

- (void)stop {
    
    for ( GameComponent *component in self.components ) {
        [component stop];
    }
}

- (void)update:(NSTimeInterval)dt {
    for ( GameComponent *component in self.components ) {
        [component componentWillUpdate];
        [component update:dt];
    }
}

- (void)addComponent:(GameComponent*)component {
    
    if ( [self.components containsObject:component] )
        return;
    
    component.gameObject = self;
    [_components addObject:component];
    
}

- (void)removeComponent:(GameComponent*)component {
    
    if ( ![self.components containsObject:component] )
        return;
    
    [component stop];
    component.gameObject = nil;
    [_components removeObject:component];
    
}

- (id)firstComponentNamed:(NSString *)name {
    
    Class class = NSClassFromString(name);
    for ( GameComponent *component in self.components )
        if ( [component isKindOfClass:class] )
            return component;
    
    return nil;
}

@end
