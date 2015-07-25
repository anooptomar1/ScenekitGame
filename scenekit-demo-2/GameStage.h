//
//  GameStage.h
//  game_background
//
//  Created by Ian Wang on 6/27/15.
//  Copyright (c) 2015 Ian Wang. All rights reserved.
//

#import <SceneKit/SceneKit.h>

@interface GameStage : NSObject

@property (nonatomic,readwrite,weak) SCNScene *scene;

// Return YES to pass down event.
// Default is YES.
- (BOOL)update:(NSTimeInterval)dt;

@end
