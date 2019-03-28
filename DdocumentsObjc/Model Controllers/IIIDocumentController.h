//
//  IIIDocumentController.h
//  DdocumentsObjc
//
//  Created by Ilgar Ilyasov on 3/27/19.
//  Copyright © 2019 Fun-the-mental. All rights reserved.
//

#import <Foundation/Foundation.h>

@class IIIDocument;

NS_ASSUME_NONNULL_BEGIN

@interface IIIDocumentController : NSObject

- (void)createDocumentWithTitle:(NSString *)title body:(NSString *)body;
- (void)updateDocument:(IIIDocument *)document title:(NSString *)title body:(NSString *)body;
- (void)deleteDocument:(IIIDocument *)document;
- (NSInteger)countOfDocument;

@property (nonatomic, strong) NSArray<IIIDocument *>*documents;

@end

NS_ASSUME_NONNULL_END
