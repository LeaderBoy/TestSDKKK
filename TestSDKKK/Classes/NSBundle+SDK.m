//
//  NSBundle+SDK.m
//  AFNetworking
//
//  Created by 杨志远 on 2021/3/7.
//

#import "NSBundle+SDK.h"
#import "TestSDK.h"

@implementation NSBundle (SDK)
+ (instancetype)sdk_bundle
{
//    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
//    NSString *path = [bundle pathForResource:@"TestSDKKK" ofType:@"framework"];
//    NSBundle *SDKBundle = [NSBundle bundleWithPath:path];

    NSString *bundlePath = [[NSBundle bundleForClass:[TestSDK class]] pathForResource:@"TestSDKKK" ofType:@"bundle"];

    NSLog(@"bundle:%@",bundlePath);

    NSBundle *bundle = [NSBundle bundleWithPath:bundlePath];
    return bundle;
}

+(UIImage *)sdk_pngImage:(NSString *)name {
    UIImage *image = nil;
    image = [UIImage imageWithContentsOfFile:[[self sdk_bundle] pathForResource:name ofType:@"png"]];
    
    NSLog(@"图%@",image);

    return image;
}

//+(UIImage *)sdk_xib:(NSString *)name {
//    UIImage *image = nil;
//    image = [];
//    return image;
//}

@end
