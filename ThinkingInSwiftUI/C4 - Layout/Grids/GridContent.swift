import Foundation
import SwiftUI

struct GridContent: Identifiable {
    let id = UUID()
    
    var content: some View {
        Rectangle()
            .fill(.blue)
    }
}
