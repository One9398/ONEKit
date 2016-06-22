//
//  UIButton+Delaytrigger.h
//  ONEKitExample
//
//  Created by Simon on 16/6/22.
//  Copyright © 2016年 Elliot. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Delaytrigger)

/**
 *  A Boolean value indicating whether the button need delay click,default is No. Set YES to avoid button is clicked repeatability within a short time. 
 */
@property (nonatomic, assign)BOOL needDelayClick;

/**
 *  The duration time to avoid button being re-click after button is clicked. Only in effect when "needDelayClick" is set YES, Default time is 1.0s.
 */
@property (nonatomic, assign)NSTimeInterval clickDurationTime;

@end
