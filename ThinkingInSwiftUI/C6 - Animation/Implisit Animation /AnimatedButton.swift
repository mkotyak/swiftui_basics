import SwiftUI

struct AnimatedButton: View {
    @State private var isSelected: Bool = false

    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(isSelected ? .red : .green)
                .frame(width: isSelected ? 100 : 50, height: 50)
                .rotationEffect(Angle(degrees: isSelected ? 360 : 0))
                .animation(.linear(duration: 2), value: isSelected)

            Button {
                isSelected.toggle()
            } label: {
                Text("Click")
                    .padding()
                    .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke()
                        .fill(.blue)
                    )
            }
            .padding(.all, 40)

            RoundedRectangle(cornerRadius: 10)
                .fill(isSelected ? .green : .red)
                .frame(width: 200, height: 200)
                .animation(.default.repeatCount(3), value: isSelected)
        }
    }
}

struct ButtonWithImplisitAnimation_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedButton()
    }
}
