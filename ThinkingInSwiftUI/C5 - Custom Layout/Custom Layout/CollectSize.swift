import SwiftUI
import Foundation

struct CollectSize: ViewModifier {
    var index: Int
    
    func body(content: Content) -> some View {
        content.background(GeometryReader { proxy in
            Color.clear.preference(key: CollectSizePreference.self, value: [self.index:proxy.size])
        })
    }
}
