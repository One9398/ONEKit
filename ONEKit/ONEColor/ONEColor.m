//
//  ONEColor.m
//  ONEKitExample
//
//  Created by Simon on 16/6/19.
//  Copyright © 2016年 Elliot. All rights reserved.
//

#import "ONEColor.h"

@implementation ONEColor

CGFloat getVaildAlphaComponent(CGFloat alpha) {
	alpha = MAX(0, alpha);
	alpha = MIN(1.0, alpha);
	return alpha;
	
}

bool isVaildHSBColorComponent(NSUInteger hux, NSUInteger saturation, NSUInteger brightness) {
	return hux <= 360 && saturation <= 100 && brightness <= 100;
	
}

bool isVaildOctalColorComponent(NSInteger component) {
	return component <= 255;
	
}

@end
