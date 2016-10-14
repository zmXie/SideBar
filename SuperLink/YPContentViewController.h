//
//  YPContentViewController.h
//  SuperLink
//
//  Created by xzm on 16/10/13.
//  Copyright © 2016年 ypwl. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kScreenWith [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

@class YPContentViewController;

@interface UIViewController (YPContentViewController)

-(YPContentViewController*)ypContentViewController;

@end

typedef NS_ENUM(NSInteger, YPTransitionModel) {
    YPTransitionModelPlan = 0, //平滑
    YPTransitionModelScale //缩放
};
typedef NS_ENUM(NSInteger, YPSide) {
    YPSideLeft = 0, //左边
    YPSideCenter //中间
};

@interface YPContentViewController : UIViewController

/**
 初始化

 @param centerViewController 中间控制器
 @param leftViewController   左边控制器
 @param transitionModel   滑动方式
 @return self
 */
- (instancetype)initWithCenterViewController:(UIViewController *)centerViewController
                          leftViewController:(UIViewController *)leftViewController
                             transitionModel:(YPTransitionModel)transitionModel;

/**中间控制器*/
@property(nonatomic,strong)UIViewController *centerViewController;
/**左边控制器*/
@property(nonatomic,strong)UIViewController *leftViewController;
/**左边控制器打开比例，默认为0.8*/
@property(nonatomic,assign)CGFloat leftWidthPersent;
/**当前显示哪边控制器，默认为YPSideCenter*/
@property(nonatomic,assign,readonly)YPSide side;
/**
 打开侧栏
 */
- (void)openLeftViewController;
/**
 关闭侧栏
 */
- (void)closeLeftViewController;
@end
