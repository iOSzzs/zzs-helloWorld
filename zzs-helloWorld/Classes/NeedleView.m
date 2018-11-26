//
//  NeedleView.m
//  Clock
//
//  Created by zzs on 2018/11/2.
//  Copyright © 2018年 zzs. All rights reserved.
//

#import "NeedleView.h"

@implementation NeedleView




// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    
      UIBezierPath *path = [[UIBezierPath alloc] init];
    
    
    
      //path移动到开始画图的位置
    
      [path moveToPoint:CGPointMake(rect.origin.x, rect.size.height)];
    
      //从开始位置画一条直线到（rect.origin.x + rect.size.width， rect.origin.y）
    
      [path addLineToPoint:CGPointMake(rect.size.width/2, rect.origin.y)];
    
      //再从rect.origin.x + rect.size.width， rect.origin.y））画一条线到(rect.origin.x + rect.size.width/2, rect.origin.y + rect.size.height)
    
      [path addLineToPoint:CGPointMake(rect.size.width, rect.size.height)];
    
    
    
      //关闭path
    
      [path closePath];
    
    
    
      //三角形内填充颜色
    
    switch (self.type) {
        case 1:
            [[UIColor blackColor] setFill];
            break;
        case 2:
            [[UIColor greenColor] setFill];
            break;
        case 3:
            [[UIColor redColor] setFill];
            break;
        default:
            break;
    }
    
    
      [path fill];
    
    //   //三角形的边框为红色
    
    //   [[UIColor clearColor] setStroke];
    
    //   [path stroke];
    
}


@end
