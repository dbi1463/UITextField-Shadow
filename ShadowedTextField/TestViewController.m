//
//  TestViewController.m
//  ShadowedTextField
//
//  Created by Spirit Tu on 5/26/2014.
//  Copyright (c) 2014 Spirit Tu. All rights reserved.
//

#import "TestViewController.h"

#import "UITextField+Shadow.h"

@implementation TestViewController {
	BOOL _useDefaultColor;
}

- (void)viewDidLoad {
	[super viewDidLoad];
	// Apply the shadow with the default style
	[self.textField applyShadow];
}

- (IBAction)dismissKeyboard:(id)sender {
	[self.textField resignFirstResponder];
}

- (IBAction)changeShadowColorPressed:(id)sender {
	self.textField.shadowColor = _useDefaultColor? [UIColor grayColor] : [UIColor blueColor];
	_useDefaultColor = !_useDefaultColor;
}

@end
