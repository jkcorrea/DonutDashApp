//
//  MyUtils.m
//  DonutDashMobile
//
//  Created by Jacob Correa on 3/4/14.
//  Copyright (c) 2014 SAE PA Phi. All rights reserved.
//

#import "MyUtils.h"
#include <regex.h>

@implementation MyUtils

+ (NSRange)matchString:(NSString *)string toRegex:(NSString *)regex
{
    regex_t regex_obj;
    regmatch_t match;
    const char *regex_str;
    const char *match_str;
    int error;
    
    regex_str = [regex UTF8String];
    error = regcomp(&regex_obj, regex_str, REG_EXTENDED);
    if (error)
    {
        return NSMakeRange(NSNotFound, 0);
    }
    
    match_str = [string UTF8String];
    error = regexec(&regex_obj, match_str, 1, &match, 0);
    if (error)
    {
        return NSMakeRange(NSNotFound, 0);
    }
    
    regfree(&regex_obj);
    return NSMakeRange(match.rm_so, match.rm_eo - match.rm_so);
}

@end
