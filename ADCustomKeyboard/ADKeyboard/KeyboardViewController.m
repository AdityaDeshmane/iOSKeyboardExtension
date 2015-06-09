//
//  KeyboardViewController.m
//  ADKeyboard
//
//  Created by Aditya Deshmane on 09/06/15.
//  Copyright (c) 2015 Aditya Deshmane. All rights reserved.
//

#import "KeyboardViewController.h"

@interface KeyboardViewController ()
@end

@implementation KeyboardViewController

- (void)updateViewConstraints {
    [super updateViewConstraints];
    
    // Add custom view sizing constraints here
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    /* Set keyboardView as view */
    UINib *viewFile = [UINib nibWithNibName:@"KeyboardView" bundle:nil];
    NSArray *arrViews = [viewFile instantiateWithOwner:self options:nil];
    self.view = [arrViews objectAtIndex:0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated
}

- (void)textWillChange:(id<UITextInput>)textInput {
    // The app is about to change the document's contents. Perform any preparation here.
}

- (void)textDidChange:(id<UITextInput>)textInput {
    // The app has just changed the document's contents, the document context has been updated.
    
    UIColor *textColor = nil;
    if (self.textDocumentProxy.keyboardAppearance == UIKeyboardAppearanceDark) {
        textColor = [UIColor whiteColor];
    } else {
        textColor = [UIColor blackColor];
    }
}

- (IBAction)keyboardKeyPressed:(id)sender
{
    /* Insert text as per button title */
    UIButton *btn = (UIButton*)sender;
    [self.textDocumentProxy insertText:btn.titleLabel.text];
}
@end
