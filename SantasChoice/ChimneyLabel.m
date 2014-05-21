//
//  ChimneyLabel.m
//  SantasChoice
//
//  Created by Orten, Thomas on 21.05.14.
//  Copyright (c) 2014 Orten, Thomas. All rights reserved.
//

#import "ChimneyLabel.h"

@interface ChimneyLabel ()
@property (readwrite) BOOL isNaughty;
@end

@implementation ChimneyLabel

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.isNaughty = arc4random_uniform(2);
        UITapGestureRecognizer *tapGestureRecongnizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTapped:)];
        [self addGestureRecognizer:tapGestureRecongnizer];
    }
    return self;
}

- (IBAction)onTapped:(id)sender
{
    if (self.isNaughty) {
        [self.delegate visitedNaughtyChildNamed:self.childName];
    } else {
        [self.delegate visitedNiceChildNamed:self.childName];
    }
}

- (NSString *)childName
{
    return self.text;
}

@end
