//
//  UIColor+GradientColor.h
//  BxLife_iOS
//
//  Created by lazy on 15/9/2.
//  Copyright (c) 2015年 lazy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIColor+hex.h"

@interface UIColor (GradientColor)

/**
 *  This method is called to build an array of gradient hex colors by passing start and end hex color, and the number of hex colors you need.
 *
 *  @param start start hex color
 *  @param end   end hex color
 *  @param count quantity
 *
 *  @return an array containing gradient colors
 */
+ (NSArray *)gradientHexColorsWithStartHex:(NSString *)start endHex:(NSString *)end count:(NSInteger)count;

@end
