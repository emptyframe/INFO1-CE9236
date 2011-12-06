//
//  ViewController.h
//  TabBar
//
//  Created by Calvin CHOI on 12/5/11.
//  Copyright (c) 2011 Comedy Central. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSString *text;
}

- (id) initWithText: (NSString *) t
    title: (NSString *) title
    image: (UIImage *) image
    badge: (NSString *) badge;

@property (nonatomic, copy) IBOutlet NSString *text;

@end
