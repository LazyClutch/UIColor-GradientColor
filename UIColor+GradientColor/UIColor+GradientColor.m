//
//  UIColor+GradientColor.m
//  BxLife_iOS
//
//  Created by lazy on 15/9/2.
//  Copyright (c) 2015年 lazy. All rights reserved.
//

#import "UIColor+GradientColor.h"

@implementation UIColor (GradientColor)

+ (NSArray *)gradientHexColorsWithStartHex:(NSString *)start endHex:(NSString *)end count:(NSInteger)count{
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    NSScanner *scanner = [NSScanner scannerWithString:[start substringWithRange:NSMakeRange(0, 2)]];
    unsigned int startred;
    [scanner setScanLocation:0];
    [scanner scanHexInt:&startred];
    
    scanner = [NSScanner scannerWithString:[start substringWithRange:NSMakeRange(2, 2)]];
    unsigned int startgreen;
    [scanner setScanLocation:0];
    [scanner scanHexInt:&startgreen];
    
    scanner = [NSScanner scannerWithString:[start substringWithRange:NSMakeRange(4, 2)]];
    unsigned int startblue;
    [scanner setScanLocation:0];
    [scanner scanHexInt:&startblue];
    
    scanner = [NSScanner scannerWithString:[end substringWithRange:NSMakeRange(0, 2)]];
    unsigned int endred;
    [scanner setScanLocation:0];
    [scanner scanHexInt:&endred];
    
    scanner = [NSScanner scannerWithString:[end substringWithRange:NSMakeRange(2, 2)]];
    unsigned int endgreen;
    [scanner setScanLocation:0];
    [scanner scanHexInt:&endgreen];
    
    scanner = [NSScanner scannerWithString:[end substringWithRange:NSMakeRange(4, 2)]];
    unsigned int endblue;
    [scanner setScanLocation:0];
    [scanner scanHexInt:&endblue];

    for (int i = 0; i < count; i++) {
        NSInteger red = 0;
        if (startred > endred) {
            red = startred - (int)(((double)i / (double)count) * (double)(startred - endred));
        } else {
            red = startred + (int)(((double)i / (double)count) * (double)(endred - startred));
        }
        
        NSInteger green = 0;
        if (startgreen > endgreen) {
            green = startgreen - (int)(((double)i / (double)count) * (double)(startgreen - endgreen));
        } else {
            green = startgreen + (int)(((double)i / (double)count) * (double)(endgreen - startgreen));
        }
        
        NSInteger blue = 0;
        if (startblue > endblue) {
            blue = startblue - (int)(((double)i / (double)count) * (double)(startblue - endblue));
        } else {
            blue = startblue + (int)(((double)i / (double)count) * (double)(endblue - startblue));
        }
        
        NSString *redStr = (red < 16) ? [NSString stringWithFormat:@"0%lX",(long)red] : [NSString stringWithFormat:@"%lX",red];
        NSString *greenStr = (green < 16) ? [NSString stringWithFormat:@"0%lX",(long)green] : [NSString stringWithFormat:@"%lX",green];
        NSString *blueStr = (blue < 16) ? [NSString stringWithFormat:@"0%lX",(long)blue] : [NSString stringWithFormat:@"%lX",blue];
        
        NSString *hex = [NSString stringWithFormat:@"%@%@%@",redStr,greenStr,blueStr];
        [array addObject:hex];

    }
    
    return [array copy];
}

@end
