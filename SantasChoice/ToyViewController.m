//
//  ToyViewController.m
//  SantasChoice
//
//  Created by Iván Mervich on 7/30/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "ToyViewController.h"

@interface ToyViewController ()

@end

@implementation ToyViewController

- (IBAction)onAcceptTrain:(id)sender
{
	[self.delegate childAcceptedTrain];
}

- (IBAction)onRejectTrain:(id)sender
{
	[self.delegate childDemandedPlaystation4];
}

@end
