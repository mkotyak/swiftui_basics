import SwiftUI

struct CircleWrapper<Content: View>: View {
    var foreground, background: Color
    var content: Content
    init(
        foreground: Color = .white,
        background: Color = .blue,
        @ViewBuilder content: () -> Content
    ) {
        self.foreground = foreground
        self.background = background
        self.content = content()
    }
    
    
    var body: some View {
        Circle()
            .fill(background)
            .overlay(Circle().strokeBorder(foreground).padding(3))
            .overlay(content.foregroundColor(foreground))
            .frame(width: 75, height: 75)
    }
}
