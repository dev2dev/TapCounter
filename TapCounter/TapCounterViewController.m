//
//  TapCounterViewController.m
//  TapCounter
//
//  Created by Łukasz Adamczak on 5/7/11.
//  Copyright 2011 czak.pl All rights reserved.
//

#import "TapCounterViewController.h"

@implementation TapCounterViewController

@synthesize counter;
@synthesize button;


- (void)dealloc {
    self.button = nil;
    
    [super dealloc];
}


#pragma mark - Akcje

- (IBAction)increment {
    [self.button setTitle:[NSString stringWithFormat:@"%d", ++self.counter] forState:UIControlStateNormal];
}


#pragma mark - UIViewController

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self becomeFirstResponder];
}


#pragma mark - UIResponder

- (BOOL)canBecomeFirstResponder {
    return YES;
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake) {
        self.counter = 0;
        [self.button setTitle:@"0" forState:UIControlStateNormal];
    }
}


@end
