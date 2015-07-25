//
//  GameMap.h
//  scenekit-demo-2
//
//  Created by Ian Wang on 7/11/15.
//  Copyright (c) 2015 Ian Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameMap : NSObject <NSXMLParserDelegate>

- (instancetype)initWithMapNamed:(NSString*)name;

@end
