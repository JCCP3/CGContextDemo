//
//  CustomView.m
//  TestDivisionCircleDemo
//
//  Created by JC_CP3 on 15/9/15.
//  Copyright (c) 2015年 JC_CP3. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    [self chooseGraphics:ctx];
    
}

- (void)chooseGraphics:(CGContextRef)ctx
{
    switch ([self getRandomNum]) {
        case 0:
            [self drawLine:ctx];
            break;
            
        case 1:
            [self drawRectAngel:ctx];
            break;
            
        case 2:
            [self drawWithoutFrameRectAngel:ctx];
            break;
            
        case 3:
            [self drawCircle:ctx];
            break;
            
        case 4:
            [self drawSector:ctx];
            break;
            
        default:
            break;
    }
}

//画线
- (void)drawLine:(CGContextRef)ctx
{
    CGPoint point[] = {CGPointMake(50, 100), CGPointMake(100, 100)};
    CGContextAddLines(ctx, point, 2);
    CGContextSetStrokeColorWithColor(ctx, [UIColor redColor].CGColor);
    CGContextDrawPath(ctx, kCGPathStroke);
//    CGContextStrokePath(ctx);
}

//画无框矩形
- (void)drawWithoutFrameRectAngel:(CGContextRef)ctx
{
    CGContextAddRect(ctx, CGRectMake(100, 100, 100, 100));
    CGContextSetFillColorWithColor(ctx, [UIColor purpleColor].CGColor);
    CGContextFillPath(ctx);
}

//有框矩形
- (void)drawRectAngel:(CGContextRef)ctx
{
//    CGContextStrokeRect(ctx, CGRectMake(0, 0, 100, 100));
    CGContextSetStrokeColorWithColor(ctx, [UIColor redColor].CGColor);
  
    CGContextAddRect(ctx, CGRectMake(100, 100, 100, 100));
    CGContextSetFillColorWithColor(ctx, [UIColor purpleColor].CGColor);
    CGContextDrawPath(ctx, kCGPathFillStroke);
}

//画圆形
- (void)drawCircle:(CGContextRef)ctx
{
    CGContextAddArc(ctx, 140, 60, 35, 0, 2 * M_PI, 0);
    CGContextSetStrokeColorWithColor(ctx, [UIColor orangeColor].CGColor);
    CGContextSetFillColorWithColor(ctx, [UIColor redColor].CGColor);
    CGContextDrawPath(ctx, kCGPathFillStroke);
}

//画扇形
- (void)drawSector:(CGContextRef)ctx
{
    CGContextMoveToPoint(ctx, 160, 180);
    CGContextAddArc(ctx, 160, 180, 30,  -60 * M_PI / 180, -120 * M_PI / 180, 1);
    CGContextSetStrokeColorWithColor(ctx, [UIColor orangeColor].CGColor);
    CGContextSetFillColorWithColor(ctx, [UIColor redColor].CGColor);
    CGContextClosePath(ctx);
    CGContextDrawPath(ctx, kCGPathFillStroke);
}

- (int)getRandomNum
{
    return arc4random()%5;
}


@end
