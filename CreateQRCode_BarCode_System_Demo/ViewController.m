//
//  ViewController.m
//  CreateQRCode_BarCode_System_Demo
//
//  Created by admin on 16/6/13.
//  Copyright © 2016年 AlezJi. All rights reserved.
//http://www.jianshu.com/p/b893690b472e
//iOS中生成指定大小、指定颜色的二维码和条形码


#define iOS_Version ([[[UIDevice currentDevice] systemVersion] floatValue])



#import "ViewController.h"
#import "UIImage+QRAndBar.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //条形码  只能是数组
    UIImage *barImg = [UIImage barcodeImageWithContent:@"123443443"
                                             codeImageSize:CGSizeMake(300, 90)
                                                       red:0.0f
                                                 green:139/255.0f
                                                  blue:139/255.0f];
    CGRect barImgView_Frame = CGRectMake(self.view.bounds.size.width/2-300/2, 100, 300, 90);
    UIImageView *barImgView = [[UIImageView alloc] initWithFrame:barImgView_Frame];
    barImgView.image = barImg;
    //阴影
    barImgView.layer.shadowOffset = CGSizeMake(-0.5, 0.5);
    barImgView.layer.shadowRadius = 0.5;
    barImgView.layer.shadowColor = [UIColor blackColor].CGColor;
    barImgView.layer.shadowOpacity = 0.2;
    [self.view addSubview:barImgView];
    
    
    
    
    //二维码
    UIImage *qrImg = [UIImage qrCodeImageWithContent:@"CreateByJi" codeImageSize:200 logo:[UIImage imageNamed:@"logo.png"] logoFrame:CGRectMake(75, 75, 50, 50)
                                                 red:0.0f
                                               green:139/255.0f
                                                blue:139/255.0f];
    
    CGRect qr_Frame = CGRectMake(self.view.bounds.size.width/2-200/2, CGRectGetMaxY(barImgView.frame)+20, 200, 200);
    UIImageView *qrImgView=[[UIImageView alloc]initWithFrame:qr_Frame];
    qrImgView.image = qrImg;
    //阴影
    qrImgView.layer.shadowOffset = CGSizeMake(0, 0);
    qrImgView.layer.shadowRadius = 5;
    qrImgView.layer.shadowColor = [UIColor blackColor].CGColor;
    qrImgView.layer.shadowOpacity = 0.4;
    [self.view addSubview:qrImgView];

}


@end
