//
//  GZMobInterstitial.m
//  Pods
//
//  Created by Monkey on 2016/12/23.
//
//

#import "GZMobInterstitialAd.h"

@implementation GZMobInterstitialAd


-(void)setInterstitialAd:(NSString *)appkey andPlacementId:(NSString *)placementId{
    _gdtInterstitialAd = [[GDTInterstitialAd alloc] init];
    [_gdtInterstitialAd setValue:appkey forKey:placementId];
}

-(void)loadAd{
    [_gdtInterstitialAd loadAd];
}

-(void)setIsGpsOn:(BOOL)isGpsOn{
    [_gdtInterstitialAd setIsGpsOn:isGpsOn];
}

-(void)setDelegate:(id<GZMobInterstitialAdDelegate>)delegate{
    _gdtInterstitialAd.delegate = delegate;
}

-(void)presentFromRootViewController:(UIViewController *)rootViewController{
    NSLog(@"GZ Mob ------------- presentFromRootViewController");
    [_gdtInterstitialAd presentFromRootViewController:rootViewController];
}

@end
