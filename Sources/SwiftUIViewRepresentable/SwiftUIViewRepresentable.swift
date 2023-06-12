import SwiftUI
import UIKit

public
extension UIView {
    func swiftUIView() -> SwiftUIView<UIView> {
        SwiftUIView(view: self)
    }
}

public
extension UIViewController {
    func swiftUIView() -> SwiftUIViewController<UIViewController> {
        SwiftUIViewController(view: self)
    }
}

public
struct SwiftUIView<T: UIView>: UIViewRepresentable {
    var root: T

    public init(view: T) {
        self.root = view
    }

    public func makeUIView(context: Context) -> T {
        self.root
    }

    public func updateUIView(_ uiView: T, context: Context) {}
}

public
struct SwiftUIViewController<T: UIViewController>: UIViewControllerRepresentable {
    var root: T

    init(view: T) {
        self.root = view
    }

    public func makeUIViewController(context: Context) -> T {
        self.root
    }

    public func updateUIViewController(_ uiViewController: T, context: Context) {}
}

public extension View {
    func uiViewController() -> UIViewController {
        UIHostingController(rootView: self)
    }

    func uiView() -> UIView {
        self.uiViewController().view
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var label: UILabel {
        let label = UILabel()
        label.text = "hihihi"
        label.textAlignment = .left
        return label
    }

    static var previews: some View {
        label
            .swiftUIView()
            .uiView()
            .swiftUIView()
            .frame(width: 120, height: 44)
            .previewLayout(.sizeThatFits)
    }
}
