import Foundation
import SwiftUI

struct BlurModifier: ViewModifier {
    var active: Bool
    
    func body(content: Content) -> some View {
        content
            .blur(radius: active ? 50 : 0)
            .opacity(active ? 0 : 1)
    }
}

extension AnyTransition {
    static var blur: AnyTransition {
        .modifier(active: BlurModifier(active: true), identity: BlurModifier(active: false))
    }
}
