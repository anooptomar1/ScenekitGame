//
//  GameViewController.m
//  scenekit-demo-2
//
//  Created by Ian Wang on 6/27/15.
//  Copyright (c) 2015 Ian Wang. All rights reserved.
//

#import "GameViewController.h"
#import "GameDirector.h"
#import "MainStage.h"
#import "GameObjectManager.h"

@implementation GameViewController

-(void)awakeFromNib
{
    // create a new scene
    SCNScene *scene = [SCNScene scene];

    // create and add a camera to the scene
    /*SCNNode *cameraNode = [SCNNode node];
    cameraNode.camera = [SCNCamera camera];
    [scene.rootNode addChildNode:cameraNode];
    
    // place the camera
    cameraNode.position = SCNVector3Make(0, 0, 15);*/
    
    // create and add a light to the scene
    /*SCNNode *lightNode = [SCNNode node];
    lightNode.light = [SCNLight light];
    lightNode.light.type = SCNLightTypeOmni;
    lightNode.position = SCNVector3Make(0, 10, 10);
    [scene.rootNode addChildNode:lightNode];*/
    
    // create and add an ambient light to the scene
    SCNNode *ambientLightNode = [SCNNode node];
    ambientLightNode.light = [SCNLight light];
    ambientLightNode.light.type = SCNLightTypeAmbient;
    ambientLightNode.light.color = [NSColor darkGrayColor];
    [scene.rootNode addChildNode:ambientLightNode];

    // set the scene to the view
    self.gameView.scene = scene;
    
    // allows the user to manipulate the camera
    //self.gameView.allowsCameraControl = YES;
    
    // show statistics such as fps and timing information
    self.gameView.showsStatistics = YES;
    
    // configure the view
    self.gameView.backgroundColor = [NSColor blueColor];
    
    self.gameView.playing = YES;
    self.gameView.loops = YES;
    
    GameDirector *director = [GameDirector sharedDirector];
    director.gameView = self.gameView;
    MainStage *stage = [[MainStage alloc] init];
    [director pushStage:stage];
    
    [stage addGameObject:[[GameObjectManager sharedManager] buildeObjectNamed:@"GameCharacter" WithOptions:nil]];
}

@end
