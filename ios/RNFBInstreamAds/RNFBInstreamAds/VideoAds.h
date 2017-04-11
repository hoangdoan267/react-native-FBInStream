//
//  VideoAds.h
//  DeepLink
//
//  Created by Hoang Doan on 4/8/17.
//  Copyright © 2017 Facebook. All rights reserved.
//
#import <React/RCTViewManager.h>
#import <React/RCTComponent.h>
#import <React/RCTBridgeModule.h>

@import UIKit;

@interface VideoAdsView : UIView

@property (nonatomic, strong) NSString *placementId;
@property (nonatomic, copy) RCTBubblingEventBlock onAdDone;
@property (nonatomic, copy) RCTBubblingEventBlock onAdError;

@end
