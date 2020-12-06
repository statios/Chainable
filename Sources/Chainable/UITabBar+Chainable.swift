//
//  UITabBar+Chainable.swift
//  Chainable
//
//  Created by stat on 2020/12/06.
//

import UIKit

extension Chain where Origin: UITabBar {
  
  @discardableResult
  public func tint(color: UIColor?) -> Chain {
    self.origin.tintColor = color
    return self
  }

  @discardableResult
  public func unselectedItemTint(color: UIColor?) -> Chain {
    self.origin.unselectedItemTintColor = color
    return self
  }
  
  @discardableResult
  public func barTint(color: UIColor?) -> Chain {
    self.origin.barTintColor = color
    return self
  }
  
}
