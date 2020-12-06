//
//  UIViewController+Chainable.swift
//  Chainable
//
//  Created by stat on 2020/12/06.
//

import UIKit

extension UIViewController: Chainable { }

extension Chain where Origin: UIViewController {
  
  @discardableResult
  public func title(_ by: String?) -> Chain {
    self.origin.title = by
    return self
  }
  
  @discardableResult
  public func setTabBarItem(_ tabBarItem: UITabBarItem) -> Chain {
    self.origin.tabBarItem = tabBarItem
    return self
  }
}

