//
//  GameObjectBuilder.h
//  game_background
//
//  Created by Ian Wang on 6/27/15.
//  Copyright (c) 2015 Ian Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameObject.h"
#import "GameComponent.h"

@interface GameObjectBuilder : NSObject

- (GameObject*)buildWithOptions:(NSDictionary*)options;

@end
