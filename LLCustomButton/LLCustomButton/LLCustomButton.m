//
//  LLCustomButton.m
//  LLCustomButton
//
//  Created by Totin on 2018/8/6.
//  Copyright © 2018年 LLTech. All rights reserved.
//

#import "LLCustomButton.h"

@implementation LLCustomButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (CGRect)imageRectForContentRect:(CGRect)contentRect {
    
    if (self.imagePosition == LLButtonImagePositionLeft) {
        return [super imageRectForContentRect:contentRect];
    } else if (self.imagePosition == LLButtonImagePositionRight) {
        CGRect superImageRect = [super imageRectForContentRect:contentRect];
        CGRect superTitleRect = [super titleRectForContentRect:contentRect];
        
        CGRect imageRect = superImageRect;
        CGFloat spacing = CGRectGetMaxX(superTitleRect) - CGRectGetMaxX(superImageRect);
        imageRect.origin.x += spacing;
        
        return imageRect;
        
    } else if (self.imagePosition == LLButtonImagePositionTop) {
        
        CGRect superTitleRect = [super titleRectForContentRect:contentRect];
        
        CGFloat imageX = contentRect.origin.x + self.imageEdgeInsets.left;
        CGFloat imageY = contentRect.origin.y + self.imageEdgeInsets.top;
        CGFloat imageWidth = CGRectGetMaxX(contentRect) - imageX - self.imageEdgeInsets.right;
        CGFloat imageHeight = CGRectGetMaxY(contentRect) - imageY - self.imageEdgeInsets.bottom - superTitleRect.size.height;
        
        return CGRectMake(imageX, imageY, imageWidth, imageHeight);
        
    } else if (self.imagePosition == LLButtonImagePositionBottom) {
        
        CGRect superTitleRect = [super titleRectForContentRect:contentRect];
        
        CGFloat imageX = contentRect.origin.x + self.imageEdgeInsets.left;
        CGFloat imageY = contentRect.origin.y + superTitleRect.size.height + self.imageEdgeInsets.top;
        CGFloat imageWidth = CGRectGetMaxX(contentRect) - imageX - self.imageEdgeInsets.right;
        CGFloat imageHeight = CGRectGetMaxY(contentRect) - imageY - self.imageEdgeInsets.bottom;
        
        return CGRectMake(imageX, imageY, imageWidth, imageHeight);
        
    }
    
    return CGRectZero;
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect {
    
    if (self.imagePosition == LLButtonImagePositionLeft) {
        return [super titleRectForContentRect:contentRect];
    } else if (self.imagePosition == LLButtonImagePositionRight) {
        CGRect superImageRect = [super imageRectForContentRect:contentRect];
        CGRect superTitleRect = [super titleRectForContentRect:contentRect];
        
        CGRect titleRect = superTitleRect;
//        CGFloat spacing = CGRectGetMaxX(superTitleRect) - CGRectGetMaxX(superImageRect);
        titleRect.origin.x = superImageRect.origin.x;
        
        return titleRect;
        
    } else if (self.imagePosition == LLButtonImagePositionTop) {
        
        CGRect superTitleRect = [super titleRectForContentRect:contentRect];
        
        CGFloat titleX = contentRect.origin.x + self.titleEdgeInsets.left;
        CGFloat titleY = CGRectGetMaxY(contentRect) - superTitleRect.size.height;
        CGFloat titleWidth = CGRectGetMaxX(contentRect) - self.titleEdgeInsets.left - self.titleEdgeInsets.right;
        
        return CGRectMake(titleX, titleY, titleWidth, superTitleRect.size.height);
        
    } else if (self.imagePosition == LLButtonImagePositionBottom) {
        
        CGRect superTitleRect = [super titleRectForContentRect:contentRect];
        
        CGFloat titleX = contentRect.origin.x + self.titleEdgeInsets.left;
        CGFloat titleY = contentRect.origin.y + self.titleEdgeInsets.top;
        CGFloat titleWidth = CGRectGetMaxX(contentRect) - self.titleEdgeInsets.left - self.titleEdgeInsets.right;
        
        return CGRectMake(titleX, titleY, titleWidth, superTitleRect.size.height);
        
    }
    
    return CGRectZero;
}

@end
