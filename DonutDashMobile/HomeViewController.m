//
//  FirstViewController.m
//  DonutDashMobile
//
//  Created by Jacob Correa on 3/3/14.
//  Copyright (c) 2014 SAE PA Phi. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self setNeedsStatusBarAppearanceUpdate];
    //[self setBoldText];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}
/* Let's figure this out later... */
/*
-(void)setBoldText {
    // Return if not iOS 6 or greater
    if (![self.descriptionLabel respondsToSelector:@selector(setAttributedText:)])
        return;
    
    DonutDashBodyLabel *label = self.descriptionLabel;

    const CGFloat fontSize = label.font.pointSize;
    UIFont *boldFont = [UIFont fontWithName:@"TradeGothicLTStd-BdCn20" size:fontSize];
    UIFont *regularFont = [UIFont fontWithName:@"TradeGothicLTStd" size:fontSize];
    UIColor *foregroundColor = label.textColor;
    
    // Create the attributes
    NSDictionary *attrs = [NSDictionary dictionaryWithObjectsAndKeys:
                           regularFont, NSFontAttributeName,
                           foregroundColor, NSForegroundColorAttributeName, nil];
    NSDictionary *subAttrs = [NSDictionary dictionaryWithObjectsAndKeys:
                              boldFont, NSFontAttributeName, nil];
    
    NSMutableArray *ranges = [[NSMutableArray alloc] init];
    [ranges addObject:[NSValue valueWithRange:[MyUtils matchString:label.text toRegex:@"\\b\\$30,000\\b"]]];
    [ranges addObject:[NSValue valueWithRange:[MyUtils matchString:label.text toRegex:@"\\bThe Children's Hospital of Pittsburgh\\b"]]];
    NSLog(@"%@", [ranges objectAtIndex:0]);
    
    // Create the attributed string (text + attributes)
    NSMutableAttributedString *attributedText =
    [[NSMutableAttributedString alloc] initWithString:label.text
                                           attributes:attrs];
    
    for (NSValue *range in ranges) {
        [attributedText setAttributes:subAttrs range:range.rangeValue];
    }
    
    // Set it in our UILabel and we are done!
    [label setAttributedText:attributedText];
}
*/
@end
