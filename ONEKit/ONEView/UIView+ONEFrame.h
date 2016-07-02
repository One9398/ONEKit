//
//  UIView+ONEFrame.h
//  ONEKitExample
//
//  Created by Simon on 16/6/26.
//  Copyright © 2016年 Elliot. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ONEFrame)

- (CGFloat)one_x;
- (CGFloat)one_y;
- (CGSize)one_size;
- (CGPoint)one_origin;
- (CGFloat)one_centerX;
- (CGFloat)one_centerY;
- (CGFloat)one_width;
- (CGFloat)one_height;
- (void)setOne_y:(CGFloat)y;
- (void)setOne_x:(CGFloat)x;
- (void)setOne_width:(CGFloat)width;
- (void)setOne_height:(CGFloat)height;
- (void)setOne_size:(CGSize)size;
- (void)setOne_origin:(CGPoint)point;
- (void)setOne_centerX:(CGFloat)centerX;
- (void)setOne_centerY:(CGFloat)centerY;

@end
