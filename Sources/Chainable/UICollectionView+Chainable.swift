//
//  UICollectionView+Chainable.swift
//  Chainable
//
//  Created by stat on 2020/12/06.
//

import UIKit

extension Chain where Origin: UICollectionView {
  @discardableResult
  public func register(_ cellType: UICollectionViewCell.Type) -> Chain {
    self.origin.register(cellType,
                         forCellWithReuseIdentifier: cellType.className)
    return self
  }
  
  @discardableResult
  public func isPagingEnabled(_ canPaging: Bool) -> Chain {
    self.origin.isPagingEnabled = canPaging
    return self
  }
  
  @discardableResult
  public func showsHorizontalScrollIndicator(_ show: Bool) -> Chain {
    self.origin.showsHorizontalScrollIndicator = show
    return self
  }
  
  @discardableResult
  public func showsVerticalScrollIndicator(_ show: Bool) -> Chain {
    self.origin.showsVerticalScrollIndicator = show
    return self
  }
  
  @discardableResult
  public func bounces(_ bounces: Bool) -> Chain {
    self.origin.bounces = bounces
    return self
  }
  
  @discardableResult
  public func layout(_ layout: UICollectionViewLayout) -> Chain {
    self.origin.collectionViewLayout = layout
    return self
  }
  
  @discardableResult
  public func contentInset(_ inset: UIEdgeInsets) -> Chain {
    self.origin.contentInset = inset
    return self
  }
}
