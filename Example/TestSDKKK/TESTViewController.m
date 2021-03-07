//
//  TESTViewController.m
//  TestSDKKK
//
//  Created by LeaderBoy on 03/06/2021.
//  Copyright (c) 2021 LeaderBoy. All rights reserved.
//

#import "TESTViewController.h"
#import <TestSDK.h>
@interface TESTViewController ()

@end

@implementation TESTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [[[TestSDK alloc]init] testMessage];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
