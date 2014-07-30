//
//  ChimneyLabel.m
//  SantasChoice
//
//  Created by Iván Mervich on 7/30/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "ChimneyLabel.h"

@implementation ChimneyLabel

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        UITapGestureRecognizer *gr = [[UITapGestureRecognizer alloc] initWithTarget:self
                                                                             action:@selector(onTapped:)];
        [self addGestureRecognizer:gr];
        self.isNaughty = arc4random() % 2;
    }
    return self;
}

- (IBAction)onTapped:(UITapGestureRecognizer *)sender
{
    if (self.isNaughty) {
        [self.delegate houseContainsNaughtyChildNamed:self.text];
    } else {
        [self.delegate houseContainsNiceChildNamed:self.text];
    }
}

@end
