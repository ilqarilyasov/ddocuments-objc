//
//  IIIDocumentDetailViewController.h
//  DdocumentsObjc
//
//  Created by Ilgar Ilyasov on 3/27/19.
//  Copyright © 2019 Fun-the-mental. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IIIDocumentDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *wordCount;
@property (weak, nonatomic) IBOutlet UITextField *documentName;
@property (weak, nonatomic) IBOutlet UITextView *documentNote;

@end

NS_ASSUME_NONNULL_END
