//
//  GDTBannerAd.m
//  Pods
//
//  Created by Monkey on 2016/12/22.
//
//

#import "GDTBannerAd.h"

@implementation GDTBannerAd

-(id)initWithFrame:(CGRect)frame andAppkey:(NSString *)appkey andPlacementId:(NSString *)placementId {
    _bannerView = [[GDTMobBannerView alloc] initWithFrame:frame appkey:appkey placementId:placementId];
    return self;
}

-(UIView *)getAdView{
    return _bannerView;
}

@end
