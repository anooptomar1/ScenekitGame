//
//  GameObject.h
//  game_background
//
//  Created by Ian Wang on 6/27/15.
//  Copyright (c) 2015 Ian Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@class GameComponent;
@class MainStage;

@interface GameObject : NSObject {
    NSMutableArray *_components;
}

@property (nonatomic,readonly) NSArray *components;
@property (nonatomic) MainStage *stage;

// Call by MainStage.
- (void)start;
- (void)stop;

- (void)update:(NSTimeInterval)dt;

- (void)addComponent:(GameComponent*)component;
- (void)removeComponent:(GameComponent*)component;

- (id)firstComponentNamed:(NSString*)name;

@end
