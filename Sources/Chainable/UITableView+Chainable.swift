//
//  UITableView+Chainable.swift
//  Chainable
//
//  Created by stat on 2020/12/06.
//

import UIKit

extension Chain where Origin: UITableView {
  @discardableResult
  public func register(_ cellType: UITableViewCell.Type) -> Chain {
    self.origin.register(cellType, forCellReuseIdentifier: cellType.className)
    return self
  }
  
  @discardableResult
  public func keyboardDismiss(mode: UIScrollView.KeyboardDismissMode) -> Chain {
    self.origin.keyboardDismissMode = mode
    return self
  }
  
  @discardableResult
  public func rowHeight(_ height: CGFloat) -> Chain {
    self.origin.rowHeight = height
    return self
  }
}
