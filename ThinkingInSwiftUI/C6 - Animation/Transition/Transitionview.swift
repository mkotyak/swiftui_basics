import SwiftUI

struct Transitionview: View {
    @State private var visible: Bool = false

    var body: some View {
        VStack {
            Button {
                visible.toggle()
            } label: {
                Text("Toggle")
            }

            Spacer()

            if visible {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 100, height: 100)
                    .transition(.slide)
                    .animation(.default)
            }
        }
    }
}

struct Transitionview_Previews: PreviewProvider {
    static var previews: some View {
        Transitionview()
    }
}
