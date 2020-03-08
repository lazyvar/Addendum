//
//  UIImageView+Addendum.swift
//  Addendum
//
//  Created by mack on 3/8/20.
//

import UIKit

extension UIImageView {
  /// Creates an image from the context of the imageView accounting for bounds, tint, contentMode, etc.
  func imageFromContext() -> UIImage {
    defer { UIGraphicsEndImageContext() }

    UIGraphicsBeginImageContextWithOptions(bounds.size, isOpaque, 0.0)
    layer.render(in: UIGraphicsGetCurrentContext()!)
    
    return UIGraphicsGetImageFromCurrentImageContext()!
  }
}
