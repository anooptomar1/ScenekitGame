//
//  GameCharacter.m
//  scenekit-demo-2
//
//  Created by Ian Wang on 7/11/15.
//  Copyright (c) 2015 Ian Wang. All rights reserved.
//

#import "GameCharacter.h"

#import "Transform.h"
#import "ActionController.h"
#import "Skin.h"

@implementation GameCharacter

- (GameObject*)buildWithOptions:(NSDictionary *)options {
    
    GameObject *object = [super buildWithOptions:options];
    
    [object addComponent:[[Transform alloc] init]];
    [object addComponent:[[ActionController alloc] init]];
    [object addComponent:[[Skin alloc] init]];
    
    return object;
}

@end
