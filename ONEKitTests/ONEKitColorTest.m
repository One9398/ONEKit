//
//  ONEKitColorTest.m
//  ONEKitExample
//
//  Created by Simon on 16/6/19.
//  Copyright © 2016年 Elliot. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ONEColor.h"

@interface ONEKitColorTest : XCTestCase
@property (strong) UIColor *redColor;
@property (strong) UIColor *greenColor;
@property (strong) UIColor *blueColor;

@end

@implementation ONEKitColorTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
	_redColor = [UIColor redColor];
	_blueColor = [UIColor blueColor];
	_greenColor = [UIColor greenColor];
	
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testone_colorWithHex {
	UIColor *redColor = [UIColor one_colorWithHex:0xFF0000];
	XCTAssertTrue(UIColorEqualToColor(redColor, [UIColor redColor]));
	
	UIColor *someColor = [UIColor one_colorWithHex:0x4bd];
	UIColor *anotherColor = [UIColor one_colorWithHex:1213];
	XCTAssertTrue(UIColorEqualToColor(someColor, anotherColor));
	
}

- (void)testOne_colorWithRGB {
	UIColor *greenColor = [UIColor one_colorWithRed:0 green:255 blue:0];
	XCTAssertTrue(UIColorEqualToColor(greenColor, _greenColor));
		
}

- (void)testOne_colorWithHSB {
	UIColor *greenColor = [UIColor one_colorWithHue:120 saturation:100 brightness:100];
	XCTAssertTrue(UIColorEqualToColor(greenColor, _greenColor));
	
}

bool UIColorEqualToColor(UIColor *color1, UIColor *color2){
	return (CGColorEqualToColor(color1.CGColor, color2.CGColor));
	
}

@end
