import SwiftUI

struct MeasureBehavior<Content: View>: View {
    @State private var width: CGFloat = 100
    @State private var height: CGFloat = 100
    var content: Content

    var body: some View {
        VStack {
            content
                .border(Color.purple)
                .padding()
                .frame(width: width, height: height)
                .border(Color.red)

            Slider(value: $width, in: 0...500)
            Slider(value: $height, in: 0...200)
            Path { p in
                p.move(to: CGPoint(x: 200, y: 100))
                p.addLine(to: CGPoint(x: 100, y: 300))
                p.addLine(to: CGPoint(x: 300, y: 300))
                p.addLine(to: CGPoint(x: 200, y: 100))
            }
            .stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))

            Rectangle()
                .rotation(.degrees(45))
                .fill(.red)
                .border(.black)
                .frame(width: 100, height: 100)

            Triangle()
                .rotation(.degrees(45))
                .fill(.red)
                .border(.black)
                .frame(width: 100, height: 100)
        }
    }
}

struct MeasureBehavior_Previews: PreviewProvider {
    static var previews: some View {
        MeasureBehavior(content: RoundedRectangle(cornerRadius: 15))
    }
}
