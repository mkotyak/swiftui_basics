import SwiftUI

struct ImageLayout: View {
    let image = Image("twinlake")

    var body: some View {
        VStack {
            image
            image.resizable()
            image
                .resizable()
                .aspectRatio(2 / 3, contentMode: .fit)
                .frame(width: 200, height: 200)
        }
    }
}

struct ImageLayout_Previews: PreviewProvider {
    static var previews: some View {
        ImageLayout()
    }
}
