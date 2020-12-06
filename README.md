# Chainable

![Chainable%20c8603464fa59447a8ee7bacf6e0ec65d/Chainable.png](Chainable%20c8603464fa59447a8ee7bacf6e0ec65d/Chainable.png)

✨Provides improved syntax for setting UIKit properties.

## 📝 Usage

Basic usage with auto layout

```swift
UIButton().asChainable()
  .setTitle("Done", for: .normal)
  .background(color: .red)
  .add(to: view)
  .makeConstraints { (make) in
    make.center.equalToSuperview()
    make.size.equalTo(100)
  }
```

Want to use with your own types? Just make extensions.

```swift
import Chainable

class Person {
  var name: String?
  var age: Int?
}

extension Person: Chainable { }

extension Chain where Origin == Person {
  @discardableResult
  func setName(_ name: String?) -> Chain {
    self.origin.name = name
    return self
  }
  @discardableResult
  func setAge(_ age: Int?) -> Chain {
    self.origin.age = age
    return self
  }
}
```

```swift
let myPerson = Person()

myPerson.asChainable()
  .setAge(29)
  .setName("STAT")
```

## 🛠 Installation

### Swift package manager

```swift
dependencies: [
  .Package(url: "https://github.com/statios/Chainable", majorVersion: 1)
]
```

### Mannually

If you prefer not to use either of the aforementioned dependency managers, you can integrate Chainable into your project manually.

## 📄 License

Chainable is released under the MIT license. See LICENSE for details.