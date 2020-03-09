//
//  UIColor+Addendum.swift
//  Addendum
//
//  Created by mack on 3/8/20.
//

import UIKit

public extension UIColor {
  /// Convenience for creating a color from whole RGB values.
  convenience init(red: Int, green: Int, blue: Int, alpha: CGFloat = 1.0) {
    self.init(red: CGFloat(red) / 255.0, green: CGFloat(red) / 255.0, blue: CGFloat(red) / 255.0, alpha: alpha)
  }

  /// Convenience for creating a color from a hex value, expected format: #RRGGBB.
  convenience init(hex: String) {
    assert(hex[hex.startIndex] == "#", "Expected hex string of format #RRGGBB")

    let scanner = Scanner(string: hex)
    var rgb = UInt32(0)

    scanner.scanLocation = 1 // skip #
    scanner.scanHexInt32(&rgb)

    let red = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
    let green = CGFloat((rgb & 0xFF00) >> 8) / 255.0
    let blue = CGFloat((rgb & 0xFF)) / 255.0

    self.init(red: red, green: green, blue: blue, alpha: 1)
  }
}
