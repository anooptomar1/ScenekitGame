//
//  Model.m
//  game_background
//
//  Created by Ian Wang on 6/27/15.
//  Copyright (c) 2015 Ian Wang. All rights reserved.
//

#import "Skin.h"
#import "Transform.h"

@implementation Skin

- (void)start {
    Transform *trans = [self.gameObject firstComponentNamed:@"Transform"];
    
    SCNNode *node = [SCNNode node];
    node.geometry = [SCNCone coneWithTopRadius:0.0f bottomRadius:0.5f height:1.0f];
    [trans.node addChildNode:node];
}

@end
