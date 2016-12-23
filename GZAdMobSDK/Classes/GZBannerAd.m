//
//  GZBannerAd.m
//  Pods
//
//  Created by Monkey on 2016/12/22.
//
//

#import "GZBannerAd.h"

@implementation GZBannerAd

//-(id)initWithFrame:(CGRect)frame andAppkeyy:(NSString *)appkey andPlacementId:(NSString *)placementId{
//    _bannerView = [[GDTMobBannerView alloc] initWithFrame:frame appkey:appkey placementId:placementId];
//    _bannerView.delegate = self;
//}

-(void)test{
    NSLog(@" GZ Banner Ad ------- test funcation");
}

-(UIView *)getBannerView:(CGRect)frame andAppkeyy:(NSString *)appkey andPlacementId:(NSString *)placementId {

//        _bannerView = [[GDTMobBannerView alloc] initWithFrame:frame appkey:appkey placementId:placementId];
    _bannerView = [[GDTMobBannerView alloc] initWithFrame:frame appkey:appkey placementId:placementId];
    _bannerView.delegate = self;
    return _bannerView;
}

-(UIView *)getBannerView {
    return _bannerView;
}

-(void)loadAdAndShow{
    
    if (_bannerView != nil) {
        [_bannerView loadAdAndShow];
    }
}

-(void)setCurrentViewController:(UIViewController *)currentViewController{
    _bannerView.currentViewController = currentViewController;
}

-(void)setIsGpsOn:(BOOL)isGpsOn{
    _bannerView.isGpsOn = isGpsOn;
}

-(void)setInterval:(int)interval{
    _bannerView.interval = interval;
}

-(void)setShowCloseBtn:(BOOL)showCloseBtn{
    _bannerView.showCloseBtn = showCloseBtn;
}

-(void)setIsAnimationOn:(BOOL)isAnimationOn{
    _bannerView.isAnimationOn = isAnimationOn;
}

-(void)bannerViewClicked{
    if (_delegate != nil) {
        [_delegate bannerViewClicked];
    }
}

-(void)bannerViewWillClose{
    if (_delegate != nil) {
        [_delegate bannerViewWillClose];
    }
}

-(void)bannerViewDidReceived{
    if (_delegate != nil) {
        [_delegate bannerViewDidReceived];
    }
}

-(void)bannerViewWillExposure{
    if (_delegate != nil) {
        [_delegate bannerViewWillExposure];
    }
}

-(void)bannerViewFailToReceived:(NSError *)error{
    if (_delegate != nil) {
        [_delegate bannerViewFailToReceived:error];
    }
}

-(void)bannerViewWillLeaveApplication{
    if (_delegate != nil) {
        [_delegate bannerViewWillLeaveApplication];
    }
}

@end
