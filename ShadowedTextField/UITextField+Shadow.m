//
//  UITextField+Shadow.m
//  ShadowedTextField
//
//  Created by Spirit Tu on 5/26/2014.
//  Copyright (c) 2014 Spirit Tu. All rights reserved.
//

#import "UITextField+Shadow.h"

@implementation UITextField (Shadow)

@dynamic shadowColor;
@dynamic shadowOffset;

- (void)applyShadow {
	[self applyShadowWithOffset:CGSizeMake(1, 1) andColor:[UIColor grayColor]];
}

- (void)applyShadowWithOffset:(CGSize)offset andColor:(UIColor*)color {
	self.shadowColor = color;
	self.shadowOffset = offset;
	[self setShadowedText:self.text];
}

- (void)setShadowedText:(NSString*)text {
	NSShadow* shadow = [[NSShadow alloc] init];
	shadow.shadowColor = self.shadowColor;
	shadow.shadowOffset = self.shadowOffset;
	id attributes = @{
		NSShadowAttributeName: shadow,
		NSFontAttributeName: self.font
	};
	self.attributedText = [[NSAttributedString alloc] initWithString:text attributes:attributes];
}

@end
