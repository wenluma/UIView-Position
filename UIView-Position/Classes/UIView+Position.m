#import "UIView+Position.h"
#import <objc/runtime.h>

@implementation UIView (Position)

- (CGFloat)multiplierAxisX {
    return self.width / self.superview.width;
}

- (void)setMultiplierAxisX:(CGFloat)multiplierAxisX {
    self.width = self.superview.width * MIN(1.0, ABS(multiplierAxisX));
}

- (CGFloat)multiplierAxisY {
    return self.height / self.superview.height;
}

- (void)setMultiplierAxisY:(CGFloat)multiplierAxisY {
    self.height = self.superview.height * MIN(1.0, ABS(multiplierAxisY));
}

- (UIEdgeInsets)marginInsets {
    NSValue *edge = objc_getAssociatedObject(self, @selector(marginInsets));
    if (edge == nil) return UIEdgeInsetsZero;
    return edge.UIEdgeInsetsValue;
}

- (void)setMarginInsets:(UIEdgeInsets)marginInsets {
    objc_setAssociatedObject(self, @selector(marginInsets), [NSValue valueWithUIEdgeInsets:marginInsets], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    self.frame = UIEdgeInsetsInsetRect(self.superview.bounds, marginInsets);
}

- (CGFloat)marginLeft {
    UIEdgeInsets edge = self.marginInsets;
    return edge.left;
}

- (void)setMarginLeft:(CGFloat)marginLeft {
    UIEdgeInsets edge = self.marginInsets;
    edge.left = marginLeft;
    self.marginInsets = edge;
}

- (CGFloat)marginRight {
    UIEdgeInsets edge = self.marginInsets;
    return edge.right;
}

- (void)setMarginRight:(CGFloat)marginRight {
    UIEdgeInsets edge = self.marginInsets;
    edge.right = marginRight;
    self.marginInsets = edge;
}

- (CGFloat)marginTop {
    UIEdgeInsets edge = self.marginInsets;
    return edge.top;
}

- (void)setMarginTop:(CGFloat)marginTop {
    UIEdgeInsets edge = self.marginInsets;
    edge.top = marginTop;
    self.marginInsets = edge;
}

- (CGFloat)marginBottom {
    UIEdgeInsets edge = self.marginInsets;
    return edge.bottom;
}

- (void)setMarginBottom:(CGFloat)marginBottom {
    UIEdgeInsets edge = self.marginInsets;
    edge.bottom = marginBottom;
    self.marginInsets = edge;
}

- (CGFloat)left {
	return CGRectGetMinX(self.frame);
}

- (void)setLeft:(CGFloat)left {
	CGRect frame = self.frame;
	frame.origin.x = left;
	self.frame = frame;
}

- (CGFloat)top {
	return CGRectGetMinY(self.frame);
}

- (void)setTop:(CGFloat)top {
	CGRect frame = self.frame;
	frame.origin.y = top;
	self.frame = frame;
}

- (CGFloat)right {
	return CGRectGetMaxX(self.frame);
}

- (void)setRight:(CGFloat)right {
	CGRect frame = self.frame;
	frame.origin.x = right - frame.size.width;
	self.frame = frame;
}

- (CGFloat)bottom {
    return CGRectGetMaxY(self.frame);
}

- (void)setBottom:(CGFloat)bottom {
	CGRect frame = self.frame;
	frame.origin.y = bottom - frame.size.height;
	self.frame = frame;
}

- (CGFloat)centerX {
	return self.center.x;
}

- (void)setCenterX:(CGFloat)centerX {
	self.center = CGPointMake(centerX, self.center.y);
}

- (CGFloat)centerY {
	return self.center.y;
}

- (void)setCenterY:(CGFloat)centerY {
	self.center = CGPointMake(self.center.x, centerY);
}

- (CGFloat)width {
	return CGRectGetWidth(self.frame);
}

- (void)setWidth:(CGFloat)width {
	CGRect frame = self.frame;
	frame.size.width = width;
	self.frame = frame;
}

- (CGFloat)height {
	return CGRectGetHeight(self.frame);
}

- (void)setHeight:(CGFloat)height {
	CGRect frame = self.frame;
	frame.size.height = height;
	self.frame = frame;
}

- (CGPoint)origin {
	return self.frame.origin;
}

- (void)setOrigin:(CGPoint)origin {
	CGRect frame = self.frame;
	frame.origin = origin;
	self.frame = frame;
}

- (CGSize)size {
	return self.frame.size;
}

- (void)setSize:(CGSize)size {
	CGRect frame = self.frame;
	frame.size = size;
	self.frame = frame;
}

- (UIViewController*)viewController {
	for (UIView* next = [self superview]; next; next = next.superview) {
		UIResponder* nextResponder = [next nextResponder];
		if ([nextResponder isKindOfClass:[UIViewController class]]) {
			return (UIViewController*)nextResponder;
		}
	}
	return nil;
}

@end
