import Foundation
import SwiftUI

struct BounceAnimatableModifier: AnimatableModifier {
    var times: CGFloat = 0
    var amplitude: CGFloat = 20

    var animatableData: CGFloat {
        get { times }
        set { times = newValue }
    }

    func body(content: Content) -> some View {
        content.offset(y: -abs(sin(times * .pi)) * amplitude)
    }
}

extension View {
    func bounce(times: Int) -> some View {
        modifier(BounceAnimatableModifier(times: CGFloat(times)))
    }
}
