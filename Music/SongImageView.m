//
//  SongImageView.m
//  Music
//
//  Created by 牛牛 on 16/6/21.
//  Copyright © 2016年 HanghuanTech. All rights reserved.
//

#import "SongImageView.h"


@interface SongImageView()
 
 
@end

@implementation SongImageView
@synthesize allBunmImageView ;



//初始化方法
- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        
        allBunmImageView = [[UIImageView alloc ] initWithFrame:CGRectMake((self.frame.size.width - 160)/2, (self.frame.size.height - 160) / 2, 160, 160)];
        allBunmImageView.layer.masksToBounds = YES;
        allBunmImageView.layer.cornerRadius = 80;

         [self addSubview:allBunmImageView];
        
//        [self startRotating];
    }
    return self;
}

//旋转动画
-(void)startRotating{

    // 1. 初始化动画对象实例
    CABasicAnimation *rotatedAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    // 2. 设置动画属性
    rotatedAnimation.fromValue = [NSNumber numberWithFloat:0.0 ];
    rotatedAnimation.toValue = [NSNumber numberWithFloat: M_PI * 2];
    rotatedAnimation.duration = 50.0;
    rotatedAnimation.repeatCount = MAXFLOAT;
    //3. 添加动画
    [self.layer addAnimation:rotatedAnimation forKey:nil];
    
 }

//暂停动画
-(void)pausedRotating{

    CFTimeInterval pausedTime = [self.layer convertTime:CACurrentMediaTime() toLayer:nil];  //取出当前的运行时间
    self.layer.speed = 0.0;                              //动画速度为 0
    self.layer.timeOffset =  pausedTime;                 // 暂停时间

 }

//继续动画
-(void)continueRotating{
    CFTimeInterval pausedTime = [self.layer timeOffset];  //取出当前的运行时间
    self.layer.speed = 1.0;                               //恢复速度
    self.layer.timeOffset = 0.0;                          //时间偏移量
    self.layer.beginTime = 0.0;                           //开始动画
    CFTimeInterval timeSincePause = [self.layer convertTime:CACurrentMediaTime() toLayer:nil] - pausedTime;//暂停到开始的时间差
    self.layer.beginTime = timeSincePause;

}

@end
