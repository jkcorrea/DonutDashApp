//
//  DonateViewController.m
//  DonutDashMobile
//
//  Created by Jacob Correa on 3/3/14.
//  Copyright (c) 2014 SAE PA Phi. All rights reserved.
//

#import "DonateViewController.h"

@interface DonateViewController ()

@end

@implementation DonateViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view.
    
    [self.submitButton.titleLabel setFont: [UIFont fontWithName:@"AllerDisplay" size: self.submitButton.titleLabel.font.pointSize]];
    
    // Set our delegates
    self.textFirstName.delegate = self;
    self.textLastName.delegate = self;
    self.textEmail.delegate = self;
    self.textReason.delegate = self;
    
    // Toolbar for Numpad
    UIToolbar* numberToolbar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 320, 50)];
    numberToolbar.barStyle = UIBarStyleDefault;
    numberToolbar.items = [NSArray arrayWithObjects:
                           [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil],
                           [[UIBarButtonItem alloc]initWithTitle:@"OK" style:UIBarButtonItemStyleDone target:self action:@selector(doneWithNumberPad)],
                           nil];
    [numberToolbar sizeToFit];
    self.textAmount.inputAccessoryView = numberToolbar;
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
    else if (textField == self.textEmail)
        [self.textAmount becomeFirstResponder];
    else
        [textField resignFirstResponder];
    
    return YES;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    //NSLog(@"touchesBegan:withEvent:");
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}

-(void)doneWithNumberPad {
    [self.textReason becomeFirstResponder];
}

@end
