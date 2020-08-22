import SwiftUI

public struct SwiftUIView: UIViewRepresentable {
    public var wrappedView: UIView
    
    private var handleUpdateUIView: ((UIView, Context) -> Void)?
    private var handleMakeUIView: ((Context) -> UIView)?
    
    public init(closure: () -> UIView) {
        wrappedView = closure()
    }
    
    public func makeUIView(context: Context) -> UIView {
        guard let handler = handleMakeUIView else {
            return wrappedView
        }
        
        return handler(context)
    }

    public func updateUIView(_ uiView: UIView, context: Context) {
        handleUpdateUIView?(uiView, context)
    }
}

public extension SwiftUIView {
    mutating func setMakeUIView(handler: @escaping (Context) -> UIView) -> Self {
        handleMakeUIView = handler
        
        return self
    }
    
    mutating func setUpdateUIView(handler: @escaping (UIView, Context) -> Void) -> Self {
        handleUpdateUIView = handler
        
        return self
    }
}
