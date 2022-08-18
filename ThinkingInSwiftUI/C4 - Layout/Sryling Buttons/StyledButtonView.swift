//
//  StyledButtonView.swift
//  ThinkingInSwiftUI
//
//  Created by Maria Kotyak on 18.08.2022.
//

import SwiftUI

struct StyledButtonView: View {
    var body: some View {
        VStack {
            Button("Button", action: {})
                .buttonStyle(CircleStyle())

            Divider()

            HStack {
                Button("One", action: {})
                Button("Two", action: {})
                Button("Three", action: {})
            }
            .buttonStyle(CircleStyle())
        }
    }
}

struct StyledButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StyledButtonView()
    }
}
