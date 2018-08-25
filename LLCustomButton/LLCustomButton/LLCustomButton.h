//
//  LLCustomButton.h
//  LLCustomButton
//
//  Created by Totin on 2018/8/6.
//  Copyright © 2018年 LLTech. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, LLButtonImagePosition) {
    LLButtonImagePositionLeft,
    LLButtonImagePositionTop,
    LLButtonImagePositionRight,
    LLButtonImagePositionBottom
};

@interface LLCustomButton : UIButton

@property (nonatomic) LLButtonImagePosition imagePosition;

@end
