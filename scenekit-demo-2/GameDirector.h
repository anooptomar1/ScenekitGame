//
//  GameDirector.h
//  game_background
//
//  Created by Ian Wang on 6/27/15.
//  Copyright (c) 2015 Ian Wang. All rights reserved.
//

#import <SceneKit/SceneKit.h>

@class GameStage;

@interface GameDirector : NSObject <SCNSceneRendererDelegate> {
    NSMutableArray *_stageStack;
}

@property (nonatomic,readwrite,weak) SCNView *gameView;
@property (nonatomic,readonly) NSArray *stageStack;

// Singleton.
+ (GameDirector*)sharedDirector;

// Manage stage stack.
- (void)pushStage:(GameStage*)newStage;
- (void)popStage;
- (GameStage*)topStage;

- (void)renderer:(id<SCNSceneRenderer>)aRenderer updateAtTime:(NSTimeInterval)time;

@end
