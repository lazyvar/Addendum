//
//  UIWindow+Addendum.swift
//  Addendum
//
//  Created by mack on 3/8/20.
//

import UIKit

public extension UIWindow {
  /// Traverses the viewController hierarchy for the viewController that is smack in the users face. Assumes `rootViewController` is not nil.
  func topmostViewController() -> UIViewController! {
    func recurse(_ viewController: UIViewController) -> UIViewController {
      switch viewController {
      case let tabBarViewController as UITabBarController:
        return recurse(tabBarViewController.selectedViewController ?? tabBarViewController)
      case let navigationViewController as UINavigationController:
        return recurse(navigationViewController.viewControllers.last ?? navigationViewController)
      default:
        if let presentedViewController = viewController.presentedViewController, !presentedViewController.isBeingDismissed {
          return recurse(presentedViewController)
        } else {
          return viewController
        }
      }
    }
    
    return recurse(rootViewController!)
  }
}
