//
//  SongImageView.h
//  Music
//
//  Created by 牛牛 on 16/6/21.
//  Copyright © 2016年 HanghuanTech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SongImageView : UIImageView{
    @private
     UIImageView *allBunmImageView;
}
//@property (nonatomic, retain) UIImage *allBunmImageView;
@property (nonatomic, retain) UIImageView *allBunmImageView;

-(void)startRotating;//开始动画

-(void)pausedRotating;//暂停动画

-(void)continueRotating;//继续动画

@end
