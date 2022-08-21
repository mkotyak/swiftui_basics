import SwiftUI

struct Exercise1: View {
    @State private var expanded: Bool = true
    let rectangleParameters: [(Color, CGFloat)] = [
        (Color.black, 100),
        (Color.blue, 70),
        (Color.gray, 125)
    ]

    var body: some View {
        VStack {
            HStack {
                Collapsible(
                    data: rectangleParameters,
                    expanded: expanded
                ) { (item: (Color, CGFloat)) in
                    Rectangle()
                        .fill(item.0)
                        .frame(width: item.1, height: item.1)
                }
            }
            .frame(width: 350, height: 150)
            .border(.black)

            Button {
                withAnimation {
                    self.expanded.toggle()
                }
            } label: {
                Text(self.expanded ? "Collapse" : "Expand")
            }
        }
    }
}

struct Exercise1_Previews: PreviewProvider {
    static var previews: some View {
        Exercise1()
    }
}
