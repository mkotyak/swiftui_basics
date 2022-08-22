import SwiftUI
import Foundation

struct CustomLayoutView: View {
    let colors: [(Color, CGFloat)] = [(.red, 50), (.green, 30), (.blue, 75)]
    @State var horizontal: Bool = true
    var body: some View {
        VStack {
            Button(action: {
                withAnimation(.default) {
                    self.horizontal.toggle()
                }
            }) { Text("Toggle axis") }
            Stack(data: colors,
                  axis: horizontal ? .horizontal : .vertical) { item in
                Rectangle()
                    .fill(item.0)
                    .frame(width: item.1, height: item.1)
            }
            .border(Color.black)
        }
    }
}

struct CustomLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        CustomLayoutView()
    }
}
