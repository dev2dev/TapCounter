//
//  TapCounterAppDelegate.h
//  TapCounter
//
//  Created by Łukasz Adamczak on 5/7/11.
//  Copyright 2011 Weblify sp. z o.o. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TapCounterViewController;

@interface TapCounterAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet TapCounterViewController *viewController;

@end
