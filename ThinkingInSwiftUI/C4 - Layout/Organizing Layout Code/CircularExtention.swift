import Foundation
import SwiftUI

extension View {
    func circle(
        foreground: Color = .white,
        background: Color = .blue
    ) -> some View {
        Circle()
            .fill(background)
            .overlay(Circle().strokeBorder(foreground).padding(3))
            .overlay(self.foregroundColor(foreground))
            .frame(width: 75, height: 75)
    }
}
