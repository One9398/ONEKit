//
//  NSString+ONE.h
//  ONEKitExample
//
//  Created by Simon on 16/7/2.
//  Copyright © 2016年 Elliot. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ONE)

/**
 *  The method is using to decode for URL String.
 *  @return Deocded URL String.
 */
-(NSString *)one_URLDecodedString;

/**
 *  The method is using to encode for URL String.
 *  @return Encoded URL String.
 */
- (NSString *)one_URLEncodedString;

@end
