//
//  GDTBannerAd.h
//  Pods
//
//  Created by Monkey on 2016/12/22.
//
//

#ifndef GDTBannerAd_h
#define GDTBannerAd_h

#import <UIKit/UIKit.h>
#import "GDTMobBannerView.h"

@interface GDTBannerAd : NSObject

{
    GDTMobBannerView *_bannerView;
}

@property(nonatomic, weak) id<GDTMobBannerViewDelegate> delegate;

-(id)initWithFrame:(CGRect)frame andAppkey:(NSString *)appkey andPlacementId:(NSString *)placementId;

-(UIView *)getAdView;

@end

#endif /* GDTBannerAd_h */
