//
//  IIIDocument.m
//  DdocumentsObjc
//
//  Created by Ilgar Ilyasov on 3/27/19.
//  Copyright © 2019 Fun-the-mental. All rights reserved.
//

#import "IIIDocument.h"
#import "../Categories/NSString+WordCount.h"


@implementation IIIDocument

- (instancetype)initWithTitle:(NSString *)title body:(NSString *)body
{
    self = [super init];
    if (self) {
        _title = title;
        _body = body;
    }
    return self;
}

@synthesize wordCount;

- (int)wordCount
{
    return [_body wordCount];
}

@end
