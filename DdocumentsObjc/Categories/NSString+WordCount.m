//
//  NSString+WordCount.m
//  DdocumentsObjc
//
//  Created by Ilgar Ilyasov on 3/27/19.
//  Copyright © 2019 Fun-the-mental. All rights reserved.
//

#import "NSString+WordCount.h"

@implementation NSString (WordCount)

- (int)wordCount
{
    if ([self isEqualToString:@""]) {
        return 0;
    } else {
        NSCharacterSet *separator = [NSCharacterSet whitespaceAndNewlineCharacterSet];
        NSArray *words = [self componentsSeparatedByCharactersInSet: separator];
        NSInteger countOfWord = [words count];
        
        return (int)countOfWord;
    }
}

@end
