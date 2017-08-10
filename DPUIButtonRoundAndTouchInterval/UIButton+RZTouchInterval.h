//
//  UIButton+RZTouchInterval.h
//  RZJR
//
//  Created by 人众 on 2017/8/10.
//
//

#import <UIKit/UIKit.h>
#define defaultInterval .5  //默认时间间隔
@interface UIButton (RZTouchInterval)
/**设置点击时间间隔*/
@property (nonatomic, assign) NSTimeInterval timeInterval;
@end
