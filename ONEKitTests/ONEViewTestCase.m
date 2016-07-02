//
//  ONEViewTestCase.m
//  ONEKitExample
//
//  Created by Simon on 16/6/24.
//  Copyright © 2016年 Elliot. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ONEView.h"
@interface ONEViewTestCase : XCTestCase

@end

@implementation ONEViewTestCase

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSetFrame {
	UIView *view = [[UIView alloc] initWithFrame: CGRectZero];
	view.one_x = 10;
	view.one_y = 20;
	view.one_width = 30;
	view.one_height = 40;
	XCTAssertTrue(view.frame.origin.x == 10);
	XCTAssertTrue(20 == view.frame.origin.y);
	XCTAssertTrue(30 == view.frame.size.width);
	XCTAssertTrue(40 == view.frame.size.height);
	XCTAssertTrue(CGSizeEqualToSize(CGSizeMake(30, 40), view.frame.size));
	
	view.one_origin = CGPointMake(20, 40);
	view.one_size = CGSizeMake(60, 80);
	XCTAssertTrue(CGPointEqualToPoint(view.frame.origin, CGPointMake(20, 40)));
	XCTAssertTrue(CGSizeEqualToSize(CGSizeMake(60, 80), view.frame.size));
	
	view.one_centerX = 30;
	view.one_centerY = 50;
	XCTAssertTrue(30 == view.center.x);
	XCTAssertTrue(50 == view.center.y);
	
}

- (void)testGetFrame {
	UIView *view = [[UIView alloc] initWithFrame: CGRectZero];
	view.frame = CGRectMake(5, 15, 25, 35);
	
	XCTAssertTrue(view.one_x == 5);
	XCTAssertTrue(view.one_y == 15);
	XCTAssertTrue(view.one_height == 35);
	XCTAssertTrue(view.one_width == 25);
	XCTAssertTrue(CGPointEqualToPoint(view.one_origin, CGPointMake(5, 15)));
	XCTAssertTrue(CGSizeEqualToSize(view.one_size, CGSizeMake(25, 35)));
	XCTAssertTrue(view.one_centerX == view.center.x);
	XCTAssertTrue(view.one_centerY == view.center.y);
	
}   

@end
