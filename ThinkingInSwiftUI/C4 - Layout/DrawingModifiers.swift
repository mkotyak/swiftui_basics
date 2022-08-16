import SwiftUI

struct DrawingModifiers: View {
    var body: some View {
        VStack {
            // Offset
            HStack {
                Circle()
                    .fill(.red)
                Circle()
                    .fill(.blue)
                    .offset(y: -30)
                Circle()
                    .fill(.green)
               
            }
            .frame(width: 200, height: 60)
            .border(.black)
            // END: Offset
            
            Divider()
            
            SampleWithMatchedGeometryEffect()
            
            Divider()
            
            // Clipping and Masking
            Rectangle()
                .rotation(.degrees(45))
                .fill(.red)
                .clipped()
                .frame(width: 100, height: 100)
            
            Divider()
            
            Rectangle()
                .rotation(.degrees(45))
                .fill(.red)
                .clipShape(Circle())
                .frame(width: 100, height: 100)
            
            Divider()
            
            Rectangle()
                .fill(.red)
                .mask({
                    Rectangle()
                        .rotation(.degrees(45))
                        .opacity(0.3)
                })
                .frame(width: 100, height: 100)
            
            // END: Clipping and Masking
        }
    }
}

struct SampleWithMatchedGeometryEffect: View {
    @Namespace var namespace

    var body: some View {
        HStack {
            Rectangle()
                .fill(.black)
                .frame(width: 100, height: 100)
                .matchedGeometryEffect(id: "ID", in: namespace, isSource: true)

            Circle()
                .fill(.gray)
                .matchedGeometryEffect(id: "ID", in: namespace, isSource: false)
                .border(.green)
        }
        .frame(width: 300, height: 100)
        .border(.black)
    }
}

struct DrawingModifiers_Previews: PreviewProvider {
    static var previews: some View {
        DrawingModifiers()
    }
}
