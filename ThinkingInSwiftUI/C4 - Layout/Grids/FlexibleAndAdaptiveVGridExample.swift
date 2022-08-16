import SwiftUI

struct FlexibleAndAdaptiveVGridExample: View {
    var items: [GridContent]

    var body: some View {
        LazyVGrid(columns: [
            GridItem(.flexible(minimum: 100)),
            GridItem(.adaptive(minimum: 40)),
            GridItem(.flexible(minimum: 180))
        ]) {
            ForEach(items) { item in
                item.content
                    .frame(height: 50)
            }
        }
        .frame(width: 300)
        .border(.black)
    }
}

struct FlexibleAndAdaptiveVGridExample_Previews: PreviewProvider {
    static var previews: some View {
        FlexibleAndAdaptiveVGridExample(items: [
            GridContent(),
            GridContent(),
            GridContent(),
            GridContent(),
            GridContent(),
            GridContent(),
            GridContent(),
            GridContent()
        ])
    }
}

