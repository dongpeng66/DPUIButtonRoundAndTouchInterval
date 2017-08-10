//
//  RZRoundedButton.h
//  uibutton
//
//  Created by 人众 on 2017/8/10.
//
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    RoundedTypeBottomLeft,
    RoundedTypeBottomRight,
    RoundedTypeTopLeft,
    RoundedTypeTopRight,
    RoundedTypeBottomLeftRight,
    RoundedTypeTopLeftRight,
    RoundedTypeBottomLeftTopLeft,
    RoundedTypeBottomRightTopRight,
    RoundedTypeBottomRightTopRightTopLeft,
    RoundedTypeBottomRightTopRightBottomLeft,
    RoundedTypeAllCorners,
} RoundedType;
@interface RZRoundedButton : UIButton
/**
 圆角的半径,如果不设置那么默认是按钮的高度的一半
 */
@property (nonatomic,assign) CGFloat alCorner;
/**
   初始化按钮 并带圆角的位置
*/
-(instancetype)initWithFrame:(CGRect)frame withRoundedType:(RoundedType)roundType;

@end
