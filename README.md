# GZAdMobSDK -- 接入说明文档v1.0
GameZoo聚合广告sdk，目前支持cocoapods方式进行添加

##1.接入配置

在项目根目录下新建Podfile（如果已经存在则直接打开修改）

```
source 'https://github.com/poormonkey/GZAdMobSDK.git'

target 'ProjectName' do
  pod 'GZAdMobSDK', '~> 1.0'
end

```

保存在后在终端进入项目根目录执行

```
pod install
```

##2.接入代码

###2.1 Banner 广告接入代码

1.在需要导入广告的 ViewController 头文件中导入头文件并声明实例:

```
#import <UIKit/UIKit.h>#import "GZBannerAd.h" //导入GZBannerAd.h头文件
@interface BannerViewController :UIViewController<GZBannerAdDelegate>{	GZBannerAd *_bannerAd;//声明一个GZBannerAd的实例 
}@end
```

2.初始化

```
@implementation BannerViewController- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {	self = [super initWithNibName:@"BannerView" bundle:nibBundleOrNil]; 
	
	if (self) {
		/*		* banner条的宽度开发者可以进行手动设置，用以满足开发场景需求或是适配最新版本的	iphone		* banner条的高度强烈建议开发者采用推荐的高度，否则显示效果会有影响		* sdk提供3种尺寸供开发者在不同设备上使用，这里以320*50为例		*/		_bannerAd = [[GZBannerAd alloc] initWithFrame:CGRectMake(0, 0, GDTMOB_AD_SUGGEST_SIZE_320x50.width,GDTMOB_AD_SUGGEST_SIZE_320x50.height) appkey:@"100720253" placementId:@"9079537207574943610"]; 
	}
   return self;}
```

3.设置参数并添加广告view

```
- (void)viewDidLoad{	[super viewDidLoad];	_bannerAd.delegate = self; // 设置Delegate
    [_bannerAd setCurrentViewController:self]; //设置当前的ViewController
    [_bannerAd setInterval:30]; //【可选】设置广告轮播时间;范围为30~120秒，0表示不轮播
    [_bannerAd setIsGpsOn:NO]; //【可选】开启GPS定位;默认关闭
    [_bannerAd setShowCloseBtn:YES]; //【可选】展示关闭按钮;默认显示
    [_bannerAd setIsAnimationOn:YES]; //【可选】开启banner轮播和展现时的动画效果;默认开启
    
    [self.view addSubview:[_bannerAd getBannerView]]; //添加到当前的view中
    
    [_bannerAd loadAdAndShow]; //加载广告并展示
}
```

4.[可选]实现GZBannerAdDelegate协议

您可以通过实现 GZBannerAdDelegate 中定义的方法，来跟踪广告生命周期中的各个阶段，这些方法定义如下:

```
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
```