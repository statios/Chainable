//
//  UIImageView+Chainable .swift
//  Chainable
//
//  Created by stat on 2020/12/06.
//

import UIKit

extension Chain where Origin: UIImageView {
  @discardableResult
  public func image(_ image: UIImage?) -> Chain {
    self.origin.image = image
    return self
  }
}

