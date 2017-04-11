//
//  VideoAdsManager.m
//  DeepLink
//
//  Created by Hoang Doan on 4/9/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import "VideoAdsManager.h"
#import "VideoAds.h"

@implementation VideoAdsManager

RCT_EXPORT_MODULE()
//
@synthesize bridge = _bridge;

- (UIView *)view {
  return [VideoAdsView new];
}

RCT_EXPORT_VIEW_PROPERTY(placementId, NSString)
RCT_EXPORT_VIEW_PROPERTY(onAdDone, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onAdError, RCTBubblingEventBlock)


@end

