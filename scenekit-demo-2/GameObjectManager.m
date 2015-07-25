//
//  GameObjectManager.m
//  game_background
//
//  Created by Ian Wang on 6/27/15.
//  Copyright (c) 2015 Ian Wang. All rights reserved.
//

#import "GameObjectManager.h"
#import "GameObject.h"
#import "GameObjectBuilder.h"

@implementation GameObjectManager

static GameObjectManager *_sharedManager;

+ (GameObjectManager*)sharedManager {
    
    @synchronized ( self ) {
        
        if ( _sharedManager == nil ) {
            _sharedManager = [[self alloc] init];
        }
        return _sharedManager;
        
    }
    
}

- (instancetype)init {
    
    if ( self = [super init] ) {
        
        _gameObjectBuilders = [NSMutableDictionary dictionary];
        
    }
    return self;
    
}

- (void)loadGameObjectNamed:(NSString*)name {
    
    
}

- (GameObjectBuilder*)gameObjectBuilderNamed:(NSString*)name
{
    @synchronized ( self )
    {
        GameObjectBuilder *builder = _gameObjectBuilders[name];
        if ( builder == nil )
        {
            builder = [[NSClassFromString(name) alloc] init];
            [_gameObjectBuilders setObject:builder forKey:name];
        }
        return builder;
    }
}

- (GameObject*)buildeObjectNamed:(NSString*)name
                     WithOptions:(NSDictionary*)options {
    
    GameObjectBuilder *builder = [self gameObjectBuilderNamed:name];
    
    if ( builder != nil )
    {
        @synchronized ( builder )
        {
            GameObject *gameObject = [builder buildWithOptions:options];
            return gameObject;
        }
    }
    return nil;
    
}

@end
