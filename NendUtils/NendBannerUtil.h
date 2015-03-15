//
//  NendBannerUtil.h
//  plinth
//
//  Created by jun.hashimoto on 2014/11/17.
//  Copyright (c) 2014年 jun.hashimoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NADView.h"

@interface NendBannerUtil : NSObject
<NADViewDelegate>

- (id)initWithAPIKey:(NSString *)APIKey spotID:(NSString *)spotID width:(NSInteger)width height:(NSInteger)height;
- (void)setNendAdWithSuperView:(UIView *)superView delegate:(id<NADViewDelegate>)delegate;

@end
