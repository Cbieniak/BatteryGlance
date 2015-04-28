//
//  InterfaceController.h
//  BatteryGlance WatchKit Extension
//
//  Created by Christian Bieniak on 28/04/2015.
//  Copyright (c) 2015 BienProgramming. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController : WKInterfaceController
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *percentLabel;

@end
