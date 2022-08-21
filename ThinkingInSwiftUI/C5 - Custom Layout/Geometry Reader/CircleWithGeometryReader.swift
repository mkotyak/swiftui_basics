import SwiftUI

struct CircleWithGeometryReader: View {
    var body: some View {
        Text("Start")
            .foregroundColor(.white)
            .padding()
            .background(
                GeometryReader { geometry in
                    Circle()
                        .fill(.blue)
                        .frame(
                            width: geometry.size.width,
                            height: geometry.size.height
                        )
                })
    }
}

struct CircleWithGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        CircleWithGeometryReader()
    }
}
