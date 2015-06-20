//
//  CMUITextField.m
//  TestCastmateELEMENTS
//
//  Created by Andrew Smales on 2015-06-19.
//  Copyright (c) 2015 Andrew Smales. All rights reserved.
//

#import "CMUITextField.h"

@implementation CMUITextField

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(id)initWithCoder:(NSCoder *)aDecoder {

    self = [super initWithCoder:aDecoder];
    
    self.bottomBorderHeight = 1.5;
    [self addBottomBorder];

    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(beganEditing:) name:@"UITextFieldTextDidBeginEditingNotification" object:self];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(endedEditing:) name:@"UITextFieldTextDidEndEditingNotification" object:self];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(fieldChanged:) name:@"UITextFieldTextDidChangeNotification" object:self];
    
    return self;

}

- (void) beganEditing:(NSNotification *) notification{
    if (notification.object == self) {
        self.bottomBorder.backgroundColor = [UIColor colorWithRed :45.0/255.0 green:140.0/255.0 blue:243.0/255.0 alpha:1.0].CGColor;
    }
}

- (void) endedEditing:(NSNotification *) notification{
    if (notification.object == self) {
        self.bottomBorder.backgroundColor = [UIColor colorWithRed:221.0/255.0 green:221.0/255.0 blue:221.0/255.0 alpha:1.0].CGColor;
    }
}

- (void) fieldChanged:(NSNotification *) notification{
}


- (void)addBottomBorder
{
    self.bottomBorder = [CALayer layer];
    self.bottomBorder.backgroundColor = [UIColor colorWithRed:221.0/255.0 green:221.0/255.0 blue:221.0/255.0 alpha:1.0].CGColor;
    [self.layer addSublayer:self.bottomBorder];
    
}

- (void)layoutSubviews {
    [super layoutSubviews];

    self.bottomBorder.frame = CGRectMake(0, CGRectGetHeight(self.bounds) - self.bottomBorderHeight, CGRectGetWidth(self.bounds), self.bottomBorderHeight);
    
    
}


@end
