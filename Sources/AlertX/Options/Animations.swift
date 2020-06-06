//
//  Animations.swift
//  AlertX
//
//  Created by Neel on 06/06/20.
//  Copyright © 2020 Neel. All rights reserved.
//

import SwiftUI

extension AlertX {
    
    public struct AnimationX {
        
        let transition: AnyTransition
        
        public init() {
            self = AlertX.AnimationX.defaultEffect()
        }
        
        private init(transition: AnyTransition) {
            self.transition = transition
        }
        
        public static func custom(withTransition transition: AnyTransition) -> AlertX.AnimationX {
            return AlertX.AnimationX(transition: transition)
        }
        
        public static func defaultEffect() -> AlertX.AnimationX {
            let spring = Animation.spring(response: 0.25, dampingFraction: 0.6, blendDuration: 0.25)
            let transition = AnyTransition.scale(scale: 1.2).combined(with: .opacity).animation(spring)
            return AlertX.AnimationX(transition: transition)
        }
        
        public static func classicEffect() -> AlertX.AnimationX {
            let spring = Animation.spring(response: 0.25, dampingFraction: 0.6, blendDuration: 0.25)
            let transition = AnyTransition.scale.combined(with: .opacity).animation(spring)
            return AlertX.AnimationX(transition: transition)
        }
        
        public static func zoomEffect() -> AlertX.AnimationX {
            let transition = AnyTransition.scale.combined(with: .opacity)
            return AlertX.AnimationX(transition: transition)
        }
        
        public static func fadeEffect() -> AlertX.AnimationX {
            let transition = AnyTransition.opacity
            return AlertX.AnimationX(transition: transition)
        }
        
    }
    
}
