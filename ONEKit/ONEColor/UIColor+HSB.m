//
//  UIColor+HSB.m
//  ONEKitExample
//
//  Created by Simon on 16/6/19.
//  Copyright © 2016年 Elliot. All rights reserved.
//

#import "UIColor+HSB.h"
#import "ONEColor.h"

@implementation UIColor (HSB)

+ (UIColor *)one_colorWithHue:(NSUInteger)hue saturation:(NSUInteger)saturation brightness:(NSUInteger)brightness {
	return [UIColor one_colorWithHue:hue saturation:saturation brightness:brightness alpha:1.0];
	
}

+ (UIColor *)one_colorWithHue:(NSUInteger)hue saturation:(NSUInteger)saturation brightness:(NSUInteger)brightness alpha:(CGFloat)alpha {
	NSAssert(isVaildHSBColorComponent(hue, saturation, brightness),
			 @"one_colorWithHue:saturation:brightness method's  hue should not be greater than 360, saturation should not be greater than 100, brightnedd should not be greater than 100");
	
	return [UIColor colorWithHue:(CGFloat)(hue / 360.0) saturation:(CGFloat)(saturation / 100.0) brightness:(CGFloat)(brightness / 100.0) alpha:getVaildAlphaComponent(alpha)];
	
}


@end
