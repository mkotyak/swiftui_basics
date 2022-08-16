import SwiftUI

struct FlexibleVGridExample: View {
    var items: [GridContent]

    var body: some View {
        LazyVGrid(columns: [
            GridItem(.flexible(minimum: 100)),
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

struct FlexibleVGridExampleVGridExample_Previews: PreviewProvider {
    static var previews: some View {
        FlexibleVGridExample(items: [
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
