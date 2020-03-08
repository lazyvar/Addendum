//
//  String+Addendum.swift
//  Addendum
//
//  Created by mack on 3/8/20.
//

import Foundation

public extension String {
  /// Removes whitespaces and newlines from the beginning and the end of the string.
  func trimmed() -> String {
    return self.trimmingCharacters(in: .whitespacesAndNewlines)
  }

  /// Mutates to `trimmed`.
  mutating func trim() {
    self = trimmed()
  }
  
  /// Returns true if the string is a valid email.
  func isValidEmail() -> Bool {
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    
    return emailTest.evaluate(with: self)
  }
}
