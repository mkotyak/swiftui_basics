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
        if count != 0 {
            content.overlay(
                Circle()
                    .fill(.red)
                    .overlay(Text("\(count)"))
                    .frame(width: 30, height: 30)
                    .offset(x: 40, y: -23))
        } else {
            content
        }
    }
}
