//
//  CreditCardViewController.m
//  DonutDashMobile
//
//  Created by Jacob Correa on 3/5/14.
//  Copyright (c) 2014 SAE PA Phi. All rights reserved.
//

#import "CreditCardViewController.h"

@interface CreditCardViewController ()

@end

@implementation CreditCardViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //[self.SubmitButton.titlelabel setFont: []
    //Set Delegates
    self.textCardNumber.delegate = self;
    self.textExpDate.delegate = self;
    self.textSecurityCode.delegate =self;
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    // Set the next textfield, otherwise exit keyboard
    if (textField == self.textCardNumber)
        [self.textExpDate becomeFirstResponder];
    else if (textField == self.textExpDate)
        [self.textSecurityCode becomeFirstResponder];
    else
        [textField resignFirstResponder];
    return YES;
}


- (IBAction)submitButton:(id)sender {
}
@end
