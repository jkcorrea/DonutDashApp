//
//  Constants.h
//  DonutDashMobile
//
//  Created by Jacob Correa on 3/4/14.
//  Copyright (c) 2014 SAE PA Phi. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <regex.h>

@interface Utils : NSObject
+ (NSRange)matchString:(NSString *)string toRegex:(NSString *)regex;
@end
