//
//  Functions.swift
//  Addendum
//
//  Created by mack on 3/8/20.
//

import Foundation

func classNameWithoutModule(_ class: AnyClass) -> String {
  return `class`
    .description()
    .components(separatedBy: ".")
    .dropFirst()
    .joined(separator: ".")
}
