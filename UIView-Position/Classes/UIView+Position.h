#import <UIKit/UIKit.h>

@interface UIView (Position)

@property (nonatomic) UIEdgeInsets marginInsets;
/**
 * Dependent superview
 *
 * Sets marginLeft = self.left
 */
@property (nonatomic) CGFloat marginLeft;

/**
 * Dependent superview
 *
 * Sets modify  width = superview.width - marginRight - marginLeft;

 */
@property (nonatomic) CGFloat marginRight;

/**
 * Dependent superview
 *
 * Sets frame.origin.y = superview.top - marginTop
 */
@property (nonatomic) CGFloat marginTop;

/**
 * Dependent superview
 *
 * Sets height = superview.height - marginTop - marginBottom
 */
@property (nonatomic) CGFloat marginBottom;

/**
 * Shortcut for frame.origin.x.
 *
 * Sets frame.origin.x = left
 */
@property (nonatomic) CGFloat left;

/**
 * Shortcut for frame.origin.y
 *
 * Sets frame.origin.y = top
 */
@property (nonatomic) CGFloat top;

/**
 * Shortcut for frame.origin.x + frame.size.width
 *
 * Sets frame.origin.x = right - frame.size.width
 */
@property (nonatomic) CGFloat right;

/**
 * Shortcut for frame.origin.y + frame.size.height
 *
 * Sets frame.origin.y = bottom - frame.size.height
 */
@property (nonatomic) CGFloat bottom;

/**
 * Shortcut for frame.size.width
 *
 * Sets frame.size.width = width
 */
@property (nonatomic) CGFloat width;

/**
 * Shortcut for frame.size.height
 *
 * Sets frame.size.height = height
 */
@property (nonatomic) CGFloat height;

/**
 * Shortcut for center.x
 *
 * Sets center.x = centerX
 */
@property (nonatomic) CGFloat centerX;

/**
 * Shortcut for center.y
 *
 * Sets center.y = centerY
 */
@property (nonatomic) CGFloat centerY;

/**
 * Shortcut for frame.origin
 */
@property (nonatomic) CGPoint origin;

/**
 * Shortcut for frame.size
 */
@property (nonatomic) CGSize size;

/**
 * The view controller whose view contains this view.
 */
- (UIViewController*)viewController;

@end
