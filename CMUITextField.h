//
//  CMUITextField.h
//  TestCastmateELEMENTS
//
//  Created by Andrew Smales on 2015-06-19.
//  Copyright (c) 2015 Andrew Smales. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CMUITextField : UITextField


@property (strong, nonatomic) CALayer *bottomBorder;
@property float bottomBorderHeight;

-(void)addBottomBorder;
-(void)beganEditing:(NSNotification *) notification;
-(void)endedEditing:(NSNotification *) notification;
-(void)fieldChanged:(NSNotification *) notification;

@end
