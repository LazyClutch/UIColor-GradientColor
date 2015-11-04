//
//  UIColor+hex.h
//  LazyInsta
//
//  Created by lazy on 15/8/12.
//  Copyright (c) 2015年 lazy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (hex)

/**
 *  该方法通过传入一个hex色值，返回一个UIColor的实例
 *
 *  @param hexString 传入的hex
 *
 *  @return 用hex表示的UIColor实例
 */
+ (UIColor *)colorWithHex:(NSString *)hexString;

@end
