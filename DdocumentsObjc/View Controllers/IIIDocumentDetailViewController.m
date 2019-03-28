//
//  IIIDocumentDetailViewController.m
//  DdocumentsObjc
//
//  Created by Ilgar Ilyasov on 3/27/19.
//  Copyright © 2019 Fun-the-mental. All rights reserved.
//

#import "IIIDocumentDetailViewController.h"
#import "../Categories/NSString+WordCount.h"


@implementation IIIDocumentDetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[self documentBody] setDelegate: self];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self updateViews];
    [self updateWordCountLabel];
}

- (IBAction)save:(id)sender {
    NSString *title = [[self documentTitle] text];
    NSString *body = [[self documentBody] text];
    
    if (!self.document) {
        [[self documentController] createDocumentWithTitle: title body: body];
    } else {
        [[self documentController] updateDocument: self.document title: title body: body];
    }
    [[self navigationController] popViewControllerAnimated: YES];
}

- (void)updateViews
{
    if (self.document) {
        [[self documentTitle] setText:[self.document title]];
        [[self documentBody] setText:[self.document body]];
    }
}

- (void)updateWordCountLabel
{
    NSString *body = [[self documentBody] text];
    NSInteger countInt = [body wordCount];
    NSString *countStr = [[NSNumber numberWithInteger: countInt] stringValue];
    [[self wordCount] setText: [NSString stringWithFormat: @"%@ word(s)", countStr]];
}

- (void)setDocument:(IIIDocument *)document
{
    if (document != _document) {
        _document = document;
        [self updateViews];
    }
}

- (void)textViewDidChange:(UITextView *)textView
{
    [self updateWordCountLabel];
}

@end
