import Foundation
import SwiftUI

struct Badge<Content: View>: View {
    var count: Int
    var content: Content

    init(count: Int, content: () -> Content) {
        self.count = count
        self.content = content()
    }

    var body: some View {
        content.overlay(alignment: .topTrailing) {
            ZStack {
                if count != 0 {
                    Circle()
                        .fill(Color.red)
                    Text("\(count)")
                        .foregroundColor(.white)
                        .font(.caption)
                }
            }
            .offset(x: 12, y: -12)
            .frame(width: 24, height: 24)
        }
    }
}
