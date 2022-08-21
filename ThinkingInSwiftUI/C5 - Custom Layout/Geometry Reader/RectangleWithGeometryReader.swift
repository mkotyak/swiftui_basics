import SwiftUI

struct RectangleIithGeometryReader: View {
    var body: some View {
        VStack {
            GeometryReader { geometry in
                Rectangle()
                    .fill(.red)
                    .frame(width: geometry.size.width / 3, height: geometry.size.height / 3)
                    .offset(x: geometry.size.width / 3, y: geometry.size.height / 3)
            }
        }
        .frame(width: 400, height: 400)
    }
}

struct RectangleIithGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        RectangleIithGeometryReader()
    }
}
