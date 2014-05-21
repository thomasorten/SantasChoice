//
//  ChimneyLabel.h
//  SantasChoice
//
//  Created by Orten, Thomas on 21.05.14.
//  Copyright (c) 2014 Orten, Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ChimneyLabelDelegate
- (void)visitedNaughtyChildNamed:(NSString *)name;
- (void)visitedNiceChildNamed:(NSString *)name;
@end

@interface ChimneyLabel : UILabel
@property id <ChimneyLabelDelegate> delegate;
@property (readonly) BOOL isNaughty;
@property (readonly) NSString *childName;
@end
