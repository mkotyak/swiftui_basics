import Foundation
import SwiftUI

struct ShakeAnimatableModifier: AnimatableModifier {
    var times: CGFloat = 0
    let amplitude: CGFloat = 10

    var animatableData: CGFloat {
        get { times }
        set { times = newValue }
    }

    func body(content: Content) -> some View {
        content.offset(x: sin(times * .pi * 2) * amplitude)
    }
}

extension View {
    func shakeModifier(times: Int) -> some View {
        modifier(ShakeAnimatableModifier(times: CGFloat(times)))
    }
}
