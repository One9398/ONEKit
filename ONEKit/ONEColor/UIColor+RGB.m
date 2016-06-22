//
//  UIColor+RGB.m
//  ONEKitExample
//
//  Created by Simon on 16/6/19.
//  Copyright © 2016年 Elliot. All rights reserved.
//

#import "UIColor+RGB.h"
#import "ONEColor.h"

@implementation UIColor (RGB)

+ (UIColor *)one_colorWithHex:(unsigned int)hex {
	return [UIColor one_colorWithHex:hex alpha:1.0];
}

+ (UIColor *)one_colorWithHex:(unsigned int)hex alpha: (CGFloat)alpha{
	NSAssert(hex >= 0 &&
			 hex <= 0xFFFFFF,
			 @"one_colorWithHex value should be not less than 0x00000, or not be greater than 0xFFFFFF.");
	
	return  [UIColor colorWithRed:(CGFloat)(((hex & 0xFF0000) >> 16) / 255.0)
							green:(CGFloat)(((hex & 0x00FF00) >> 8) / 255.0)
							 blue:(CGFloat)(((hex & 0x0000FF) >> 0) / 255.0)
							alpha:getVaildAlphaComponent(alpha)];
}

+ (UIColor *)one_colorWithRed:(NSUInteger)red green:(NSUInteger)green blue:(NSUInteger)blue {
	return [UIColor one_colorWithRed:red green:green blue:blue alpha:1.0];
	
}

+ (UIColor *)one_colorWithRed:(NSUInteger)red green:(NSUInteger)green blue:(NSUInteger)blue alpha:(CGFloat)alpha {
	NSAssert(isVaildOctalColorComponent(red) &&
			 isVaildOctalColorComponent(green) &&
			 isVaildOctalColorComponent(blue),
			 @"one_colorWithRed:green:blue Method's RGB Color Component should not be less than 0, or not be greater than 255.");
	
	return [UIColor colorWithRed:(CGFloat )(red / 255.0) green:(CGFloat)(green / 255.0) blue:(CGFloat)(blue / 255.0) alpha:getVaildAlphaComponent(alpha)];
	
}



@end
