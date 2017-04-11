//
//  VideoAds.m
//  DeepLink
//
//  Created by Hoang Doan on 4/8/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import "VideoAds.h"
#import <React/RCTBridge.h>
#import <React/RCTUtils.h>
@import FBAudienceNetwork;

@interface VideoAdsView () <FBInstreamAdViewDelegate>

@property (nonatomic, strong) FBInstreamAdView *adView;

@end

@implementation VideoAdsView


//- (UIView *)view
//{
//  
//  
//  self.adView = [[FBInstreamAdView alloc] initWithPlacementID:@"1097860336911021_1412040112159707"];
//  self.adView.delegate = self;
// 
//  [self.adView loadAd];
//  return self.adView;
//  
//}

- (void)setPlacementId:(NSString *)placementId {
  _placementId = placementId;
  [self showAd];
}

- (void)showAd {
  _adView = [[FBInstreamAdView alloc] initWithPlacementID:_placementId];
  _adView.frame = self.bounds;
  _adView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
   _adView.delegate = self;
  [_adView loadAd];
  [self addSubview:_adView];
}

#pragma mark - FBInstreamAdViewDelegate implementation

- (void)adViewDidLoad:(FBInstreamAdView *)adView
{

  [self.adView showAdFromRootViewController:RCTPresentedViewController()];
  
  NSLog(@"Loaded");
}

- (void)adViewDidEnd:(FBInstreamAdView *)adView
{
  _onAdDone(nil);
  NSLog(@"Ended");
  self.adView = nil;


}

- (void)adView:(FBInstreamAdView *)adView didFailWithError:(NSError *)error
{
  
  _onAdError(nil);
  self.adView = nil;
}

- (void)adViewDidClick:(FBInstreamAdView *)adView
{
  
}

- (void)adViewWillLogImpression:(FBInstreamAdView *)adView
{
  
}
@end

