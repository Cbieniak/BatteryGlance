//
//  InterfaceController.m
//  BatteryGlance WatchKit Extension
//
//  Created by Christian Bieniak on 28/04/2015.
//  Copyright (c) 2015 BienProgramming. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    
    [InterfaceController openParentApplication:@{} reply:^(NSDictionary *replyInfo, NSError *error) {
        if (replyInfo) {
            NSNumber *batteryLevel = [replyInfo valueForKey:@"kBatteryLevel"];
            BOOL batteryState = [replyInfo valueForKey:@"kBatteryState"];
            [self.percentLabel setTextColor:batteryState ? [UIColor greenColor] : [UIColor redColor]];
            [self.percentLabel setText:[NSString stringWithFormat:@"%d",[batteryLevel intValue]]];
        }
    }];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



