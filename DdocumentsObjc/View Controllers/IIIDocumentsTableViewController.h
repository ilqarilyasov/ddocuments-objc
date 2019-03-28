//
//  IIIDocumentsTableViewController.h
//  DdocumentsObjc
//
//  Created by Ilgar Ilyasov on 3/27/19.
//  Copyright © 2019 Fun-the-mental. All rights reserved.
//

#import <UIKit/UIKit.h>

@class IIIDocumentController;

NS_ASSUME_NONNULL_BEGIN

@interface IIIDocumentsTableViewController : UITableViewController

@property (nonatomic, strong) IIIDocumentController *documentController;

@end

NS_ASSUME_NONNULL_END
