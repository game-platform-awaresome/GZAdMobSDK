//
//  GDTInterstitialAd.h
//  Pods
//
//  Created by Monkey on 2016/12/23.
//
//

#ifndef GDTInterstitialAd_h
#define GDTInterstitialAd_h

#import <UIKit/UIKit.h>
#import "GDTMobInterstitial.h"

@protocol  GZMobInterstitialAdDelegate <NSObject>

@optional
/**
 *  广告预加载成功回调
 *  详解:当接收服务器返回的广告数据成功后调用该函数
 */
- (void)interstitialSuccessToLoadAd;

/**
 *  广告预加载失败回调
 *  详解:当接收服务器返回的广告数据失败后调用该函数
 */
- (void)interstitialFailToLoadAd:(NSError *)error;

/**
 *  插屏广告将要展示回调
 *  详解: 插屏广告即将展示回调该函数
 */
- (void)interstitialWillPresentScreen;

/**
 *  插屏广告视图展示成功回调
 *  详解: 插屏广告展示成功回调该函数
 */
- (void)interstitialDidPresentScreen;

/**
 *  插屏广告展示结束回调
 *  详解: 插屏广告展示结束回调该函数
 */
- (void)interstitialDidDismissScreen;

/**
 *  应用进入后台时回调
 *  详解: 当点击下载应用时会调用系统程序打开，应用切换到后台
 */
- (void)interstitialApplicationWillEnterBackground;

/**
 *  插屏广告曝光回调
 */
- (void)interstitialWillExposure;

/**
 *  插屏广告点击回调
 */
- (void)interstitialClicked;

/**
 *  点击插屏广告以后即将弹出全屏广告页
 */
- (void)interstitialAdWillPresentFullScreenModal;

/**
 *  点击插屏广告以后弹出全屏广告页
 */
- (void)interstitialAdDidPresentFullScreenModal;

/**
 *  全屏广告页将要关闭
 */
- (void)interstitialAdWillDismissFullScreenModal;

/**
 *  全屏广告页被关闭
 */
- (void)interstitialAdDidDismissFullScreenModal;

@end

@interface GDTInterstitialAd : NSObject<GDTMobInterstitialDelegate>
{
    GDTMobInterstitial *_interstitialObj;
}

/**
 *  委托对象
 */
@property (nonatomic, weak) id<GZMobInterstitialAdDelegate> delegate;

-(void)setGDTMobInterstitial:(NSString *)appkey andPlacementId:(NSString *)placementId;

-(UIView *)getView:(NSString *)appkey andPlacementId:(NSString *)placementId;

-(void)setIsGpsOn:(BOOL)isGpsOn;

/**
 *  广告发起请求方法
 *  详解：[必选]发起拉取广告请求
 */
-(void)loadAd;

/**
 *  广告展示方法
 *  详解：[必选]发起展示广告请求, 必须传入用于显示插播广告的UIViewController
 */
-(void)presentFromRootViewController:(UIViewController *)rootViewController;

@end

#endif /* GDTInterstitialAd_h */
