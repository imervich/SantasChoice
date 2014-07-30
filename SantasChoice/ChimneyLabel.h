//
//  ChimneyLabel.h
//  SantasChoice
//
//  Created by Iván Mervich on 7/30/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ChimneyLabelDelegate
- (void)houseContainsNaughtyChildNamed:(NSString *)name;
- (void)houseContainsNiceChildNamed:(NSString *)name;
@end

@interface ChimneyLabel : UILabel

@property id<ChimneyLabelDelegate> delegate;

@property BOOL isNaughty;

@end
