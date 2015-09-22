//
//  FSCodeLayout.m
//  FSCodeLayout
//
//  Created by 王方帅 on 15/9/22.
//  Copyright (c) 2015年 王方帅. All rights reserved.
//

#import "FSCodeLayout.h"

@implementation FSCodeLayout

+(CGFloat)getScreenWidth
{
    return [UIScreen mainScreen].bounds.size.width;
}

+(CGFloat)getScreenHeight
{
    return [UIScreen mainScreen].bounds.size.height;
}

+(CGFloat)getAutoresizeWidthWith5sWidth:(CGFloat)width
{
    return (([self getScreenWidth])/kiPhone5sWidth)*width;
}

+(CGFloat)getAutoresizeHeightWith5sHeight:(CGFloat)height
{
    return (([self getScreenHeight])/kiPhone5sHeight)*height;
}

+(enum FSiPhoneType)iphoneType
{
    float width = [self getScreenWidth];
    float height = [self getScreenHeight];
    if (width == 320 && height == 480)
    {
        return FSiPhoneType_4s;
    }
    else if (width == 320 && height == 568)
    {
        return FSiPhoneType_5s;
    }
    else if (width == 375 && height == 667)
    {
        return FSiPhoneType_6;
    }
    else if (width == 414 && height == 736)
    {
        return FSiPhoneType_6plus;
    }
    return FSiPhoneType_nodefine;
}

@end
