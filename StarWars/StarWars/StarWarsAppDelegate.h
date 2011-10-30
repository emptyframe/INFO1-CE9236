//
//  StarWarsAppDelegate.h
//  StarWars
//
//  Created by Calvin CHOI on 10/30/11.
//  Copyright 2011 Comedy Central. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVAudioPlayer.h> 

@class View;

@interface StarWarsAppDelegate : UIResponder <UIApplicationDelegate> {
    View *view;
    UIWindow *_window;
    AVAudioPlayer *player;
    

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end
