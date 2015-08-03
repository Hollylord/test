//
//  ViewController.m
//  test
//
//  Created by apple on 15/7/15.
//  Copyright (c) 2015年 touwho. All rights reserved.
//

#import "ViewController.h"
#import "pictureView.h"
#import "UMSocial.h"

@interface ViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet pictureView *pictureView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pictureView.scrollView.delegate = self;
    
    [UMSocialSnsService presentSnsIconSheetView:self
                                         appKey:nil
                                      shareText:@"你要分享的文字"
                                     shareImage:nil
                                shareToSnsNames:[NSArray arrayWithObjects:UMShareToSina,UMShareToTencent,UMShareToRenren,nil]
                                       delegate:nil];
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{

}

@end
