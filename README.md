## iOS Apps

* in a command line app, we look for main.m and start coding there.
* in an ios app, the `main.m` initializes the AppDelegate, which can be treated as our app's entry point.
* in an iOS app, you will **never** touch `main.m`

* The app's main interface, is a storyboard and is the initial screen that we see.

### [UIViewController](https://developer.apple.com/documentation/uikit/uiviewcontroller)

* The controller in teh mvc pattern
* Controls view heirarchy
* Passes User Input


### Storybaord

* The visual part
* the canvas
* UI editor

## MVC

Model-View-Controller

* A design pattern
* always separate what the user sees, the data that's used to populate what the user sees.
* controller controls communication between the two.

#### Controller

* View controller is the controller. 
* View controllers can represent a single screen.

#### Model

* Model is data
* Dog, or Cat, or Car, or any data object. 
* Pizza, kitchen.
* Just data, not concerned with how they should be presented. 


#### Views

* Views are IO (Input Output)
* view is what they see
* buttons, labels, table views, image view, cells, sliders, 

![mvc](https://cdn-images-1.medium.com/max/1200/1*c0aGaDNX41qu6e8E4OEgwQ.png)


* Models don't know about controllers or views.
* Views don't know about controllers or models.
* controllers know about everything.

## Views

## IBOutlet

* means we can drag a blue line from a **property** to an element on the storyboard.


### Buttons

```objective-c
[self.canopyButton setTitle:canopy.location forState:UIControlStateNormal];
[self.canopyButton setTitleColor:canopy.color forState:UIControlStateNormal];
```

### Other elements

```objective-c
self.label.text = canopy.location;
```

## self vs _

* Use `self` except for in initializers.

## The Responder Chain 

## Auto Layout

Don't use auto layout today, that's for tomorrow.

## Links

* [UIViewController](https://developer.apple.com/documentation/uikit/uiviewcontroller)
* [Apple Human Interface Guidelines](https://developer.apple.com/ios/human-interface-guidelines/overview/themes/)
* [UIResponder Chain](https://developer.apple.com/documentation/uikit/touches_presses_and_gestures/understanding_event_handling_responders_and_the_responder_chain)
* [S.O.L.I.D](https://en.wikipedia.org/wiki/SOLID_(object-oriented_design))