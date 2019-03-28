//
//  IIIDocumentController.m
//  DdocumentsObjc
//
//  Created by Ilgar Ilyasov on 3/27/19.
//  Copyright © 2019 Fun-the-mental. All rights reserved.
//

#import "IIIDocumentController.h"
#import "../Model/IIIDocument.h"

@interface IIIDocumentController()

@property (nonatomic, copy) NSMutableArray *internalDocuments;

@end

@implementation IIIDocumentController

- (void)createDocumentWithTitle:(NSString *)title body:(NSString *)body
{
    IIIDocument *document = [[IIIDocument alloc] initWithTitle:title body:body];
    [[self internalDocuments] addObject: document];
}

- (void)updateDocument:(IIIDocument *)document title:(NSString *)title body:(NSString *)body
{
    [document setTitle: title];
    [document setBody: body];
}

- (void)deleteDocument:(IIIDocument *)document
{
    [[self internalDocuments] removeObject: document];
}

- (NSInteger)countOfDocument
{
    return [[self internalDocuments] count];
}




@synthesize internalDocuments = _internalDocuments;

- (NSMutableArray *)internalDocuments
{
    if (!_internalDocuments) {
        _internalDocuments = [[NSMutableArray alloc] init];
    }
    return _internalDocuments;
}

- (NSArray<IIIDocument *> *)documents
{
    return self.internalDocuments;
}

@end
