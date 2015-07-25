//
//  MainStage.h
//  game_background
//
//  Created by Ian Wang on 6/27/15.
//  Copyright (c) 2015 Ian Wang. All rights reserved.
//

#import "GameStage.h"

@class GameObject;

@interface MainStage : GameStage {
    NSMutableArray *_gameObjects;
}

@property (nonatomic,readonly) NSArray *gameObjects;

- (void)addGameObject:(GameObject*)newObject;
- (void)removeGameGameObject:(GameObject*)object;

@end
