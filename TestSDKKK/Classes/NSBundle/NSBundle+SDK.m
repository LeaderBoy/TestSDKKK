//
//  NSBundle+SDK.m
//  AFNetworking
//
//  Created by 杨志远 on 2021/3/7.
//

#import "NSBundle+SDK.h"

@implementation NSBundle (SDK)
+ (instancetype)sdk_bundle
{
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"TestSDKKK" ofType:@"bundle"];
    NSBundle *bundle = [NSBundle bundleWithPath:bundlePath];
    return bundle;
}

+(UIImage *)sdk_pngImage:(NSString *)name {
    UIImage *image = nil;
    image = [UIImage imageWithContentsOfFile:[[self sdk_bundle] pathForResource:name ofType:@"png"]];
    return image;
}

//+(UIImage *)sdk_xib:(NSString *)name {
//    UIImage *image = nil;
//    image = [];
//    return image;
//}

@end
