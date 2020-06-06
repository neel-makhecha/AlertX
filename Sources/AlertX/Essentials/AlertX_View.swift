//
//  AlertX_View.swift
//  AlertX
//
//  Created by Neel on 06/06/20.
//  Copyright © 2020 Neel. All rights reserved.
//

import SwiftUI

struct AlertX_View: View {
    
    static var currentAlertXVCReference: AlertXViewController?
    
    @Binding var visible: Bool
    @State var show: Bool = false
    
    let alertX: AlertX
    
    public var body: some View {
        
        ZStack {
            
            Rectangle()
                .foregroundColor(Color.black.opacity(0.25))
                .edgesIgnoringSafeArea(.all)
            
            if show {
                alertX
                    .transition(self.alertX.animation.transition)
            }
            
        }.onAppear{
            Timer.scheduledTimer(withTimeInterval: 0.3, repeats: false) { timer in
                withAnimation {
                    if self.visible {
                        self.show = true
                    }
                }
            }
        }
        
    }
    
}
