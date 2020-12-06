//
//  Chainable+UIView.swift
//  Chainable
//
//  Created by stat on 2020/12/06.
//

import UIKit
import SnapKit

extension UIView: Chainable { }

extension Chain where Origin: UIView {
  
  @discardableResult
  public func add(to: UIView) -> Chain {
    to.addSubview(self.origin)
    return self
  }
  
  @discardableResult
  public func background(color: UIColor?) -> Chain {
    self.origin.backgroundColor = color
    return self
  }
  
  @discardableResult
  public func makeConstraints(closure: (ConstraintMaker) -> Void) -> Chain {
    self.origin.snp.makeConstraints(closure)
    return self
  }
  
  @discardableResult
  public func remakeConstraints(closure: (ConstraintMaker) -> Void) -> Chain {
    self.origin.snp.remakeConstraints(closure)
    return self
  }
  
  @discardableResult
  public func cornerRadius(_ radius: CGFloat) -> Chain {
    self.origin.layer.cornerRadius = radius
    return self
  }
  
  @discardableResult
  public func clipToBounds(_ clip: Bool) -> Chain {
    self.origin.clipsToBounds = clip
    return self
  }
  
  @discardableResult
  public func contentMode(_ mode: UIView.ContentMode) -> Chain {
    self.origin.contentMode = mode
    return self
  }
  
  @discardableResult
  public func isHidden(_ hidden: Bool) -> Chain {
    self.origin.isHidden = hidden
    return self
  }
  
  @discardableResult
  public func border(width: CGFloat) -> Chain {
    self.origin.layer.borderWidth = width
    return self
  }
  
  @discardableResult
  public func border(color: UIColor) -> Chain {
    self.origin.layer.borderColor = color.cgColor
    return self
  }
  
  @discardableResult
  public func tintColor(_ by: UIColor?) -> Chain {
    self.origin.tintColor = by
    return self
  }
  
  @discardableResult
  public func frame(_ by: CGRect) -> Chain {
    self.origin.frame = by
    return self
  }
  
  @discardableResult
  public func frameSize(_ size: CGSize) -> Chain {
    self.origin.frame.size = size
    return self
  }
  
  @discardableResult
  public func frameWidth(_ width: CGFloat) -> Chain {
    self.origin.frame.size.width = width
    return self
  }
  
  @discardableResult
  public func alpha(_ alpha: CGFloat) -> Chain {
    self.origin.alpha = alpha
    return self
  }
  
  @discardableResult
  public func maskedCorners(_ mask: CACornerMask) -> Chain {
    self.origin.layer.maskedCorners = mask
    return self
  }
  
  @discardableResult
  public func semanticContentAttribute(_ attribute: UISemanticContentAttribute) -> Chain {
    self.origin.semanticContentAttribute = attribute
    return self
  }
}

