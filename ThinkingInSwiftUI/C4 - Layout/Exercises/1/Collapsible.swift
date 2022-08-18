import Foundation
import SwiftUI

struct Collapsible<Element, Content: View>: View {
    var data: [Element]
    var expanded: Bool = false
    var collapsedWidth: CGFloat = 10
    var content: (Element) -> Content

    var body: some View {
        ForEach(data.indices) { index in
            content(data[index])
                .frame(
                    width: expanded ? nil : collapsedWidth,
                    alignment: .leading
                )
        }
    }
}
