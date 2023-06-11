//
//  Modifiers.swift
//  TabBar(KeyFrameAnimation)
//
//  Created by Developer Scorpio on 11/06/2023.
//

import SwiftUI

struct TabItemEffect : ViewModifier {
    let trigger : Bool
    let style: Style
    
    func body(content: Content) -> some View{
        content
            .keyframeAnimator(
                initialValue: KeyFrame(),
                trigger: trigger) { view, frame in
                    view
                        .scaleEffect(
                            style == .all || style == .scaleStyle ? frame.scale : 1)
                        .rotationEffect(
                            style == .all || style == .shakeStyle ? frame.rotation: .zero,
                            anchor: .bottom )
                        .offset(y: style == .all || style == .bounceStyle ? frame.offsetY : 3)
                    
                } keyframes: { frame in
                    
                    KeyframeTrack(\.offsetY) {
                        CubicKeyframe(0,duration: 0.3)
                        SpringKeyframe(-100, duration: 0.3,spring: .bouncy)
                        CubicKeyframe(-100,duration: 0.45)
                        SpringKeyframe(0, duration: 0.5,spring: .bouncy)
                    }
                    
                    KeyframeTrack(\.scale) {
                        CubicKeyframe(0.9,duration: 0.15)
                        CubicKeyframe(1.2,duration: 0.3)
                        CubicKeyframe(1.2,duration: 0.3)
                        CubicKeyframe(1,duration: 0.3)
                    }
                    
                    KeyframeTrack(\.rotation) {
                        CubicKeyframe(.zero ,duration: 0.15)
                        CubicKeyframe(.zero ,duration: 0.3)
                        CubicKeyframe(.degrees(-20) ,duration: 0.1)
                        CubicKeyframe(.degrees(20) ,duration: 0.1)
                        CubicKeyframe(.degrees(-20) ,duration: 0.1)
                        CubicKeyframe(.degrees(0) ,duration: 0.15)
                    }
                }
    }
    
    struct KeyFrame{
        var scale: CGFloat = 1
        var offsetY: CGFloat = 3
        var rotation: Angle = .zero
    }
}


