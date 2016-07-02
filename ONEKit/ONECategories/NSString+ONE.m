//
//  NSString+ONE.m
//  ONEKitExample
//
//  Created by Simon on 16/7/2.
//  Copyright © 2016年 Elliot. All rights reserved.
//

#import "NSString+ONE.h"

@implementation NSString (ONE)

-(NSString *)one_URLDecodedString
{
	return [self stringByRemovingPercentEncoding];
}

- (NSString *)one_URLEncodedString
{
	return [self stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet characterSetWithCharactersInString:@"!$&'()*+,-./:;=?@_~%#[]"]];
}

@end
