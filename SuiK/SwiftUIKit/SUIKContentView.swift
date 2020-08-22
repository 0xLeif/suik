import UIKit
import SwiftUIKit
import SwiftUI

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

struct SUIKContentView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView {
            SUIKContentView()
        }
    }
}
