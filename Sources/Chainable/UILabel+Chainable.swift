//
//  Chainable+UILabel.swift
//  Chainable
//
//  Created by stat on 2020/12/06.
//

import UIKit

extension Chain where Origin: UILabel {
  @discardableResult
  public func text(_ text: String?) -> Chain {
    self.origin.text = text
    return self
  }
  
  @discardableResult
  public func textColor(_ color: UIColor) -> Chain {
    self.origin.textColor = color
    return self
  }
  
  @discardableResult
  public func font(_ font: UIFont?) -> Chain {
    self.origin.font = font
    return self
  }
  
  @discardableResult
  public func numberOfLines(_ lines: Int) -> Chain {
    self.origin.numberOfLines = lines
    return self
  }
  
  @discardableResult
  public func textAlignment(_ by: NSTextAlignment) -> Chain {
    self.origin.textAlignment = by
    return self
  }
}
