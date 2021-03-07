//
//  NSBundle+SDK.h
//  AFNetworking
//
//  Created by 杨志远 on 2021/3/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSBundle (SDK)
+ (instancetype)sdk_bundle;
+(UIImage *)sdk_pngImage:(NSString *)name;
@end

NS_ASSUME_NONNULL_END
