//
//  UITextField+Shadow.h
//  ShadowedTextField
//
//  Created by Spirit Tu on 5/26/2014.
//  Copyright (c) 2014 Spirit Tu. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 This category can apply shadow (with customized style) on the UITextField.
 */
@interface UITextField (Shadow)

/**
 Apply the shadow with the default style, i.e., the offset is (1, 1) and the
 shadow color is gray.
 */
- (void)applyShadow;

/**
 Apply the shadow with the customized.

 @param offset the offset
 @param color the shadow color
 */
- (void)applyShadowWithOffset:(CGSize)offset andColor:(UIColor*)color;

/**
 The shadow offset.
 */
@property (nonatomic) CGSize shadowOffset;

/**
 The shadow color.
 */
@property (nonatomic) UIColor* shadowColor;

@end
