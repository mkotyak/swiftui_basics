import SwiftUI

struct KnobShape: Shape {
    var pointerSize: CGFloat = 0.1 
    var pointerWidth: CGFloat = 0.1
    func path(in rect: CGRect) -> Path {
        let pointerHeight = rect.height * pointerSize
        let pointerWidth = rect.width * self.pointerWidth
        let circleRect = rect.insetBy(dx: pointerHeight, dy: pointerHeight)
        return Path { p in
            p.addEllipse(in: circleRect)
            p.addRect(CGRect(
                x: rect.midX - pointerWidth / 2,
                y: 0, width: pointerWidth,
                height: pointerHeight + 2)
            )
        }
    }
}
