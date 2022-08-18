import SwiftUI

struct CircleModifier: ViewModifier {
    var foreground = Color.white
    var background = Color.blue

    func body(content: Content) -> some View {
        Circle()
            .fill(background)
            .overlay(Circle().strokeBorder(.background).padding(3))
            .overlay(content.foregroundColor(foreground))
            .frame(width: 75, height: 75)
    }
}
