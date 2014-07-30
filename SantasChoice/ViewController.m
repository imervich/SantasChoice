//
//  ViewController.m
//  SantasChoice
//
//  Created by Iván Mervich on 7/30/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "ViewController.h"
#import "ChimneyLabel.h"
#import "ToyViewController.h"

@interface ViewController () <ChimneyLabelDelegate, ToyViewControllerDelegate>

@property (weak, nonatomic) IBOutlet ChimneyLabel *chimney1;
@property (weak, nonatomic) IBOutlet ChimneyLabel *chimney2;
@property (weak, nonatomic) IBOutlet ChimneyLabel *chimney3;
@property (weak, nonatomic) IBOutlet ChimneyLabel *chimney4;
@property (weak, nonatomic) IBOutlet ChimneyLabel *chimney5;

@property NSString *selectedChildName;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.chimney1.delegate = self;
    self.chimney2.delegate = self;
    self.chimney3.delegate = self;
    self.chimney4.delegate = self;
    self.chimney5.delegate = self;
}

#pragma mark ChimneyLabelDelegate

- (void)houseContainsNaughtyChildNamed:(NSString *)name
{
    NSLog(@"Naughty child %@", name);
}

- (void)houseContainsNiceChildNamed:(NSString *)name
{
    NSLog(@"Nice child %@", name);
	// save the child's name
	self.selectedChildName = name;
	[self performSegueWithIdentifier:@"receiveAToySegue" sender:self];

}

#pragma mark ToyViewControllerDelegate

- (void)childAcceptedTrain
{
	[self dismissViewControllerAnimated:YES completion:nil];
}

- (void)childDemandedPlaystation4
{
	for (UIView *subview in self.view.subviews) {

		if ([subview isKindOfClass:[ChimneyLabel class]]) {

			ChimneyLabel *label = (ChimneyLabel *)subview;

			if ([label.text isEqualToString:self.selectedChildName]) {
				label.isNaughty = YES;
				break;
			}
		}
	}

	[self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
	ToyViewController *vc = segue.destinationViewController;
	vc.delegate = self;
}

@end
