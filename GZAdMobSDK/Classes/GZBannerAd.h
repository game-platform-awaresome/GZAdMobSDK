//
//  GZBannerAd.h
//  Pods
//
//  Created by Monkey on 2016/12/22.
//
//

#ifndef GZBannerAd_h
#define GZBannerAd_h

#import <UIKit/UIKit.h>
#import "GDTMobBannerView.h"

/**
 *  开发者在嵌入Banner条时，可以手动设置Banner条的宽度用来满足场景需求，
 *  而高度的话不建议更改，否则显示效果会有影响
 */
#define GZMOB_AD_SUGGEST_SIZE_320x50    CGSizeMake(320, 50) //For iPhone
#define GZMOB_AD_SUGGEST_SIZE_468x60    CGSizeMake(468, 60) //For iPad
#define GZMOB_AD_SUGGEST_SIZE_728x90    CGSizeMake(728, 90) //For iPad

@protocol GZBannerAdDelegate <NSObject>

// 请求广告条数据成功后调用
- (void)bannerViewDidReceived;
// 请求广告条数据失败后调用
- (void)bannerViewFailToReceived:(NSError *)error;
// 应用进入后台时调用
- (void)bannerViewWillLeaveApplication;
// 广告条曝光回调
- (void)bannerViewWillExposure;
// 广告条点击回调
- (void)bannerViewClicked;
// banner条被用户关闭时调用
- (void)bannerViewWillClose;

@end

@interface GZBannerAd : NSObject<GDTMobBannerViewDelegate>

{
    GDTMobBannerView *_bannerView;//声明一个GDTMobBannerView的实例
}


@property(nonatomic,weak) id<GZBannerAdDelegate> delegate;

//-(id)initWithFrame:(CGRect)frame andAppkeyy:(NSString *)appkey andPlacementId:(NSString *)placementId;

//获取广告位的view
-(UIView *)getBannerView:(CGRect)frame andAppkeyy:(NSString *)appkey andPlacementId:(NSString *)placementId;

//获取广告位的view
-(UIView *)getBannerView;

//加载并显示广告
-(void)loadAdAndShow;

//设置轮播时间，默认30s
-(void)setInterval:(int)interval;

//设置是否开启GPS定位;默认关闭
-(void)setIsGpsOn:(BOOL)isGpsOn;

//设置是否开启banner轮播和展现时的动画效果;默认开启
-(void)setIsAnimationOn:(BOOL)isAnimationOn;

//设置是否展示关闭按钮;默认显示
-(void)setShowCloseBtn:(BOOL)showCloseBtn;

-(void)setCurrentViewController:(UIViewController *)currentViewController;

-(void)test;

@end

#endif /* GZBannerAd_h */
