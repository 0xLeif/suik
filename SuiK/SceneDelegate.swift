import UIKit
import SwiftUI
import SwiftUIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        
        if let scene = scene as? UIWindowScene {
            window = UIWindow(windowScene: scene)
                .configure { window in
                    let rootVC = UIViewController()
                    
                    window.rootViewController = UINavigationController(rootViewController: rootVC)
                        .configure { Navigate.shared.configure(controller: $0) }
                    
                    rootVC.view.embed {
                        ContainerView(parent: rootVC) {
                            UIHostingController(rootView: ContentView())
                        }
                    }
                    .background(color: .systemBackground)
            }
            window?.makeKeyAndVisible()
        }
    }
}

