//
//  IIIDocument.h
//  DdocumentsObjc
//
//  Created by Ilgar Ilyasov on 3/27/19.
//  Copyright © 2019 Fun-the-mental. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface IIIDocument : NSObject

- (instancetype)initWithTitle:(NSString *)title body:(NSString *)body;

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *body;
@property (nonatomic) int wordCount;

@end

NS_ASSUME_NONNULL_END
