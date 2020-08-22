import UIKit
import SwiftUIKit

class SUIKContentView: UIView {

    init() {
        super.init(frame: .zero)
        
        embed {
            Label
                .title1("Hello, World!")
                .text(alignment: .center)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
