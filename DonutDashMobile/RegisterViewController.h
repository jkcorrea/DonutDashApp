//
//  SecondViewController.h
//  DonutDashMobile
//
//  Created by Jacob Correa on 3/3/14.
//  Copyright (c) 2014 SAE PA Phi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegisterViewController : UIViewController
- (IBAction)submitButtonClicked:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *submitButton;

@end
