//
//  NSData+ESConversion.m
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "NSData+ESConversion.h"

@implementation NSData (ESConversion)

- (NSString *)es_hexadecimal {
    /* Returns hexadecimal string of NSData. Empty string if data is empty.   */
    const unsigned char *dataBuffer = (const unsigned char *)[self bytes];
    
    if (!dataBuffer)
        return [NSString string];
    
    NSUInteger          dataLength  = [self length];
    NSMutableString     *hexString  = [NSMutableString stringWithCapacity:(dataLength * 2)];
    
    for (int i = 0; i < dataLength; ++i)
        [hexString appendString:[NSString stringWithFormat:@"%02lx", (unsigned long)dataBuffer[i]]];
    return [NSString stringWithString:hexString];
}

- (NSDictionary *)es_dictionary {
   return [self es_dictionaryWithOption:NSJSONReadingMutableContainers];
}

- (NSDictionary *)es_dictionaryWithOption:(NSJSONReadingOptions)option {
    return [NSJSONSerialization JSONObjectWithData:self options:option error:nil];
}

@end
