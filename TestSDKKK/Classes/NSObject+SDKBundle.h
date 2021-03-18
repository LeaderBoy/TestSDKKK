//
//  NSObject+SDKBundle.h
//  Dog
//
//  Created by 杨志远 on 2021/3/8.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (SDKBundle)
-(NSBundle *)sdk_bundle;
-(NSBundle *)sdk_bundleForClass:(Class)className;
-(UIImage *)sdk_bundleImage:(NSString *)name;
-(NSBundle *)sdk_resource;
@end

NS_ASSUME_NONNULL_END
