//
//  NSObject+SDKBundle.m
//  Dog
//
//  Created by 杨志远 on 2021/3/8.
//

#import "NSObject+SDKBundle.h"

@implementation NSObject (SDKBundle)

- (NSBundle *)sdk_bundleForClass:(Class)className {
    NSBundle *bundle = [NSBundle bundleForClass:className];
    NSString *path = [bundle pathForResource:@"TestSDKKK" ofType:@"framework"];
    NSBundle *SDKBundle = [NSBundle bundleWithPath:path];
    return SDKBundle;
}

-(NSBundle *)sdk_bundle {
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSString *path = [bundle pathForResource:@"TestSDKKK" ofType:@"framework"];
    NSBundle *SDKBundle = [NSBundle bundleWithPath:path];
    
    NSLog(@"SDKBundle:%@",SDKBundle);
    return SDKBundle;
}

-(UIImage *)sdk_bundleImage:(NSString *)name {
    NSString *imageName = [NSString stringWithFormat:@"%@",name];
    UIImage *image = [UIImage imageNamed:imageName inBundle:[self sdk_bundle] compatibleWithTraitCollection:nil];
    NSLog(@"image:%@",image);
    return image;
}

- (NSBundle *)sdk_resource {
    NSString *bundlePath = [[self sdk_bundle] pathForResource:@"Versions/A/Resources/TestSDKKK" ofType:@"bundle"];
    NSBundle *bundle = [NSBundle bundleWithPath:bundlePath];
    NSLog(@"resourceBundle:%@",bundle);
    return bundle;
}



@end
