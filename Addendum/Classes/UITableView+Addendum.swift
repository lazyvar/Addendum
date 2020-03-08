//
//  UITableView+Addendum.swift
//  Addendum
//
//  Created by mack on 3/8/20.
//

import UIKit

extension UITableView {
  /// Shorthand for registering UITableViewCell nib whoose name matches the type. In used conjunction with `dequeueReusableCell(withType:)`.
  func registerCellNibForClass<CellClass: UITableViewCell> (_ cellClass: CellClass.Type) {
    let name = classNameWithoutModule(cellClass)

    register(UINib(nibName: name, bundle: nil), forCellReuseIdentifier: name)
  }
  
  /// Shorthand for dequing UITableViewCell whoose nib name matches the type. In used conjunction with `registerCellNibForClass(_)`.
  func dequeueReusableCell<CellClass: UITableViewCell>(withType cellClass: CellClass.Type, for indexPath: IndexPath) -> CellClass {
    let name = classNameWithoutModule(cellClass)

    return dequeueReusableCell(withIdentifier: name, for: indexPath) as! CellClass
  }
}
