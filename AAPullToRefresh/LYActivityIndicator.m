//
//  LYActivityIndicator.m
//  AAPullToRefreshDemo
//
//  Created by Andrei Dumitru on 6/4/14.
//  Copyright (c) 2014 r-plus. All rights reserved.
//

#import "LYActivityIndicator.h"

@implementation LYActivityIndicator

- (id)init {
    self = [super init];
    if (self) {
        NSMutableArray *images = [[NSMutableArray alloc] init];
        for (NSInteger idx = 1; idx <= 12; idx++) {
            NSString *name = [NSString stringWithFormat:@"image_loading_yellow_%d", idx];
            [images addObject:[UIImage imageNamed:name]];
        }
        self.animationImages = images;
        self.animationDuration = 0.7;
    }
    return self;
}

- (void)startAnimating {
    [super startAnimating];
    
    self.hidden = NO;
}

- (void)stopAnimating {
    [super stopAnimating];
    
    self.hidden = YES;
}

@end
