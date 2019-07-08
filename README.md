## Requirements

- iOS 8.0+
- Swift 4.0+
- Xcode 9.0+

## Installation

### CocoaPods

AnyFormatKit is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ReadyMarkups'
```

Then, run the following command:

```bash
$ pod install
```

### Carthage

To integrate AnyFormatKit into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "Brander-ua/ReadyMarkups" ~> 0.1.0
```

Run `carthage update` to build the framework and drag the built `ReadyMarkups.framework` into your Xcode project.

## Usage

### Import

```swift
import ReadyMarkups
```

## Naming rules

Read name from left to right, from top to bottom.

### Tips

* Tile - element of markup, view
* V - vertical
* H - horizontal
* Edged - element, that have `left`, `top`, `right`, `bottom` constraints
* Centered - element, that have `centerX`, `centerY` constraints.
* 1, 2, 3.. - number of elements with simmilar characteristic 
* 1st, 2nd - order of element

### Examples

* `H2Tiles` - horizontal 2 elements
* `H2Tiles1stCentered` - horizontal 2 elements, first is centered
* `V3EdgedTiles` - vertical 3 elements, each has left, top, right, bottom constraints

## Author

Aleksandr Orlov, aleksandr.orlov@branderstudio.com

## License

ReadyMarkups is available under the MIT license. See the LICENSE file for more info.
