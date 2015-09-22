//
//  UIView+Add.m
//  FSCodeLayout
//
//  Created by 王方帅 on 15/9/22.
//  Copyright (c) 2015年 王方帅. All rights reserved.
//

#import "UIView+Add.h"
#import "FSCodeLayout.h"

@implementation UIView (Add)

//纵坐标和宽高不变，只修改横坐标，以下分别修改一项
-(void)setFrame_x:(CGFloat)x
{
    [self setFrame:CGRectMake(x, self.frame.origin.y, self.frame.size.width, self.frame.size.height)];
}
-(void)setFrame_y:(CGFloat)y
{
    [self setFrame:CGRectMake(self.frame.origin.x, y, self.frame.size.width, self.frame.size.height)];
}
-(void)setFrame_width:(CGFloat)width
{
    [self setFrame:CGRectMake(self.frame.origin.x, self.frame.origin.y, width, self.frame.size.height)];
}
-(void)setFrame_height:(CGFloat)height
{
    [self setFrame:CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, height)];
}

-(void)setCenter_y:(CGFloat)y
{
    [self setCenter:CGPointMake(self.center.x, y)];
}

-(void)setCenter_x:(CGFloat)x
{
    [self setCenter:CGPointMake(x, self.center.y)];
}

-(CGFloat)getFrame_right
{
    return self.frame.origin.x + self.frame.size.width;
}

-(CGFloat)getFrame_Bottom
{
    return self.frame.origin.y + self.frame.size.height;
}

-(CGPoint)origin
{
    return self.frame.origin;
}

-(void)setOrigin:(CGPoint)origin
{
    CGRect rect = self.frame;
    rect.origin = origin;
    self.frame = rect;
}

-(void)setToCenterX
{
    self.centerX = [FSCodeLayout getScreenWidth]/2;
}

-(void)setToRight
{
    self.x = [FSCodeLayout getScreenWidth]-self.width-5;
}

-(void)setWidthToAutoresizeScreenWidth
{
    switch ([FSCodeLayout iphoneType])
    {
        case FSiPhoneType_4s:
        {
            self.width -= kiPhone5sWidth - kiPhone4sWidth;
        }
            break;
        case FSiPhoneType_5s:
        {
            
        }
            break;
        case FSiPhoneType_6:
        {
            self.width += kiPhone6Width - kiPhone5sWidth;
        }
            break;
        case FSiPhoneType_6plus:
        {
            self.width += kiPhone6plusWidth - kiPhone5sWidth;
        }
            break;
            
        default:
            break;
    }
}

-(void)setHeightToAutoresizeScreenHeight
{
    switch ([FSCodeLayout iphoneType])
    {
        case FSiPhoneType_4s:
        {
            self.height -= kiPhone5sHeight - kiPhone4sHeight;
        }
            break;
        case FSiPhoneType_5s:
        {
            
        }
            break;
        case FSiPhoneType_6:
        {
            self.height += kiPhone6Height - kiPhone5sHeight;
        }
            break;
        case FSiPhoneType_6plus:
        {
            self.height += kiPhone6plusHeight - kiPhone5sHeight;
        }
            break;
            
        default:
            break;
    }
}

- (void)setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize)size
{
    return self.frame.size;
}

- (void)setX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)x
{
    return self.frame.origin.x;
}

- (void)setY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)y
{
    return self.frame.origin.y;
}

- (void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)width
{
    return self.frame.size.width;
}

- (void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)height
{
    return self.frame.size.height;
}

- (void)setCenterX:(CGFloat)centerX
{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (CGFloat)centerX
{
    return self.center.x;
}

- (void)setCenterY:(CGFloat)centerY
{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (CGFloat)centerY
{
    return self.center.y;
}

@end

@implementation UILabel (Additions)

-(void)setSingleRowAutosizeLimitWidth:(float)limitWidth
{
    NSDictionary *tdic = [NSDictionary dictionaryWithObjectsAndKeys:self.font,NSFontAttributeName, nil];
    CGSize size = [self.text boundingRectWithSize:CGSizeMake(limitWidth, self.size.height)
                                                options:(NSStringDrawingOptions)(NSStringDrawingTruncatesLastVisibleLine |NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading)
                                             attributes:tdic
                                                context:nil].size;
    [self setFrame_width:size.width];
}

-(void)setAutoresizeWithLimitWidth:(float)limitWidth
{
//    CGSize size = [self.text sizeWithFont:self.font constrainedToSize:CGSizeMake(limitWidth, MAXFLOAT) lineBreakMode:NSLineBreakByCharWrapping];
//    [self setSize:size];
    NSDictionary *tdic = [NSDictionary dictionaryWithObjectsAndKeys:self.font,NSFontAttributeName, nil];
    CGSize size = [self.text boundingRectWithSize:CGSizeMake(limitWidth, MAXFLOAT)
                                                     options:(NSStringDrawingOptions)(
                                                                                      NSStringDrawingTruncatesLastVisibleLine |NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading)
                                                  attributes:tdic
                                                     context:nil].size;
    
    [self setSize:CGSizeMake(size.width, size.height)];
}


-(void)setAutoresizeWithLimitHeight:(float)limitHeight
{

    NSDictionary *tdic = [NSDictionary dictionaryWithObjectsAndKeys:self.font,NSFontAttributeName, nil];
    CGSize size = [self.text boundingRectWithSize:CGSizeMake(MAXFLOAT, limitHeight)
                                          options:(NSStringDrawingOptions)(
                                                                           NSStringDrawingTruncatesLastVisibleLine |NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading)
                                       attributes:tdic
                                          context:nil].size;
    
    [self setSize:CGSizeMake(size.width, size.height)];
}


@end

@implementation UIButton (Additions)

-(void)setAutoresizeWithLimitWidth:(float)limitWidth
{
    NSDictionary *tdic = [NSDictionary dictionaryWithObjectsAndKeys:self.titleLabel.font,NSFontAttributeName, nil];
    CGSize size = [self.titleLabel.text boundingRectWithSize:CGSizeMake(limitWidth, 300)
                                          options:(NSStringDrawingOptions)(NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading)
                                       attributes:tdic
                                          context:nil].size;
    [self setSize:CGSizeMake(size.width+30, size.height+20)];
}

@end