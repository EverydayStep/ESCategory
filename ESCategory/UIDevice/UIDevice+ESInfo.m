//
//  UIDevice+ESInfo.m
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "UIDevice+ESInfo.h"
#import <sys/utsname.h>
//https://www.theiphonewiki.com/wiki/Models
@implementation UIDevice (ESInfo)
- (NSString *)es_platform {
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *platform = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    //iPhone
    if ([platform isEqualToString:@"iPhone1,1"]) return @"iPhone (A1203)";
    if ([platform isEqualToString:@"iPhone1,2"]) return @"iPhone 3G (A1241/A1324)";
    if ([platform isEqualToString:@"iPhone2,1"]) return @"iPhone 3GS (A1303/A1325)";
    
    if ([platform isEqualToString:@"iPhone3,1"]) return @"iPhone 4 (A1332)";
    if ([platform isEqualToString:@"iPhone3,2"]) return @"iPhone 4 (A1332)";
    if ([platform isEqualToString:@"iPhone3,3"]) return @"iPhone 4 (A1349)";
    
    if ([platform isEqualToString:@"iPhone4,1"]) return @"iPhone 4s (A1387/A1431)";
    
    if ([platform isEqualToString:@"iPhone5,1"]) return @"iPhone 5 (A1428)";
    if ([platform isEqualToString:@"iPhone5,2"]) return @"iPhone 5 (A1429/A1442)";
    
    if ([platform isEqualToString:@"iPhone5,3"]) return @"iPhone 5c (A1456/A1532)";
    if ([platform isEqualToString:@"iPhone5,4"]) return @"iPhone 5c (A1507/A1516/A1526/A1529)";
    
    if ([platform isEqualToString:@"iPhone6,1"]) return @"iPhone 5s (A1453/A1533)";
    if ([platform isEqualToString:@"iPhone6,2"]) return @"iPhone 5s (A1457/A1518/A1528/A1530)";
    
    if ([platform isEqualToString:@"iPhone7,1"]) return @"iPhone 6 Plus (A1522/A1524/A1593)";
    if ([platform isEqualToString:@"iPhone7,2"]) return @"iPhone 6 (A1549/A1586/A1589)";
    
    if ([platform isEqualToString:@"iPhone8,1"]) return @"iPhone 6s (A1633/A1688/A1691/A1700)";
    if ([platform isEqualToString:@"iPhone8,2"]) return @"iPhone 6s Plus (A1634/A1687/A1690/A1699)";
    
    if ([platform isEqualToString:@"iPhone8,4"]) return @"iPhone SE (A1662/A1723/A1724)";
    
    if ([platform isEqualToString:@"iPhone9,1"]) return @"iPhone 7 (A1660/A1779/A1780)";
    if ([platform isEqualToString:@"iPhone9,3"]) return @"iPhone 7 (A1778)";
    
    if ([platform isEqualToString:@"iPhone9,2"]) return @"iPhone 7 Plus (A1661/A1785/A1786)";
    if ([platform isEqualToString:@"iPhone9,4"]) return @"iPhone 7 Plus (A1784)";
    
    if ([platform isEqualToString:@"iPhone10,1"]) return @"iPhone 8 (A1863/A1906/A1907)";
    if ([platform isEqualToString:@"iPhone10,4"]) return @"iPhone 8 (A1905)";
    
    if ([platform isEqualToString:@"iPhone10,2"]) return @"iPhone 8 Plus (A1864/A1898/A1899)";
    if ([platform isEqualToString:@"iPhone10,5"]) return @"iPhone 8 Plus (A1897)";
    
    if ([platform isEqualToString:@"iPhone10,3"]) return @"iPhone X (A1865/A1902)";
    if ([platform isEqualToString:@"iPhone10,6"]) return @"iPhone X (A1901)";
    
    //iPod
    if ([platform isEqualToString:@"iPod1,1"])   return @"iPod Touch 1 (A1213)";
    if ([platform isEqualToString:@"iPod2,1"])   return @"iPod Touch 2 (A1288/A1319)";
    if ([platform isEqualToString:@"iPod3,1"])   return @"iPod Touch 3 (A1318)";
    if ([platform isEqualToString:@"iPod4,1"])   return @"iPod Touch 4 (A1367)";
    if ([platform isEqualToString:@"iPod5,1"])   return @"iPod Touch 5 (A1421/A1509)";
    if ([platform isEqualToString:@"iPod7,1"])   return @"iPod Touch 6 (A1574)";
    
    //iPad
    if ([platform isEqualToString:@"iPad1,1"])   return @"iPad 1 (A1219/A1337)";
    
    if ([platform isEqualToString:@"iPad2,1"])   return @"iPad 2 (A1395)";
    if ([platform isEqualToString:@"iPad2,2"])   return @"iPad 2 (A1396)";
    if ([platform isEqualToString:@"iPad2,3"])   return @"iPad 2 (A1397)";
    if ([platform isEqualToString:@"iPad2,4"])   return @"iPad 2 (A1395+New Chip)";
    
    if ([platform isEqualToString:@"iPad3,1"])   return @"iPad 3 (A1416)";
    if ([platform isEqualToString:@"iPad3,2"])   return @"iPad 3 (A1403)";
    if ([platform isEqualToString:@"iPad3,3"])   return @"iPad 3 (A1430)";
    if ([platform isEqualToString:@"iPad3,4"])   return @"iPad 4 (A1458)";
    if ([platform isEqualToString:@"iPad3,5"])   return @"iPad 4 (A1459)";
    if ([platform isEqualToString:@"iPad3,6"])   return @"iPad 4 (A1460)";
    
    if ([platform isEqualToString:@"iPad4,1"])   return @"iPad Air (A1474)";
    if ([platform isEqualToString:@"iPad4,2"])   return @"iPad Air (A1475)";
    if ([platform isEqualToString:@"iPad4,3"])   return @"iPad Air (A1476)";
    
    if ([platform isEqualToString:@"iPad5,3"])   return @"iPad Air 2 (A1566)";
    if ([platform isEqualToString:@"iPad5,4"])   return @"iPad Air 2 (A1567)";
    
    if ([platform isEqualToString:@"iPad6,7"])   return @"iPad Pro (12.9-inch) (A1584)";
    if ([platform isEqualToString:@"iPad6,8"])   return @"iPad Pro (12.9-inch) (A1652)";
    
    if ([platform isEqualToString:@"iPad6,3"])   return @"iPad Pro (9.7-inch) (A1673)";
    if ([platform isEqualToString:@"iPad6,4"])   return @"iPad Pro (9.7-inch) (A1674/A1675)";
    
    if ([platform isEqualToString:@"iPad6,11"])   return @"iPad 5 (A1822)";
    if ([platform isEqualToString:@"iPad6,12"])   return @"iPad 5 (A1823)";
    
    if ([platform isEqualToString:@"iPad7,1"])   return @"iPad Pro 2 (12.9-inch) (A1670)";
    if ([platform isEqualToString:@"iPad7,2"])   return @"iPad Pro 2 (12.9-inch) (A1821)";
    
    if ([platform isEqualToString:@"iPad7,3"])   return @"iPad Pro (10.5-inch) (A1701)";
    if ([platform isEqualToString:@"iPad7,4"])   return @"iPad Pro (10.5-inch) (A1709)";
    
    //iPad mini
    if ([platform isEqualToString:@"iPad2,5"])   return @"iPad Mini 1 (A1432)";
    if ([platform isEqualToString:@"iPad2,6"])   return @"iPad Mini 1 (A1454)";
    if ([platform isEqualToString:@"iPad2,7"])   return @"iPad Mini 1 (A1455)";
    
    if ([platform isEqualToString:@"iPad4,4"])   return @"iPad Mini 2 (A1489)";
    if ([platform isEqualToString:@"iPad4,5"])   return @"iPad Mini 2 (A1490)";
    if ([platform isEqualToString:@"iPad4,6"])   return @"iPad Mini 2 (A1491)";
    
    if ([platform isEqualToString:@"iPad4,7"])   return @"iPad Mini 3 (A1599)";
    if ([platform isEqualToString:@"iPad4,8"])   return @"iPad Mini 3 (A1600)";
    if ([platform isEqualToString:@"iPad4,9"])   return @"iPad Mini 3 (A1601)";
    
    if ([platform isEqualToString:@"iPad5,1"])   return @"iPad Mini 4 (A1538)";
    if ([platform isEqualToString:@"iPad5,2"])   return @"iPad Mini 4 (A1550)";
    
    //Simulator
    if ([platform isEqualToString:@"i386"])      return @"iPhone Simulator";
    if ([platform isEqualToString:@"x86_64"])    return @"iPhone Simulator";
    
    //Apple TV
    if ([platform isEqualToString:@"AppleTV2,1"])   return @"Apple TV 2 (A1378)";
    if ([platform isEqualToString:@"AppleTV3,1"])   return @"Apple TV 3 (A1427)";
    if ([platform isEqualToString:@"AppleTV3,2"])   return @"Apple TV 3 (A1469)";
    if ([platform isEqualToString:@"AppleTV5,3"])   return @"Apple TV 4 (A1625)";
    
    //Apple Watch
    if ([platform isEqualToString:@"Watch1,1"])   return @"Apple Watch 1 (A1553)";
    if ([platform isEqualToString:@"Watch1,2"])   return @"Apple Watch 1 (A1554/A1638)";
    
    if ([platform isEqualToString:@"Watch2,6"])   return @"Apple Watch Series 1 (A1802)";
    if ([platform isEqualToString:@"Watch2,7"])   return @"Apple Watch Series 1 (A1803)";
    
    if ([platform isEqualToString:@"Watch2,3"])   return @"Apple Watch Series 1 (A1757/A1816)";
    if ([platform isEqualToString:@"Watch2,4"])   return @"Apple Watch Series 1 (A1758/A1817)";
    
    return platform;
}

- (CGFloat)es_systemVersion {
    return [[[UIDevice currentDevice] systemVersion] floatValue];
}

- (BOOL)es_isIphone {
    return (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone);
}

- (BOOL)es_isIpad {
    return (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad);
}
@end
