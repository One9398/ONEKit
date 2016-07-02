//
//  ViewController.m
//  ONEKitExample
//
//  Created by Simon on 16/6/19.
//  Copyright © 2016年 Elliot. All rights reserved.
//

#import "ViewController.h"
#import <ONEKit/ONEKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

	self.view.backgroundColor = [UIColor one_colorWithHue:120 saturation:100 brightness:100];
	[self configureONEButton];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
	self.view.backgroundColor = [UIColor one_colorWithHex:0xFF00FF];
	
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

#pragma mark - UITest
- (void)configureONEButton {
	UIButton *button = [UIButton buttonWithType:UIButtonTypeContactAdd];
	button.center = self.view.center;
	button.one_y = 44;
	button.needDelayClick = YES;
	button.clickDurationTime = 10.0;
	[button addTarget:self action:@selector(addSomething) forControlEvents:UIControlEventTouchDown];
	[self.view addSubview:button];
}

- (void)addSomething {
	NSLog(@"%s", __FUNCTION__);
}

@end
