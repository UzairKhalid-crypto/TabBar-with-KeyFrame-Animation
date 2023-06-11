//
//  CustomTabView.swift
//  TabBar(KeyFrameAnimation)
//
//  Created by Developer Scorpio on 11/06/2023.
//

import SwiftUI

struct CustomTabView :View {
    @State var index : Int = 0
    var body: some View {
        VStack{
            if index == 0 {
                CustomView(text: "Home")
            }else if index == 1 {
                CustomView(text: "Run")
            }else if index == 2 {
                CustomView(text: "Sign Post")
            }else if index == 3 {
                CustomView(text: "Setting")
            }
            
            HStack{
                CustomTabItem(
                    icon: "house.fill",
                    label: "Home",
                    style: .all, action: {
                        index = 0
                    })
                
                
                CustomTabItem(
                    icon: "figure.run.square.stack.fill",
                    label: "Run",
                    style: .bounceStyle, action: {
                        index = 1
                    })
                
                
                CustomTabItem(
                    icon: "signpost.right.circle.fill",
                    label: "Sign Post",
                    style: .scaleStyle, action: {
                        index = 2
                    })
               
                
                CustomTabItem(
                    icon: "gear",
                    label: "Setting",
                    style: .shakeStyle, action: {
                        index = 3
                    })
                
                
            }.background(.ultraThinMaterial)
        }
    }
}

#Preview {
    CustomTabView()
}
