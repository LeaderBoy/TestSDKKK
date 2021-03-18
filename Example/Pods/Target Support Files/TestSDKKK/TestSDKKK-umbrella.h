#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "NSObject+SDKBundle.h"
#import "TestSDK.h"
#import "UIView+ZYXIB.h"

FOUNDATION_EXPORT double TestSDKKKVersionNumber;
FOUNDATION_EXPORT const unsigned char TestSDKKKVersionString[];

