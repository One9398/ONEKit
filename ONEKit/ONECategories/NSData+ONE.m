//
//  NSData+ONE.m
//  ONEKitExample
//
//  Created by Simon on 16/7/2.
//  Copyright © 2016年 Elliot. All rights reserved.
//

#import "NSData+ONE.h"

@implementation NSData (ONE)

- (void)one_decompressedImageFromJPEGDataWithCallback:(JPEGWasDecompressedCallback)callback {
	uint8_t character;
	[self getBytes:&character length:1];
	
	if (character != 0xFF) {
		callback(nil);
		return;
	}
	
	CGDataProviderRef dataProvider = CGDataProviderCreateWithCFData((__bridge CFDataRef)self);
	CGImageRef imageRef = CGImageCreateWithJPEGDataProvider(dataProvider, NULL, NO, kCGRenderingIntentDefault);
	CGDataProviderRelease(dataProvider);
	
	size_t width = CGImageGetWidth(imageRef);
	size_t height = CGImageGetHeight(imageRef);
	size_t bytesPerRow = round(width * 4);
	size_t byteCount = round(height * bytesPerRow);
	void *imageBuffer = malloc(byteCount);
	if (width == 0 || height == 0) {
		dispatch_async(dispatch_get_main_queue(), ^{
			callback(nil);
		});
		
	}
	
	CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
	CGContextRef imageContext = CGBitmapContextCreate(imageBuffer, width, height, 8, bytesPerRow, colorSpace, kCGImageAlphaNone | kCGImageAlphaNoneSkipLast);

	CGColorSpaceRelease(colorSpace);
	CGContextDrawImage(imageContext, CGRectMake(0, 0, width, height), imageRef);
	CGImageRelease(imageRef);

	CGImageRef outputImage = CGBitmapContextCreateImage(imageContext);
	
	free(imageBuffer);
	CGContextRelease(imageContext);
	
	dispatch_async(dispatch_get_main_queue(), ^{
		UIImage *image = [UIImage imageWithCGImage:outputImage];
		callback(image);
		
	});
	
}

@end
