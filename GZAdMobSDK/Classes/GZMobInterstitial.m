//
//  GZMobInterstitial.m
//  Pods
//
//  Created by Monkey on 2016/12/23.
//
//

#import "GZMobInterstitial.h"

@implementation GZMobInterstitial


-(void)setInterstitialAd:(NSString *)appkey andPlacementId:(NSString *)placementId{
//    _gdtInterstitialAd = [[GDTInterstitialAd alloc] init];
//    [_gdtInterstitialAd setValue:appkey forKey:placementId];
    _interstitialObj = [[GDTMobInterstitial alloc] initWithAppkey:appkey placementId:placementId];
    _interstitialObj.delegate = self;
}

-(void)loadAd{
    [_interstitialObj loadAd];
}

-(void)setIsGpsOn:(BOOL)isGpsOn{
    _interstitialObj.isGpsOn = isGpsOn;
}

-(void)presentFromRootViewController:(UIViewController *)rootViewController{
    NSLog(@"GZ Mob ------------- presentFromRootViewController");
    [_interstitialObj presentFromRootViewController:rootViewController];
}

/**
 *  广告预加载成功回调
 *  详解:当接收服务器返回的广告数据成功后调用该函数
 */
- (void)interstitialSuccessToLoadAd:(GDTMobInterstitial *)interstitial {
    
    if (_delegate != nil) {
        [_delegate interstitialSuccessToLoadAd];
    }
}

/**
 *  广告预加载失败回调
 *  详解:当接收服务器返回的广告数据失败后调用该函数
 */
- (void)interstitialFailToLoadAd:(GDTMobInterstitial *)interstitial error:(NSError *)error{
    
    if (_delegate != nil) {
        [_delegate interstitialFailToLoadAd:error];
    }
    
}

/**
 *  插屏广告将要展示回调
 *  详解: 插屏广告即将展示回调该函数
 */
- (void)interstitialWillPresentScreen:(GDTMobInterstitial *)interstitial{
    
    if (_delegate != nil) {
        [_delegate interstitialWillPresentScreen];
    }
    
}

/**
 *  插屏广告视图展示成功回调
 *  详解: 插屏广告展示成功回调该函数
 */
- (void)interstitialDidPresentScreen:(GDTMobInterstitial *)interstitial{
    
    if (_delegate != nil) {
        [_delegate interstitialDidPresentScreen];
    }
    
}

/**
 *  插屏广告展示结束回调
 *  详解: 插屏广告展示结束回调该函数
 */
- (void)interstitialDidDismissScreen:(GDTMobInterstitial *)interstitial{
    
    if (_delegate != nil) {
        [_delegate interstitialDidDismissScreen];
    }
    
}

/**
 *  应用进入后台时回调
 *  详解: 当点击下载应用时会调用系统程序打开，应用切换到后台
 */
- (void)interstitialApplicationWillEnterBackground:(GDTMobInterstitial *)interstitial{
    
    if (_delegate != nil) {
        [_delegate interstitialApplicationWillEnterBackground];
    }
    
}

/**
 *  插屏广告曝光回调
 */
- (void)interstitialWillExposure:(GDTMobInterstitial *)interstitial{
    
    if (_delegate != nil) {
        [_delegate interstitialWillExposure];
    }
    
}

/**
 *  插屏广告点击回调
 */
- (void)interstitialClicked:(GDTMobInterstitial *)interstitial{
    
    if (_delegate != nil) {
        [_delegate interstitialClicked];
    }
    
}

/**
 *  点击插屏广告以后即将弹出全屏广告页
 */
- (void)interstitialAdWillPresentFullScreenModal:(GDTMobInterstitial *)interstitial{
    
    if (_delegate != nil) {
        [_delegate interstitialAdWillPresentFullScreenModal];
    }
    
}

/**
 *  点击插屏广告以后弹出全屏广告页
 */
- (void)interstitialAdDidPresentFullScreenModal:(GDTMobInterstitial *)interstitial{
    
    if (_delegate != nil) {
        [_delegate interstitialAdDidPresentFullScreenModal];
    }
    
}

/**
 *  全屏广告页将要关闭
 */
- (void)interstitialAdWillDismissFullScreenModal:(GDTMobInterstitial *)interstitial{
    
    if (_delegate != nil) {
        [_delegate interstitialAdWillDismissFullScreenModal];
    }
    
}

/**
 *  全屏广告页被关闭
 */
- (void)interstitialAdDidDismissFullScreenModal:(GDTMobInterstitial *)interstitial{
    
    if (_delegate != nil) {
        [_delegate interstitialAdDidDismissFullScreenModal];
    }
    
}


@end
