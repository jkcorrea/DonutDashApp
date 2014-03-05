//
//  CreditCardSegue.m
//  DonutDashMobile
//
//  Created by Jacob Correa on 3/5/14.
//  Copyright (c) 2014 SAE PA Phi. All rights reserved.
//

#import "CreditCardSegue.h"

@implementation CreditCardSegue

- (void) perform {
    UIViewController *src = (UIViewController *) self.sourceViewController;
    UIViewController *dst = (UIViewController *) self.destinationViewController;
    [UIView transitionWithView:src.navigationController.view duration:0.2
                       options:UIViewAnimationOptionTransitionFlipFromLeft
                    animations:^{
                        [src.navigationController pushViewController:dst animated:NO];
                    }
                    completion:NULL];
}

@end
