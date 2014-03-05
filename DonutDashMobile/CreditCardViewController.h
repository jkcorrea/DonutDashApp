//
//  CreditCardViewController.h
//  DonutDashMobile
//
//  Created by Jacob Correa on 3/5/14.
//  Copyright (c) 2014 SAE PA Phi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DonutDashTitleLabel.h"

@interface CreditCardViewController : UIViewController <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet DonutDashTitleLabel *textMainTitle;
@property (strong, nonatomic) IBOutlet UILabel *textSubTitle;
@property (strong, nonatomic) IBOutlet UITextField *textCardNumber;
@property (strong, nonatomic) IBOutlet UITextField *textExpDate;
@property (strong, nonatomic) IBOutlet UITextField *textSecurityCode;


@end
