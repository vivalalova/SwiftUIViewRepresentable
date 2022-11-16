# SwiftUIViewRepresentable

Just convert SwiftUI and UIView with UIViewRepresentable and UIHostingController

## Usage

```swift
    var body: some View {
			UILabel()
        .swiftUIView() // convert to SwiftUI
        .uiView()      // convert to UIView
        .swiftUIView()
    }
}
```
