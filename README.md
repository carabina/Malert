<img src="https://github.com/vitormesquita/Malert/blob/develop/Malert/Assets/Malert_brand.png">

[![CI Status](http://img.shields.io/travis/Vitor Mesquita/Malert.svg?style=flat)](https://travis-ci.org/Vitor Mesquita/Malert)
[![Version](https://img.shields.io/cocoapods/v/Malert.svg?style=flat)](http://cocoapods.org/pods/Malert)
[![License](https://img.shields.io/cocoapods/l/Malert.svg?style=flat)](http://cocoapods.org/pods/Malert)
[![Platform](https://img.shields.io/cocoapods/p/Malert.svg?style=flat)](http://cocoapods.org/pods/Malert)

## A simple iOS dialog View, customizable dialog View and written in Swift 

Malert came to facilitate make custom alert views, introducing as `UIAlertViewController`. Malert allows you make some custom configurations to show your alert as your application layout.
Malert can display one or a queue of alerts and you can to display alert with some animations.

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

- Xcode 8.0+
- Swift 3.0+

## Installation

Malert is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "Malert"
```
## Example

This is a simple way. If you want to know more, check the repo.

### Default Malert with title

```swift
import Malert

    //Create Buttons
    let button1 = MalertButtonConfig(title: "title1") { 
        //Do something when click at button
    }

    let button2 = MalertButtonConfig(title: "title2") {
        //Do something when click at button
    }

    let button3 = MalertButtonConfig(title: "title3") {
        //Do something when click at button
    }

    //Create Dialog with title, custom view, buttons and animation type
    MalertManager.shared.show(title: "title", 
        customView: test.instantiateFromNib(), 
        buttons: [button1, button2, button3], 
        animationType: .modalLeft)
```

### Default Malert without title

```swift
import Malert

    //Create Buttons
    let button1 = MalertButtonConfig(title: "title1") { 
        //Do something when click on button
    }

    let button2 = MalertButtonConfig(title: "title2") {
        //Do something when click on button
    }

    //Create Dialog with custom view, buttons and animation type
    MalertManager.shared.show(customView: myCustomView, 
        buttons: [button1, button2], 
        animationType: .modalLeft)
```

### How to create buttons 

Malert provides a struct to configure your button, for each button you need to instantiate `MalertButtonConfig`

```swift
    
    //Create button with default background color
    let button = MalertButtonConfig(title: "button with default background") {
        //Block will call when click on button
    }
    
    //Create button with custom background color
    let button2 = MalertButtonConfig(title: "button with custom background", backgroundColor: .red) {
        //Block will call when click on button
    }
```

## Customize

Malert is very cstomizable. There are two ways to custmize your Malert: 

- [x] Appearece 
- [x] Custom single alert

If all malert in your application is the same, malert provides for you a global customization, and every malert will have the same customization.

```swift
    var malertAppearance = MalertView.appearance()
    malertAppearance.backgroundColor = .gray
    malertAppearance.buttonsAxis = .horizontal
    malertAppearance.margin = 16 
```

If you want just customize one malert in you application, you can pass `MalertViewConfiguration` containing your configuration

```swift
    //build your configuration
    var malertConfiguration = MalertViewConfiguration()
    malertConfiguration.backgroundColor = .brown
    malertConfiguration.buttonsAxis = .horizontal
    malertConfiguration.textAlign = .center
    malertConfiguration.textColor = .red

    //And pass when you start malert
    MalertManager.shared.show(title: "title", customView: teste.instantiateFromNib(), buttons: [malertButtonConfig], animationType: .modalRight, malertConfiguration: malertConfiguration)
```

## Default values

By default malert provides defaults values:

```swift
    //Defaults attr malertView
    var malertAppearance = MalertView.appearance()

    malertAppearance.backgroundColor    : UIColor                 = .white
    malertAppearance.cornerRadius       : CGFloat                 = 6
    malertAppearance.textColor          : UIColor                 = .black
    malertAppearance.textAlign          : NSTextAlignment         = .left
    malertAppearance.buttonDistribution : OAStackViewDistribution = .fillEqually
    malertAppearance.buttonsAligment    : OAStackViewAlignment    = .fill
    malertAppearance.buttonsAxis        : UILayoutConstraintAxis  = .vertical
    malertAppearance.margin             : CGFloat                 = 0
```
```swift
    //Defaults attr malertButton
    var malertButtonAppearance = MalertButton.appearance()

    malertButtonAppearence.tintColor       : UIColor = .black
    malertButtonAppearance.backgroundColor : UIColor = .clear
    malertButtonAppearance.height          : CGFloat = 33
    malertButtonAppearance.separatorColor  : UIColor = UIColor(white: 0.8, alpha: 1)
```

## Author

Vitor Mesquita, vitor.mesquita09@gmail.com

## License

Malert is available under the MIT license. See the LICENSE file for more info.
