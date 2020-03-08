//
//  UIView+Addendum.swift
//  Addendum
//
//  Created by mack on 3/8/20.
//

import UIKit

public extension UIView {
  /// Vertically and horizontally centers this view to the provided view. Optional x and y displacement.
  @discardableResult func center(in view: UIView, x: CGFloat = 0, y: CGFloat = 0) -> (horizontalConstraint: NSLayoutConstraint, verticalConstraint: NSLayoutConstraint) {
    return (horizontallyCenter(in: view, x: x), verticallyCenter(in: view, y: y))
  }

  /// Horizontally centers this view to the provided view. Optional x displacement.
  @discardableResult func horizontallyCenter(in view: UIView, x: CGFloat = 0) -> NSLayoutConstraint {
    let constraint = NSLayoutConstraint(item: self, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: x)
    constraint.isActive = true
    
    return constraint
  }
  
  /// Vertically centers this view to the provided view. Optional y displacement.
  @discardableResult func verticallyCenter(in view: UIView, y: CGFloat = 0) -> NSLayoutConstraint {
    let constraint = NSLayoutConstraint(item: self, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: y)
    constraint.isActive = true
    
    return constraint
  }
  
  /// Constraints the view's width to a fixed value.
  @discardableResult func constrainWidth(_ width: CGFloat) -> NSLayoutConstraint {
    let constraint = NSLayoutConstraint(item: self, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: width)
    constraint.isActive = true
      
    return constraint
  }

  /// Constraints the view's height to a fixed value.
  @discardableResult func constrainHeight(_ height: CGFloat) -> NSLayoutConstraint {
    let constraint = NSLayoutConstraint(item: self, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: height)
    constraint.isActive = true
    
    return constraint
  }
  
  /// Recursively traverses subviews and returns all.
  func allSubviews() -> [UIView] {
    return subviews + subviews.flatMap { $0.allSubviews() }
  }
}
