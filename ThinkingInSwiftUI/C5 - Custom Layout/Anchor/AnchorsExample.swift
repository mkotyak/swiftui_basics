import SwiftUI

struct AnchorsExample: View {
    let tabs: [Text] = [
        Text("World Clock"),
        Text("Alarm"),
        Text("Bedtime")
    ]

    @State var selectedTabIndex = 0

    var body: some View {
        HStack {
            ForEach(tabs.indices) { tabIndex in
                Button(action: {
                    withAnimation(.default) {
                        self.selectedTabIndex = tabIndex
                    }
                }, label: {
                    self.tabs[tabIndex]

                })
                .anchorPreference(
                    key: BoundsKey.self,
                    value: .bounds,
                    transform: { anchor in
                        self.selectedTabIndex == tabIndex ? anchor : nil
                    }
                )
            }
        }
        .padding(10)
        .overlayPreferenceValue(BoundsKey.self) { anchor in
            GeometryReader { geometry in
                if let anchor = anchor {
                    Rectangle()
                        .fill(Color.accentColor)
                        .frame(width: geometry[anchor].width, height: 2)
                        .offset(x: geometry[anchor].minX)
                        .frame(
                            maxWidth: .infinity,
                            maxHeight: .infinity,
                            alignment: .bottomLeading
                        )
                }
            }
        }
    }
}

struct AnchorsExample_Previews: PreviewProvider {
    static var previews: some View {
        AnchorsExample()
    }
}
