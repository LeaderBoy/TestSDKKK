//
//  TestSDK.m
//  TestSDKKK
//
//  Created by 杨志远 on 2021/3/6.
//

#import "TestSDK.h"
#import "UIView+ZYXIB.h"
#import "NSBundle+SDK.h"

@implementation TestSDK

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

-(void)setup {
    [self zy_loadFromXib];
    
    _imageView.image = [NSBundle sdk_pngImage:@"1"];
}


-(void)testMessage {
    NSLog(@"测试");
}
@end
