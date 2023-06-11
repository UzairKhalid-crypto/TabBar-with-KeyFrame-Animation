//
//  CustomTabItem.swift
//  TabBar(KeyFrameAnimation)
//
//  Created by Developer Scorpio on 11/06/2023.
//

import SwiftUI

struct CustomTabItem : View {
    let icon : String
    @State var label : String = ""
    @State var style : Style = .all
    @State var animate : Bool = false
    var action: () -> Void
    var body: some View {
        VStack{
            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .frame(width: 24 , height: 24)
                .foregroundColor(.blue)
                .frame(maxWidth: .infinity)
               
            Text(label)
                .foregroundColor(.blue)
                .bold()
                .font(.caption)
        }.padding(.vertical)
         .modifier(
            TabItemEffect(
                trigger: animate,
                style: style))
         .onTapGesture {
            action()
            animate.toggle()
         }
    }
   
}

#Preview {
    CustomTabItem(icon: "house.fill", action: {print("TabItem")})
}
