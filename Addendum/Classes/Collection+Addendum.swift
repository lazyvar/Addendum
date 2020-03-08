//
//  Collection+Addendum.swift
//  Addendum
//
//  Created by mack on 3/8/20.
//

import Foundation

extension Collection {
  /// Returns the element at the specified index if it is within bounds, otherwise nil.
  subscript (safe index: Index) -> Element? {
    return indices.contains(index) ? self[index] : nil
  }
  
  /// Type safe search for object of specific type T.
  func first<T>(ofType: T.Type) -> T? {
    return first(where: { $0 is T }) as? T
  }
}
