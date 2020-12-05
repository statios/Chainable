public class Chain<Origin> {
  public var origin: Origin
  
  public init(origin: Origin) {
    self.origin = origin
  }
}

public protocol Chainable { }

public extension Chainable {
  public func asChainable() -> Chain<Self> {
    return Chain(origin: self)
  }
}
