public class Chain<Origin> {
  public var origin: Origin
  
  public init(origin: Origin) {
    self.origin = origin
  }
}

public protocol Chainable { }

public extension Chainable {
  func asChainable() -> Chain<Self> {
    return Chain(origin: self)
  }
}
