//
//  RegisterViewController.m
//  DonutDashMobile
//
//  Created by Jacob Correa on 3/3/14.
//  Copyright (c) 2014 SAE PA Phi. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController () {
    BTPaymentViewController *paymentViewController;
}

@end

@implementation RegisterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
    
    [self.submitButton.titleLabel setFont: [UIFont fontWithName:@"AllerDisplay" size: self.submitButton.titleLabel.font.pointSize]];
    
    // Set our delegates
    self.textFirstName.delegate = self;
    self.textLastName.delegate = self;
    self.textEmail.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    // Set the next textfield, otherwise exit keyboard
    if (textField == self.textFirstName)
        [self.textLastName becomeFirstResponder];
    else if (textField == self.textLastName)
        [self.textEmail becomeFirstResponder];
    else
        [textField resignFirstResponder];
    
    return YES;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    //NSLog(@"touchesBegan:withEvent:");
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    paymentViewController =
    [BTPaymentViewController paymentViewControllerWithVenmoTouchEnabled:YES];
    paymentViewController.delegate = self;
    
    // Add paymentViewController to a navigation controller.
    UINavigationController *paymentNavigationController =
    [[UINavigationController alloc] initWithRootViewController:paymentViewController];
    
    // Add the cancel button
    paymentViewController.navigationItem.leftBarButtonItem =
    [[UIBarButtonItem alloc]
     initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:paymentNavigationController
     action:@selector(dismissModalViewControllerAnimated:)];
    
    [self presentViewController:paymentNavigationController animated:YES completion:nil];
}

- (void)paymentViewController:(BTPaymentViewController *)paymentViewController
        didSubmitCardWithInfo:(NSDictionary *)cardInfo
         andCardInfoEncrypted:(NSDictionary *)cardInfoEncrypted {
    // Credit Card submitted
}

@end
