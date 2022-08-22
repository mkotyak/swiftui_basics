import Foundation
import SwiftUI

struct Stack<Element, Content: View>: View {
    var data: [Element]
    var spacing: CGFloat = 8
    var axis: Axis = .horizontal
    var alignment: Alignment = .topLeading
    var content: (Element) -> Content
    @State private var offsets: [CGPoint] = []

    var body: some View {
        ZStack(alignment: alignment) {
            ForEach(data.indices, content: { index in
                self.content(self.data[index])
                    .modifier(CollectSize(index: index))
                    .alignmentGuide(self.alignment.horizontal, computeValue: {
                        self.axis == .horizontal ? -self.offset(index: index).x : $0[self.alignment.horizontal]
                    })
                    .alignmentGuide(self.alignment.vertical, computeValue: {
                        self.axis == .vertical ? -self.offset(index: index).y : $0[self.alignment.vertical]
                    })
            })
        }
        .onPreferenceChange(CollectSizePreference.self, perform: self.computeOffsets)
    }
}

extension Stack {
    private func offset(index: Int) -> CGPoint {
        guard index < self.offsets.endIndex else {
            return .zero
        }
        
        return self.offsets[index]
    }
}

extension Stack {
    private func computeOffsets(sizes: [Int: CGSize]) {
        guard !sizes.isEmpty else {
            return
        }

        var offsets: [CGPoint] = [.zero]

        for i in 0 ..< self.data.count {
            guard let size = sizes[i] else {
                fatalError()
            }

            var newPoint = offsets.last!
            newPoint.x += size.width + self.spacing
            newPoint.y += size.height + self.spacing
            offsets.append(newPoint)
        }
        self.offsets = offsets
    }
}
