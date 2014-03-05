//
//  DonutDashBodyLabel.m
//  DonutDashMobile
//
//  Created by Jacob Correa on 3/4/14.
//  Copyright (c) 2014 SAE PA Phi. All rights reserved.
//

#import "DonutDashBodyLabel.h"

@implementation DonutDashBodyLabel

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
    self.font = [UIFont fontWithName:@"TradeGothicLTStd" size: self.font.pointSize];
}

@end
