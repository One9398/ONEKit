//
//  NSData+ONE.h
//  ONEKitExample
//
//  Created by Simon on 16/7/2.
//  Copyright © 2016年 Elliot. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^JPEGWasDecompressedCallback)(UIImage *decompressedImage);

@interface NSData (ONE)

/**
 *  The Method make data decompress to JPEG Image, if data is valid JPEGData, callback return a UIImage Instance, or return nil.
 *  @param callback Contain a UIImage Instance or nil.
 */
- (void)one_decompressedImageFromJPEGDataWithCallback:(JPEGWasDecompressedCallback)callback;

@end
