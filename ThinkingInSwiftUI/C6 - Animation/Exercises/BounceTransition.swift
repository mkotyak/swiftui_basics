import Foundation
import SwiftUI

struct BounceTransition: ViewModifier {
    var active: Bool

    func body(content: Content) -> some View {
        content
            .bounce(times: active ? 5 : 0)
            .opacity(active ? 0 : 1)
    }
}

extension AnyTransition {
    static var bounce: AnyTransition {
        .modifier(active: BounceTransition(active: true), identity: BounceTransition(active: false))
    }
}
