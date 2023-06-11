//
//  CustomView.swift
//  TabBar(KeyFrameAnimation)
//
//  Created by Developer Scorpio on 11/06/2023.
//

import SwiftUI

struct CustomView: View {
    let text : String
    var body: some View {
        NavigationStack {
            VStack{
                Spacer()
                Text(text)
                Spacer()
            }.navigationTitle(text)
        }
    }
}

#Preview {
    CustomView(text: "Home")
}
