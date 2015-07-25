//
//  GameObjectManager.h
//  game_background
//
//  Created by Ian Wang on 6/27/15.
//  Copyright (c) 2015 Ian Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@class GameObject;

@interface GameObjectManager : NSObject {
    NSMutableDictionary *_gameObjectBuilders;
}

+ (GameObjectManager*)sharedManager;
- (GameObject*)buildeObjectNamed:(NSString*)name
                     WithOptions:(NSDictionary*)options;

@end
