//
//  UIColor+RGB.h
//  ONEKitExample
//
//  Created by Simon on 16/6/19.
//  Copyright © 2016年 Elliot. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (RGB)

+ (UIColor *)one_colorWithHex:(unsigned int)hex;

+ (UIColor *)one_colorWithHex:(unsigned int)hex alpha: (CGFloat)alpha;

+ (UIColor *)one_colorWithRed:(NSUInteger)red green:(NSUInteger)green blue:(NSUInteger)blue;


@end
