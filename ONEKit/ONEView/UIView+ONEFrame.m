//
//  UIView+ONEFrame.m
//  ONEKitExample
//
//  Created by Simon on 16/6/26.
//  Copyright © 2016年 Elliot. All rights reserved.
//

#import "UIView+ONEFrame.h"

@implementation UIView (ONEFrame)

- (CGFloat)one_x {
	return self.frame.origin.x;
	
}

- (CGFloat)one_y {
	return self.frame.origin.y;
	
}

- (CGFloat)one_width {
	return self.frame.size.width;
	
}

- (CGFloat)one_height {
	return self.frame.size.height;
	
}

- (CGSize)one_size {
	return self.frame.size;
	
}

- (CGPoint)one_origin {
	return self.frame.origin;
	
}

- (CGFloat)one_centerX {
	return self.center.x;
	
}

- (CGFloat)one_centerY {
	return self.center.y;
	
}

- (void)setOne_y:(CGFloat)y {
	CGRect newRect = {CGPointMake(self.frame.origin.x, y), self.frame.size};
	self.frame = newRect;
	
}

- (void)setOne_x:(CGFloat)x {
	CGRect newRect = {CGPointMake(x, self.frame.origin.y), self.frame.size};
	self.frame = newRect;
	
}

- (void)setOne_width:(CGFloat)width {
	CGRect newRect = {self.frame.origin, CGSizeMake(width, self.frame.size.height)};
	self.frame = newRect;
	
}

- (void)setOne_height:(CGFloat)height {
	CGRect newRect = {self.frame.origin, CGSizeMake(self.frame.size.width, height)};
	self.frame = newRect;
	
}

- (void)setOne_centerX:(CGFloat)centerX {
	self.center = CGPointMake(centerX, self.center.y);
	
}

- (void)setOne_centerY:(CGFloat)centerY {
	self.center = CGPointMake(self.center.x, centerY);
	
}

- (void)setOne_size:(CGSize)size {
	CGRect newRect = {self.frame.origin, size};
	self.frame = newRect;
	
}

- (void)setOne_origin:(CGPoint)point {
	CGRect newRect = {point, self.frame.size};
	self.frame = newRect;
	
}

@end
