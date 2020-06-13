# StrokedShape

SwiftUI allows a `Shape` to have either a foreground color added or a stroke, but not both. The solution is easy, but somewhat cumbersome: give the shape a foreground color, then overlay an identical shape with a stroke.

This is a package to reduce this boilerplate of giving a shape both a foreground color and stroke.

```swift
StrokedShape(
    foreground: .blue,
    outlineColor: .black,
    outlineWidth: 1
) {
    Circle()
}
```
