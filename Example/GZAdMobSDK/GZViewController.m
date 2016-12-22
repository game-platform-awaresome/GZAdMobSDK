//
//  GZViewController.m
//  GZAdMobSDK
//
//  Created by GameZoo on 12/22/2016.
//  Copyright (c) 2016 GameZoo. All rights reserved.
//

#import "GZViewController.h"
#import "GZBannerAd.h"

@interface GZViewController ()

{
    GZBannerAd *_bannerAd;
}

@end

@implementation GZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _bannerAd = [GZBannerAd alloc];
    [_bannerAd getBannerView:CGRectMake(0, 0, GDTMOB_AD_SUGGEST_SIZE_320x50.width, GDTMOB_AD_SUGGEST_SIZE_320x50.height) appkey:@"" placementId:@""];
    [_bannerAd loadAdAndShow];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
