//
//  UIView+ZYXIB.h
//  ZYPlayerView
//
//  Created by 杨志远 on 2019/7/15.
//  Copyright © 2019 BaQiWL. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (ZYXIB)
-(void)zy_edgesToView:(UIView *)view;
-(UIView *)zy_loadFromXib;
@end

NS_ASSUME_NONNULL_END
