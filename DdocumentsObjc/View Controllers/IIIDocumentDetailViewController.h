//
//  IIIDocumentDetailViewController.h
//  DdocumentsObjc
//
//  Created by Ilgar Ilyasov on 3/27/19.
//  Copyright © 2019 Fun-the-mental. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "../Model/IIIDocument.h"
#import "../Model Controllers/IIIDocumentController.h"

NS_ASSUME_NONNULL_BEGIN

@interface IIIDocumentDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *wordCount;
@property (weak, nonatomic) IBOutlet UITextField *documentTitle;
@property (weak, nonatomic) IBOutlet UITextView *documentBody;

@property (nonatomic, strong) IIIDocument *document;
@property (nonatomic, strong) IIIDocumentController *documentController;

@end

NS_ASSUME_NONNULL_END
