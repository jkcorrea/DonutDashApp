//
//  DonateViewController.h
//  DonutDashMobile
//
//  Created by Jacob Correa on 3/3/14.
//  Copyright (c) 2014 SAE PA Phi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DonateViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *textFirstName;
@property (strong, nonatomic) IBOutlet UITextField *textLastName;
@property (strong, nonatomic) IBOutlet UITextField *textEmail;
@property (strong, nonatomic) IBOutlet UITextField *textReason;
@property (strong, nonatomic) IBOutlet UITextField *textAmount;

@property (strong, nonatomic) IBOutlet UISegmentedControl *radioPayment;

@property (strong, nonatomic) IBOutlet UIButton *submitButton;

@end
