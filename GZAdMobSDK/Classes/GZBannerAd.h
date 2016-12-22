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


@interface GZBannerAd : NSObject

{
    GDTMobBannerView *_bannerView;//声明一个GDTMobBannerView的实例
}

-(UIView *)getBannerView:(CGRect)frame appkey:(NSString *)appkey placementId:(NSString *)placementId;

-(void)loadAdAndShow;

@end

#endif /* GZBannerAd_h */
