import SwiftUI

struct Exercise2: View {
    @State var count: Int

    var body: some View {
        VStack {
            Badge(count: count) {
                Text("Button")
                    .padding(10)
                    .background(.gray)
            }
            
            Button {
                count += 1
            } label: {
                Text("Increase count")
            }

        }
    }
}

struct Exercise2_Previews: PreviewProvider {
    static var previews: some View {
        Exercise2(count: 0)
    }
}
