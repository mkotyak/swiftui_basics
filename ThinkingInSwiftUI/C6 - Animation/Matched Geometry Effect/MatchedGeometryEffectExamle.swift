import SwiftUI

struct MatchedGeometryEffectExamle: View {
    @State private var state: Bool = false
    @Namespace private var namespace

    var body: some View {
        VStack {
            HStack {
                if !state {
                    Rectangle()
                        .fill(.blue)
                        .matchedGeometryEffect(id: "1", in: namespace)
                        .frame(width: 200, height: 200)
                }
                Spacer()
                if state {
                    Circle()
                        .fill(.blue)
                        .matchedGeometryEffect(id: "1", in: namespace)
                        .frame(width: 100, height: 100)
                }
            }
            .border(.black)
            .frame(width: 300, height: 200)

            Toggle("Toggle", isOn: $state)
                .padding()
        }
        .animation(.default, value: state)
    }
}

struct MatchedGeometryEffectExamle_Previews: PreviewProvider {
    static var previews: some View {
        MatchedGeometryEffectExamle()
    }
}
