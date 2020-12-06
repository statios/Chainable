//
//  NSObject.swift
//  Chainable
//
//  Created by stat on 2020/12/06.
//

import Foundation

extension NSObject {
  static var className: String {
    return String(describing: Self.self)
  }
}

