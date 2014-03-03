//
//  DonutDashTitleLabel.m
//  DonutDashMobile
//
//  Created by Jacob Correa on 3/3/14.
//  Copyright (c) 2014 SAE PA Phi. All rights reserved.
//

#import "DonutDashTitleLabel.h"

@implementation DonutDashTitleLabel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void) awakeFromNib {
    [super awakeFromNib];
    self.font = [UIFont fontWithName:@"AllerDisplay" size: self.font.pointSize];
    
}

@end
