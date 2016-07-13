//
//  ViewController.m
//  Music
//
//  Created by 牛牛 on 16/6/20.
//  Copyright © 2016年 HanghuanTech. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    
    self.rotationImageV.allBunmImageView.image = [UIImage imageNamed:@"栏目—播放"];
    [self.rotationImageV startRotating];  //开始旋转
    
    UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    UIVisualEffectView *effectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect ];
    effectView.alpha = 0.5;
    effectView.frame = [[UIScreen mainScreen ] bounds];
    [self.backGroundImageView addSubview:effectView ] ;
    
}

//暂停 和 继续 按钮的点击事件
- (IBAction)pausedClick:(UIButton *)sender {
    
    
    if (sender.tag == 0) {
        
        [self.rotationImageV pausedRotating];
        sender.tag =1;
    }else{
    
        [self.rotationImageV continueRotating];
        sender.tag = 0;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
