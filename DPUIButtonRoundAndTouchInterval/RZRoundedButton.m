//
//  RZRoundedButton.m
//  uibutton
//
//  Created by 人众 on 2017/8/10.
//
//

#import "RZRoundedButton.h"
#import <QuartzCore/QuartzCore.h>
@interface RZRoundedButton ()
@property (nonatomic,assign) UIRectCorner corners;
@end
@implementation RZRoundedButton
-(instancetype)initWithFrame:(CGRect)frame withRoundedType:(RoundedType)roundType{
    switch (roundType)
    {
        case 0:
            _corners= UIRectCornerBottomLeft;
            break;
        case 1:
            _corners = UIRectCornerBottomRight;
            break;
        case 2:
            _corners = UIRectCornerTopLeft;
            break;
        case 3:
            _corners = UIRectCornerTopRight;
            break;
        case 4:
            _corners = UIRectCornerBottomLeft | UIRectCornerBottomRight;
            break;
        case 5:
            _corners = UIRectCornerTopLeft | UIRectCornerTopRight;
            break;
        case 6:
            _corners = UIRectCornerBottomLeft | UIRectCornerTopLeft;
            break;
        case 7:
            _corners = UIRectCornerBottomRight | UIRectCornerTopRight;
            break;
        case 8:
            _corners = UIRectCornerBottomRight | UIRectCornerTopRight | UIRectCornerTopLeft;
            break;
        case 9:
            _corners = UIRectCornerBottomRight | UIRectCornerTopRight | UIRectCornerBottomLeft;
            break;
        default:
            _corners = UIRectCornerAllCorners;
            break;
    }

    return  [self initWithFrame:frame];
}
-(instancetype)initWithFrame:(CGRect)frame{
    self=[super initWithFrame:frame];
    if (self) {
        UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                                       byRoundingCorners:_corners
                                                             cornerRadii:CGSizeMake(frame.size.height, frame.size.height)];
        CAShapeLayer *maskLayer = [CAShapeLayer layer];
        maskLayer.frame         = self.bounds;
        maskLayer.path          = maskPath.CGPath;
        self.layer.mask         = maskLayer;
    }
    return self;
}
-(void)setAlCorner:(CGFloat)alCorner{
    CGFloat corner=self.frame.size.height;
    if (alCorner<=corner) {
        corner=alCorner;
    }
    
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                                   byRoundingCorners:_corners
                                                         cornerRadii:CGSizeMake(corner, corner)];
    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.frame         = self.bounds;
    maskLayer.path          = maskPath.CGPath;
    self.layer.mask         = maskLayer;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
