//
//  NSUserDefaults+ESStorage.m
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "NSUserDefaults+ESStorage.h"

@implementation NSUserDefaults (ESStorage)

+ (BOOL)es_setObject:(id)object forKey:(NSString *)key {
    if (!object || key == nil || key.length == 0) {
        return NO;
    }
    [[NSUserDefaults standardUserDefaults] setObject:object forKey:key];
    return [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (id)es_objectForKey:(NSString *)key {
    if (key == nil || key.length == 0) {
        return nil;
    }
    return [[NSUserDefaults standardUserDefaults] objectForKey:key];
}

+ (BOOL)es_setURL:(NSURL *)url forKey:(NSString *)key {
    if (!url || key == nil || key.length == 0) {
        return NO;
    }
    [[NSUserDefaults standardUserDefaults] setURL:url forKey:key];
    return [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (NSURL *)es_urlForKey:(NSString *)key {
    if (key == nil || key.length == 0) {
        return nil;
    }
    return [[NSUserDefaults standardUserDefaults] URLForKey:key];
}

+ (BOOL)es_setBool:(BOOL)value forKey:(NSString *)key {
    if (key == nil || key.length == 0) {
        return NO;
    }
    [[NSUserDefaults standardUserDefaults] setBool:value forKey:key];
    return [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (BOOL)es_boolForKey:(NSString *)key {
    if (key == nil || key.length == 0) {
        return NO;
    }
    return [[NSUserDefaults standardUserDefaults] boolForKey:key];
}

+ (BOOL)es_setDouble:(double)value forKey:(NSString *)key {
    if (key == nil || key.length == 0) {
        return NO;
    }
    [[NSUserDefaults standardUserDefaults] setDouble:value forKey:key];
    return [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (double)es_doubleForKey:(NSString *)key {
    if (key == nil || key.length == 0) {
        return 0;
    }
    return [[NSUserDefaults standardUserDefaults] doubleForKey:key];
}

+ (BOOL)es_setFloat:(float)value forKey:(NSString *)key {
    if (key == nil || key.length == 0) {
        return 0;
    }
    [[NSUserDefaults standardUserDefaults] setFloat:value forKey:key];
    return [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (float)es_floatForKey:(NSString *)key {
    if (key == nil || key.length == 0) {
        return 0;
    }
    return [[NSUserDefaults standardUserDefaults] floatForKey:key];
}

+ (BOOL)es_setInteger:(NSInteger)value forKey:(NSString *)key {
    if (key == nil || key.length == 0) {
        return NO;
    }
    [[NSUserDefaults standardUserDefaults] setInteger:value forKey:key];
    return [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (NSInteger)es_integerForKey:(NSString *)key {
    if (key == nil || key.length == 0) {
        return NO;
    }
    return [[NSUserDefaults standardUserDefaults] integerForKey:key];
}

+ (NSArray *)es_arrayForKey:(NSString *)key {
    if (key == nil || key.length == 0) {
        return nil;
    }
    return [[NSUserDefaults standardUserDefaults] arrayForKey:key];
}

+ (NSDictionary *)es_dictionaryForKey:(NSString *)key {
    if (key == nil || key.length == 0) {
        return nil;
    }
    return [[NSUserDefaults standardUserDefaults] dictionaryForKey:key];
}

+ (NSData *)es_dataForKey:(NSString *)key {
    if (key == nil || key.length == 0) {
        return nil;
    }
    return [[NSUserDefaults standardUserDefaults] dataForKey:key];
}

+ (NSString *)es_stringForKey:(NSString *)key {
    if (key == nil || key.length == 0) {
        return nil;
    }
    return [[NSUserDefaults standardUserDefaults] stringForKey:key];
}

+ (BOOL)es_removeObjectForKey:(NSString *)key {
    if (key == nil || key.length == 0) {
        return NO;
    }
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:key];
    return [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
