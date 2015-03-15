//
//  NendBannerUtil.m
//  plinth
//
//  Created by jun.hashimoto on 2014/11/17.
//  Copyright (c) 2014年 jun.hashimoto. All rights reserved.
//

#import "NendBannerUtil.h"
#import <UIKit/UIKit.h>

@interface NendBannerUtil()
{
    NSString *nendAPIKey;
    NSString *nendSpotID;
    CGRect adFrame;
}
@end

@implementation NendBannerUtil

- (id)initWithAPIKey:(NSString *)APIKey spotID:(NSString *)spotID width:(NSInteger)width height:(NSInteger)height
{
    self = [super init];
    
    if (self) {
        nendAPIKey = APIKey;
        nendSpotID = spotID;
        adFrame = CGRectMake(0, 0, width, height);
    }
    return self;
}

- (void)setNendAdWithSuperView:(UIView *)superView delegate:(id<NADViewDelegate>)delegate {
    NADView *nadView = [[NADView alloc] initWithFrame:adFrame];
    [nadView setNendID:nendAPIKey spotID:nendSpotID];
    [nadView setIsOutputLog:false];
    [nadView setDelegate:delegate];
    [nadView load];
    [nadView addSubview:superView];
}

@end
