//
//  GZBannerAd.m
//  Pods
//
//  Created by Monkey on 2016/12/22.
//
//

#import "GZBannerAd.h"

@implementation GZBannerAd

-(UIView *)getBannerView:(CGRect)frame appkey:(NSString *)appkey placementId:(NSString *)placementId{

    _bannerView = [[GDTMobBannerView alloc] initWithFrame:frame appkey:appkey placementId:placementId];
    
    return _bannerView;
}

-(void)loadAdAndShow{

    if (_bannerView != nil) {
        [_bannerView loadAdAndShow];
    }
}

@end
