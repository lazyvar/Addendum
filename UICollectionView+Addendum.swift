//
//  UICollectionView+Addendum.swift
//  Addendum
//
//  Created by Mack Hasz on 10/31/20.
//

import UIKit

public extension UICollectionView {
  /// Shorthand for registering UICollectionViewCell nib whoose name matches the type.
  /// In used conjunction with `dequeueReusableCell(withType:)`.
  func registerCellNibForClass<CellClass: UICollectionViewCell> (_ cellClass: CellClass.Type) {
    let name = classNameWithoutModule(cellClass)

    register(UINib(nibName: name, bundle: nil), forCellWithReuseIdentifier: name)
  }

  /// Shorthand for dequing UICollectionViewCell whoose nib name matches the type.
  /// In used conjunction with `registerCellNibForClass(_)`.
  func dequeueReusableCell<CellClass: UICollectionViewCell>(withType cellClass: CellClass.Type, for indexPath: IndexPath) -> CellClass {
    let name = classNameWithoutModule(cellClass)

    return dequeueReusableCell(withReuseIdentifier: name, for: indexPath) as! CellClass
  }
}
