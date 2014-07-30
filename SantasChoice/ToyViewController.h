//
//  ToyViewController.h
//  SantasChoice
//
//  Created by Iván Mervich on 7/30/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ToyViewControllerDelegate
- (void)childAcceptedTrain;
- (void)childDemandedPlaystation4;
@end

@interface ToyViewController : UIViewController

@property id <ToyViewControllerDelegate> delegate;

@end
