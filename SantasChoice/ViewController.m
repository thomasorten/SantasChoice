//
//  ViewController.m
//  SantasChoice
//
//  Created by Orten, Thomas on 21.05.14.
//  Copyright (c) 2014 Orten, Thomas. All rights reserved.
//

#import "ViewController.h"
#import "ChimneyLabel.h"

@interface ViewController () <ChimneyLabelDelegate>
@property (weak, nonatomic) IBOutlet ChimneyLabel *chimneyLabelOne;
@property (weak, nonatomic) IBOutlet ChimneyLabel *chimneyLabelTwo;
@property (weak, nonatomic) IBOutlet ChimneyLabel *chimneyLabelThree;
@property (weak, nonatomic) IBOutlet ChimneyLabel *chimneyLabelFour;
@property (weak, nonatomic) IBOutlet ChimneyLabel *chimneyLabelFive;
@property (weak, nonatomic) IBOutlet ChimneyLabel *chimneyLabelSix;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.chimneyLabelOne.delegate = self;
    self.chimneyLabelTwo.delegate = self;
    self.chimneyLabelThree.delegate = self;
    self.chimneyLabelFour.delegate = self;
    self.chimneyLabelFive.delegate = self;
    self.chimneyLabelSix.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)visitedNaughtyChildNamed:(NSString *)name
{
    NSLog(@"Naughty child %@", name);
    [self performSegueWithIdentifier:@"GotAToySegue" sender:self];
}

- (void)visitedNiceChildNamed:(NSString *)name
{
    NSLog(@"Nice child %@", name);
}

- (IBAction)unWindFromToySegue:(UIStoryboardSegue *)segue
{

}

@end
