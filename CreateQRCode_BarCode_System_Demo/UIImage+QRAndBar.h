//
//  UIImage+QRAndBar.h
//  CreateQRCode_BarCode_System_Demo
//
//  Created by admin on 16/6/13.
//  Copyright © 2016年 AlezJi. All rights reserved.
//
//条形码和二维码


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


@interface UIImage (QRAndBar)


#pragma mark - 生成二维码
//Avilable in iOS 7.0 and later
+ (UIImage *)qrCodeImageWithContent:(NSString *)content
                      codeImageSize:(CGFloat)size
                               logo:(UIImage *)logo
                          logoFrame:(CGRect)logoFrame
                                red:(CGFloat)red
                              green:(CGFloat)green
                               blue:(NSInteger)blue;


#pragma mark - 生成条形码
//Avilable in iOS 8.0 and later
+ (UIImage *)barcodeImageWithContent:(NSString *)content
                       codeImageSize:(CGSize)size
                                 red:(CGFloat)red
                               green:(CGFloat)green
                                blue:(NSInteger)blue;


@end
