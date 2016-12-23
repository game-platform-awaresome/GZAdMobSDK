//
//  GZViewController.m
//  GZAdMobSDK
//
//  Created by GameZoo on 12/22/2016.
//  Copyright (c) 2016 GameZoo. All rights reserved.
//

#import "GZViewController.h"


@interface GZViewController ()

{
    GZBannerAd *_bannerAd;
    GZMobInterstitial *_interstitialObj;
}

@property (weak, nonatomic) IBOutlet UIView *showView;

@end

@implementation GZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
//    _bannerAd = [[GZBannerAd alloc] initWithFrame:CGRectMake(0, 0, GDTMOB_AD_SUGGEST_SIZE_320x50.width, GDTMOB_AD_SUGGEST_SIZE_320x50.height) andAppkeyy:@"100720253" andPlacementId:@"9079537207574943610"];

    _bannerAd = [[GZBannerAd alloc] init];
    UIView *adView = [_bannerAd getBannerView: CGRectMake(0, 0, GZMOB_AD_SUGGEST_SIZE_320x50.width, GZMOB_AD_SUGGEST_SIZE_320x50.height) andAppkeyy:@"1105344611" andPlacementId:@"4090812164690039"];
    
    _bannerAd.delegate = self; // 设置Delegate
    [_bannerAd setCurrentViewController:self]; //设置当前的ViewController
    [_bannerAd setInterval:30]; //【可选】设置广告轮播时间;范围为30~120秒，0表示不轮播
    [_bannerAd setIsGpsOn:NO]; //【可选】开启GPS定位;默认关闭
    [_bannerAd setShowCloseBtn:NO]; //【可选】展示关闭按钮;默认显示
    [_bannerAd setIsAnimationOn:YES]; //【可选】开启banner轮播和展现时的动画效果;默认开启
    
    [_showView addSubview:adView]; //添加到当前的view中
    
    [_bannerAd loadAdAndShow]; //加载广告并展示

    _interstitialObj = [[GZMobInterstitial alloc] init];
    [_interstitialObj setInterstitialAd:@"1105344611" andPlacementId:@"2030814134092814"];
    _interstitialObj.delegate = self;
    [_interstitialObj setIsGpsOn:NO];
    [_interstitialObj loadAd];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(void)bannerViewWillLeaveApplication{
    NSLog(@"ADBANNER ----------- banner view will leave application");
}

-(void)bannerViewFailToReceived:(NSError *)error{
    NSLog(@"ADBANNER ----------- ");
}

-(void)bannerViewWillExposure{
    NSLog(@"ADBANNER ----------- banner view will exposure");
}

-(void)bannerViewDidReceived{
    NSLog(@"ADBANNER ----------- banner view did received");
}

-(void)bannerViewWillClose{
    NSLog(@"ADBANNER ----------- banner view will close");
}

-(void)bannerViewClicked{
    NSLog(@"ADBANNER ----------- banner view clicked");
}

// 广告预加载成功回调
- (void)interstitialSuccessToLoadAd{
    NSLog(@"INTER ------- interstitialSuccessToLoadAd");
    [_interstitialObj presentFromRootViewController:self];
};
// 广告预加载失败回调
-(void)interstitialFailToLoadAd:(NSError *)error{
    NSLog(@"INTER ------- interstitialFailToLoadAd");
}

// 插屏广告将要展示回调
- (void)interstitialWillPresentScreen{
    NSLog(@"INTER ------- interstitialWillPresentScreen");
};
// 插屏广告视图展示成功回调
- (void)interstitialDidPresentScreen{
    NSLog(@"INTER ------- interstitialDidPresentScreen");
};
// 插屏广告展示结束回调
- (void)interstitialDidDismissScreen{
    NSLog(@"INTER ------- interstitialDidDismissScreen");
};
// 应用进入后台时回调
- (void)interstitialApplicationWillEnterBackground{
    NSLog(@"INTER ------- interstitialApplicationWillEnterBackground");
};
// 插屏广告曝光时回调
- (void) interstitialWillExposure{
    NSLog(@"INTER ------- interstitialWillExposure");
};

@end
