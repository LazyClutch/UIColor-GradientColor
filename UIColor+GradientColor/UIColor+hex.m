//
//  UIColor+hex.m
//  LazyInsta
//
//  Created by lazy on 15/8/12.
//  Copyright (c) 2015年 lazy. All rights reserved.
//

#import "UIColor+hex.h"

@implementation UIColor (hex)

+ (UIColor *)colorWithHex:(NSString *)hex {
    NSScanner *scanner = [NSScanner scannerWithString:hex];
    UIColor *color = nil;
    unsigned integer;
    [scanner scanHexInt:&integer];
    if (hex.length == 6) {
        color = [UIColor colorWithRed:(integer >> 16) / 255.0f green:(integer >> 8) % 256 / 255.0f blue:integer % 256 / 255.0f alpha:1.0];
    } else if(hex.length == 3) {
        color = [UIColor colorWithRed:(integer >> 8) * 17 / 255.0f green:(integer >> 4) % 16 * 17 / 255.0f blue:integer % 16 * 17 / 255.0f alpha:1.0];
    }
    return color;
}

@end
