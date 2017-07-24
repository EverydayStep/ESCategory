//
//  NSUserDefaults+ESStorage.h
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSUserDefaults (ESStorage)
+ (BOOL)es_setObject:(id)object forKey:(NSString *)key;
+ (id)es_objectForKey:(NSString *)key;

+ (BOOL)es_setURL:(NSURL *)url forKey:(NSString *)key;
+ (NSURL *)es_urlForKey:(NSString *)key;

+ (BOOL)es_setBool:(BOOL)value forKey:(NSString *)key;
+ (BOOL)es_boolForKey:(NSString *)key;

+ (BOOL)es_setDouble:(double)value forKey:(NSString *)key;
+ (double)es_doubleForKey:(NSString *)key;

+ (BOOL)es_setFloat:(float)value forKey:(NSString *)key;
+ (float)es_floatForKey:(NSString *)key;

+ (BOOL)es_setInteger:(NSInteger)value forKey:(NSString *)key;
+ (NSInteger)es_integerForKey:(NSString *)key;

+ (NSArray *)es_arrayForKey:(NSString *)key;
+ (NSDictionary *)es_dictionaryForKey:(NSString *)key;
+ (NSData *)es_dataForKey:(NSString *)key;
+ (NSString*)es_stringForKey:(NSString *)key;

+ (BOOL)es_removeObjectForKey:(NSString *)key;


@end
