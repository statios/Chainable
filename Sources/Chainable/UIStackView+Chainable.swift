//
//  UIStackView+Chainable.swift
//  Chainable
//
//  Created by stat on 2020/12/06.
//

import UIKit

extension Chain where Origin: UIStackView {
  @discardableResult
  public func distribution(_ by: UIStackView.Distribution) -> Chain {
    self.origin.distribution = by
    return self
  }
  @discardableResult
  public func axis(_ by: NSLayoutConstraint.Axis) -> Chain {
    self.origin.axis = by
    return self
  }
}


