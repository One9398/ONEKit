//
//  UIButton+Delaytrigger.m
//  ONEKitExample
//
//  Created by Simon on 16/6/22.
//  Copyright © 2016年 Elliot. All rights reserved.
//

#import "UIButton+Delaytrigger.h"
#import <objc/runtime.h>

static const NSTimeInterval defaultDuration = 1.f;
static BOOL _needIgnoreEvent = NO;
static void resetState() {
	_needIgnoreEvent = NO;
	
}

@implementation UIButton (Delaytrigger)

+ (void)load {
	SEL originSEL = @selector(sendAction:to:forEvent:);
	SEL oneSEL = @selector(one_sendAction:to:forEvent:);
	
	Method originMethod = class_getInstanceMethod([self class], originSEL);
	Method oneMethod = class_getInstanceMethod([self class], oneSEL);
	
	const char *typeEncodings = method_getTypeEncoding(originMethod);
	IMP oneIMP = method_getImplementation(oneMethod);
	
	if (class_addMethod([self class], oneSEL, oneIMP, typeEncodings)) {
		class_replaceMethod([self class], originSEL, oneIMP, typeEncodings);
	} else {
		method_exchangeImplementations(originMethod, oneMethod);		
	}
	
}

- (void)one_sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event {
	if (![self isKindOfClass:[UIButton class]]) {
		[self one_sendAction:action to:target forEvent:event];
	} else {
		self.clickDurationTime = self.clickDurationTime != 0 ? self.clickDurationTime : defaultDuration;
		if (_needIgnoreEvent) {
			return;
		} else {
			
			if (self.needDelayClick) {
				_needIgnoreEvent = YES;
				dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(self.clickDurationTime * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
					resetState();
				});
			}
			
			[self one_sendAction:action to:target forEvent:event];
		}
	}
	
}

#pragma mark - property associate
- (void)setClickDurationTime:(NSTimeInterval)clickDurationTime {
	objc_setAssociatedObject(self, @selector(clickDurationTime), @(clickDurationTime), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
	
}

- (NSTimeInterval)clickDurationTime {
	return [objc_getAssociatedObject(self, @selector(clickDurationTime)) doubleValue];
	
}

- (void)setNeedDelayClick:(BOOL)needDelayClick {
	objc_setAssociatedObject(self, @selector(needDelayClick), @(needDelayClick), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
	
}

- (BOOL)needDelayClick {
	return [objc_getAssociatedObject(self, @selector(needDelayClick)) boolValue];
	
}

@end
