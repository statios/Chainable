//
//  UIButton+Chainable.swift
//  Chainable
//
//  Created by stat on 2020/12/06.
//

import UIKit

extension Chain where Origin: UIButton {
  @discardableResult
  public func setTitleColor(_ by: UIColor?, for state: UIControl.State) -> Chain {
    self.origin.setTitleColor(by, for: state)
    return self
  }
  
  @discardableResult
  public func setImage(_ by: UIImage?, for state: UIControl.State) -> Chain {
    self.origin.setImage(by, for: state)
    return self
  }
  
  @discardableResult
  public func setTitle(_ title: String?, for state: UIControl.State) -> Chain {
    self.origin.setTitle(title, for: state)
    return self
  }
  
  @discardableResult
  public func font(_ font: UIFont?) -> Chain {
    self.origin.titleLabel?.font = font
    return self
  }
  
  @discardableResult
  public func contentEdgeInsets(_ insets: UIEdgeInsets) -> Chain {
    self.origin.contentEdgeInsets = insets
    return self
  }
}
