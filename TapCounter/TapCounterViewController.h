//
//  TapCounterViewController.h
//  TapCounter
//
//  Created by Łukasz Adamczak on 5/7/11.
//  Copyright 2011 czak.pl All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TapCounterViewController : UIViewController {
}

@property (nonatomic, assign) int counter;
@property (nonatomic, retain) IBOutlet UIButton *button;

- (IBAction)increment;

@end
