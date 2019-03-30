#import "UIView+Position.h"

@implementation UIView (Position)

- (void)setMarginInsets:(UIEdgeInsets)marginInsets {
    self.marginTop = marginInsets.top;
    self.marginLeft = marginInsets.left;
    self.marginBottom = marginInsets.bottom;
    self.marginRight = marginInsets.right;
}

- (UIEdgeInsets)marginInsets {
    return UIEdgeInsetsMake(self.marginTop, self.marginLeft, self.marginBottom, self.marginRight);
}


- (CGFloat)marginLeft {
    return self.left;
}

- (void)setMarginLeft:(CGFloat)marginLeft {
    self.left = self.superview.left + marginLeft;
}

- (CGFloat)marginRight {
    return self.superview.width - self.right;
}

- (void)setMarginRight:(CGFloat)marginRight {
    self.width = self.superview.width - marginRight - self.marginLeft;
}

- (CGFloat)marginTop {
    return self.top;
}

- (void)setMarginTop:(CGFloat)marginTop {
    self.top = marginTop;
}

- (CGFloat)marginBottom {
    return self.superview.height - self.bottom;
}

- (void)setMarginBottom:(CGFloat)marginBottom {
    self.height = self.superview.height - self.marginTop - marginBottom;
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
