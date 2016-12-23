//
//  GZMobInterstitial.h
//  Pods
//
//  Created by Monkey on 2016/12/23.
//
//

#ifndef GZMobInterstitial_h
#define GZMobInterstitial_h

#import <UIKit/UIKit.h>
#import "GDTInterstitialAd.h"


@interface  GZMobInterstitialAd : NSObject
{
    GDTInterstitialAd *_gdtInterstitialAd;
}

-(void)setInterstitialAd:(NSString *)appkey andPlacementId:(NSString *)placementId;

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

-(void)setDelegate:(id<GZMobInterstitialAdDelegate>)delegate;

@end

#endif /* GZMobInterstitial_h */
