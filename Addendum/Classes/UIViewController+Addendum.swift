//
//  UIViewController+Addendum.swift
//  Addendum
//
//  Created by mack on 3/8/20.
//

import UIKit

public extension UIViewController {
  /// Shorthand for pushing a viewController from a navigationController.
  func push(_ viewController: UIViewController, animated: Bool = true) {
    navigationController?.pushViewController(viewController, animated: animated)
  }
  
  /// Yep.
  func inNav() -> UINavigationController {
    return UINavigationController(rootViewController: self)
  }
  
  /// Does nothing. Useful for Selectors.
  @objc func doNothing() { }
  
  /// Dismisses the viewController. Useful for Selectors.
  @objc func dismissSelf() {
    dismiss(animated: true, completion: nil)
  }
  
  /// Assuming the Application's keyWindow is present and has a `rootViewController`, traverses the viewController hierarchy for the viewController that is smack in the users face.
  static func topmost(for window: UIWindow = UIApplication.shared.keyWindow!) -> UIViewController! {
    return window.topmostViewController()
  }
  
  /// Fills the viewController's view with a child's view and calls relevant UIViewController move methods.
  func install(_ child: UIViewController) {
    addChildViewController(child)
    child.view.inflate(in: view)
    child.didMove(toParentViewController: self)
  }
}
