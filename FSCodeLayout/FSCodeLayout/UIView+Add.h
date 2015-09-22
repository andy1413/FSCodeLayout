//
//  UIView+Add.h
//  FSCodeLayout
//
//  Created by 王方帅 on 15/9/22.
//  Copyright (c) 2015年 王方帅. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Add)

//纵坐标和宽高不变，只修改横坐标，以下分别修改一项
-(void)setFrame_x:(CGFloat)x;
-(void)setFrame_y:(CGFloat)y;
-(void)setFrame_width:(CGFloat)width;
-(void)setFrame_height:(CGFloat)height;

-(void)setCenter_x:(CGFloat)x;
-(void)setCenter_y:(CGFloat)y;

-(CGFloat)getFrame_right;
-(CGFloat)getFrame_Bottom;

-(void)setWidthToAutoresizeScreenWidth;

-(void)setHeightToAutoresizeScreenHeight;

-(CGPoint)origin;

-(void)setOrigin:(CGPoint)origin;

-(void)setToCenterX;

-(void)setToRight;

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize size;

@end

@interface UILabel (Additions)

-(void)setSingleRowAutosizeLimitWidth:(float)limitWidth;

-(void)setAutoresizeWithLimitWidth:(float)limitWidth;
-(void)setAutoresizeWithLimitHeight:(float)limitHeight;
@end

@interface UIButton (Additions)

-(void)setAutoresizeWithLimitWidth:(float)limitWidth;

@end
