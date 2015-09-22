//
//  FSCodeLayout.h
//  FSCodeLayout
//
//  Created by 王方帅 on 15/9/22.
//  Copyright (c) 2015年 王方帅. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "UIView+Add.h"

#define kiPhone4sWidth     320
#define kiPhone5sWidth     320
#define kiPhone6Width      375
#define kiPhone6plusWidth  414

#define kiPhone4sHeight     480
#define kiPhone5sHeight     568
#define kiPhone6Height      667
#define kiPhone6plusHeight  736

enum FSiPhoneType
{
    FSiPhoneType_4s,
    FSiPhoneType_5s,
    FSiPhoneType_6,
    FSiPhoneType_6plus,
    FSiPhoneType_nodefine,
};

@interface FSCodeLayout : NSObject

+(CGFloat)getScreenWidth;

+(CGFloat)getScreenHeight;

+(enum FSiPhoneType)iphoneType;

+(CGFloat)getAutoresizeWidthWith5sWidth:(CGFloat)width;

+(CGFloat)getAutoresizeHeightWith5sHeight:(CGFloat)height;

@end
