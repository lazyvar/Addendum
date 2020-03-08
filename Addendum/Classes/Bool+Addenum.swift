//
//  Bool+Addenum.swift
//  Addendum
//
//  Created by mack on 3/8/20.
//

import Foundation

extension Bool {
  /// Non-mutating version of Swift `toggle()`. Flips the Bool's value.
  func toggled() -> Bool {
    return !self
  }
}
