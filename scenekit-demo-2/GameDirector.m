//
//  GameDirector.m
//  game_background
//
//  Created by Ian Wang on 6/27/15.
//  Copyright (c) 2015 Ian Wang. All rights reserved.
//

#import "GameDirector.h"
#import "GameStage.h"

@interface GameDirector () {
    NSTimeInterval _lastUpdate;
}

@end

@implementation GameDirector

static GameDirector *_sharedDirector;

+ (GameDirector*)sharedDirector {
    
    @synchronized ( self ) {
        
        if ( _sharedDirector == nil ) {
            _sharedDirector = [[self alloc] init];
        }
        return _sharedDirector;
        
    }
}

- (instancetype)init {
    
    if ( self = [super init] ) {
        
        _stageStack = [NSMutableArray array];
        
    }
    
    return self;
}

- (NSArray*)stageStack {
    return [NSArray arrayWithArray:_stageStack];
}

- (void)pushStage:(GameStage *)newStage {
    
    @synchronized ( [self class] ) {
        newStage.scene = self.gameView.scene;
        [_stageStack addObject:newStage];
    }
}

- (void)popStage {
    @synchronized ( [self class] ) {
        [_stageStack removeLastObject];
    }
}

- (GameStage*)topStage {
    return [self.stageStack lastObject];
}

- (void)renderer:(id<SCNSceneRenderer>)aRenderer updateAtTime:(NSTimeInterval)time {
    
    NSTimeInterval dt = time - _lastUpdate;
    _lastUpdate = time;
    
    for ( GameStage *stage in [[self.stageStack copy] reverseObjectEnumerator] )
        if ( ![stage update:dt] )
            break;
}

@end
