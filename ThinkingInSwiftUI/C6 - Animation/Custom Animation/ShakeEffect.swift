import Foundation
import SwiftUI

struct ShakeEffect: GeometryEffect {
    var times: CGFloat = 0
    var amplitude: CGFloat = 10

    var animatableData: CGFloat {
        get { times }
        set { times = newValue }
    }

    func effectValue(size: CGSize) -> ProjectionTransform {
        ProjectionTransform(
            CGAffineTransform(
                translationX: sin(times * .pi * 2) * amplitude,
                y: 0
            )
        )
    }
}

extension View {
    func shakeEffect(times: Int) -> some View {
        modifier(ShakeEffect(times: CGFloat(times)))
    }
}

