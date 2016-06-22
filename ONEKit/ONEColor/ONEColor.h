//
//  ONEColor.h
//  ONEKitExample
//
//  Created by Simon on 16/6/19.
//  Copyright © 2016年 Elliot. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIColor+HSB.h"
#import "UIColor+RGB.h"
@interface ONEColor : UIColor

CGFloat getVaildAlphaComponent(CGFloat alpha);

bool isVaildHSBColorComponent(NSUInteger hux, NSUInteger saturation, NSUInteger brightness);

bool isVaildOctalColorComponent(NSInteger component);


@end
