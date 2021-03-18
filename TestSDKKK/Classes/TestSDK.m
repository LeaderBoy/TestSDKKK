//
//  TestSDK.m
//  TestSDKKK
//
//  Created by 杨志远 on 2021/3/6.
//

#import "TestSDK.h"
#import "UIView+ZYXIB.h"
#import "NSObject+SDKBundle.h"

@interface TestSDK ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

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
    
    _imageView.image = [self sdk_bundleImage:@"test"];
    
    _label.text = @"测试";
}


-(void)testMessage {
    NSLog(@"测试");
}
@end
