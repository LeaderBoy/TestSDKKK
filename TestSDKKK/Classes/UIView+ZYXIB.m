//
//  UIView+ZYXIB.m
//  ZYPlayerView
//
//  Created by 杨志远 on 2019/7/15.
//  Copyright © 2019 BaQiWL. All rights reserved.
//

#import "UIView+ZYXIB.h"
#import "NSBundle+SDK.h"
#import <objc/runtime.h>

@implementation UIView (ZYXIB)
-(void)zy_edgesToView:(UIView *)view {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    if (@available(iOS 9.0, *)) {
        NSLayoutConstraint * left = [self.leftAnchor constraintEqualToAnchor:view.leftAnchor];
        NSLayoutConstraint * right = [self.rightAnchor constraintEqualToAnchor:view.rightAnchor];
        NSLayoutConstraint * top = [self.topAnchor constraintEqualToAnchor:view.topAnchor];
        NSLayoutConstraint * bottom = [self.bottomAnchor constraintEqualToAnchor:view.bottomAnchor];
        
        [NSLayoutConstraint activateConstraints:@[left,right,top,bottom]];
    } else {
        // Fallback on earlier versions
        NSAssert(NO, @"需要iOS9及以上");
    }
}

- (UIView *)zy_loadFromXib {
    UIView *contentView = [[NSBundle sdk_bundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil].lastObject;
    [self addSubview:contentView];
    [contentView zy_edgesToView:self];
    return contentView;
}








//+ (void)load
//{
//    static dispatch_once_t theOnceToken;
//    dispatch_once(&theOnceToken, ^
//                  {
//                      Class theClass = object_getClass(self);
//                      SEL theOriginalSelector = @selector(animateWithDuration:delay:options:animations:completion:);
//                      SEL theSwizzledSelector = @selector(swizzled_animateWithDuration:delay:options:animations:completion:);
//                      Method theOriginalMethod = class_getClassMethod(theClass, theOriginalSelector);
//                      Method theSwizzledMethod = class_getClassMethod(theClass, theSwizzledSelector);
//                      
//                      if (!theClass ||!theOriginalSelector || !theSwizzledSelector || !theOriginalMethod || !theSwizzledMethod)
//                      {
//                          abort();
//                      }
//                      
//                      BOOL didAddMethod = class_addMethod(theClass,
//                                                          theOriginalSelector,
//                                                          method_getImplementation(theSwizzledMethod),
//                                                          method_getTypeEncoding(theSwizzledMethod));
//                      
//                      if (didAddMethod)
//                      {
//                          class_replaceMethod(theClass,
//                                              theSwizzledSelector,
//                                              method_getImplementation(theOriginalMethod),
//                                              method_getTypeEncoding(theOriginalMethod));
//                      }
//                      else
//                      {
//                          method_exchangeImplementations(theOriginalMethod, theSwizzledMethod);
//                      }
//                  });
//}
//
//+ (void)swizzled_animateWithDuration:(NSTimeInterval)duration
//                               delay:(NSTimeInterval)delay
//                             options:(UIViewAnimationOptions)options
//                          animations:(void (^)(void))animations
//                          completion:(void (^)(BOOL))completion
//{
//    if (options & UIViewAnimationOptionBeginFromCurrentState)
//    {
//        UIView *theView = [UIView new];
//        theView.alpha = 1;
//        [UIView animateWithDuration:0
//                         animations:^
//         {
//             theView.alpha = 0;
//         }
//                         completion:^(BOOL finished)
//         {
//             [self swizzled_animateWithDuration:duration
//                                          delay:delay
//                                        options:options
//                                     animations:animations
//                                     completion:completion];
//         }];
//    }
//    else
//    {
//        [self swizzled_animateWithDuration:duration
//                                     delay:delay
//                                   options:options
//                                animations:animations
//                                completion:completion];
//    }
//}
@end
