//
//  UITextField+Chainable.swift
//  Chainable
//
//  Created by stat on 2020/12/06.
//

import UIKit

extension Chain where Origin: UITextField {
  
  @discardableResult
  public func textColor(_ color: UIColor) -> Chain {
    self.origin.textColor = color
    return self
  }
  
  @discardableResult
  public func placeholder(_ text: String?) -> Chain {
    self.origin.placeholder = text
    return self
  }
  
  @discardableResult
  public func border(style: UITextField.BorderStyle) -> Chain {
    self.origin.borderStyle = style
    return self
  }
  
  @discardableResult
  public func keyboard(type: UIKeyboardType) -> Chain {
    self.origin.keyboardType = type
    return self
  }
  
  @discardableResult
  public func returnKey(type: UIReturnKeyType) -> Chain {
    self.origin.returnKeyType = type
    return self
  }
  
  @discardableResult
  public func clearButton(mode: UITextField.ViewMode) -> Chain {
    self.origin.clearButtonMode = mode
    return self
  }
}
