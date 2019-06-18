//
//  UIView+NDLExtension.m
//  NDL_Category
//
//  Created by ndl on 2017/11/8.
//  Copyright © 2017年 ndl. All rights reserved.
//

#import "UIView+NDLExtension.h"

@implementation UIView (NDLExtension)

//+ (void)load
//{
//    ReplaceMethod(self, @selector(pointInside:withEvent:), @selector(ndlPointInside:withEvent:));
//}
//
//- (void)setExtraTouchInset:(UIEdgeInsets)extraTouchInset
//{
//    objc_setAssociatedObject(self, @selector(extraTouchInset), [NSValue valueWithUIEdgeInsets:extraTouchInset], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
//}
//
//- (UIEdgeInsets)extraTouchInset
//{
//    id value = objc_getAssociatedObject(self, _cmd);
//    if (!value) {
////        NSLog(@"objc_getAssociatedObject extraTouchInset is nil");
//        value = [NSValue valueWithUIEdgeInsets:UIEdgeInsetsZero];
//    }
//
//    return [value UIEdgeInsetsValue];
////    return [objc_getAssociatedObject(self, _cmd) UIEdgeInsetsValue];
//}
//
//// point相对于self.bounds
//- (BOOL)ndlPointInside:(CGPoint)point withEvent:(UIEvent *)event
//{
//    if (UIEdgeInsetsEqualToEdgeInsets(self.extraTouchInset, UIEdgeInsetsZero) || self.hidden || ([self isKindOfClass:[UIControl class]] && !((UIControl *)self).enabled)) {
//        [self ndlPointInside:point withEvent:event];
//    }
//
//    CGRect hitRect = UIEdgeInsetsInsetRect(self.bounds, self.extraTouchInset);
//    hitRect.size.width = MAX(hitRect.size.width, 0);
//    hitRect.size.height = MAX(hitRect.size.height, 0);
//
//    return CGRectContainsPoint(hitRect, point);
//}

- (void)setOrigin:(CGPoint)origin
{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGPoint)origin
{
    return self.frame.origin;
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

- (void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}
//- (void)setNdl_width:(CGFloat)ndl_width
//{
//    CGRect frame = self.frame;
//    frame.size.width = ndl_width;
//    self.frame = frame;
//}

- (void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (void)setX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (void)setY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)width
{
    return self.frame.size.width;
}

//- (CGFloat)ndl_width
//{
//    return self.frame.size.width;
//}

- (CGFloat)height
{
    return self.frame.size.height;
}

- (CGFloat)x
{
    return self.frame.origin.x;
}

- (CGFloat)y
{
    return self.frame.origin.y;
}

- (void)setCenterX:(CGFloat)centerX
{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (void)setCenterY:(CGFloat)centerY
{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (CGFloat)centerX
{
    return self.center.x;
}

- (CGFloat)centerY
{
    return self.center.y;
}

//- (BOOL)isShowInKeyWindow
//{
//    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
//    
//    CGRect frame = [keyWindow convertRect:self.frame fromView:self.superview];
//    CGRect windowFrame = keyWindow.bounds;
//    
//    return !self.isHidden && self.alpha > 0.01 && self.window == keyWindow && CGRectIntersectsRect(frame, windowFrame);
//}
//
//+ (instancetype)viewFromXib
//{
//    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
//}
//
//
//- (void)ndl_viewByRoundingCorners:(UIRectCorner)rectCorner cornerRadii:(CGSize)cornerSize
//{
//    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:rectCorner cornerRadii:cornerSize];
//    
//    // 遮罩
//    CAShapeLayer *maskLayer = [CAShapeLayer layer];
//    maskLayer.path = path.CGPath;
//    
//    self.layer.mask = maskLayer;
//}
//
//- (NSArray<UIView *> *)ndl_visibleSubViews
//{
//    NSMutableArray<UIView *> *visibleSubViews = [[NSMutableArray alloc] init];
//    
//    for (NSInteger i = 0, length = self.subviews.count; i < length; i++) {
//        UIView *subView = self.subviews[i];
//        if (!subView.hidden) {
//            [visibleSubViews addObject:subView];
//        }
//    }
//    
//    return [visibleSubViews copy];
//}
//
//- (UIImage *)ndl_screenShot
//{
//    if (self == nil || CGSizeEqualToSize(self.frame.size, CGSizeZero)) {
//        return nil;
//    }
//    
//    UIGraphicsBeginImageContextWithOptions(self.frame.size, NO, 0);
//    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
//    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    return image;
//}
//
//- (UIImage *)ndl_snapshotWithSize:(CGSize)size
//{
//    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
//    [self drawViewHierarchyInRect:self.bounds afterScreenUpdates:YES];
//    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    return image;
//}
//
//- (UIViewController *)ndl_viewController
//{
//    UIResponder *responder = [self nextResponder];
//    do {
//        if ([responder isKindOfClass:[UIViewController class]]) {
//            return (UIViewController *)responder;
//        }
//        responder = [responder nextResponder];
//    } while (responder != nil);
//    return nil;
//}

@end
