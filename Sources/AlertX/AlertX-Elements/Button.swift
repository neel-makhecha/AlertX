//
//  ButtonX.swift
//  AlertX
//
//  Copyright © 2020 Neel Makhecha. All rights reserved.
//  https://github.com/neel-makhecha/AlertX
//

import SwiftUI

typealias SystemButton = Button
extension AlertX {
    
    enum ButtonType {
        case `default`
        case cancel
    }
    public struct Button: View {
                
        let text: Text
        var buttonType: AlertX.ButtonType = .default
        
        var buttonAction: (() -> Void)?
        
        private init(text: Text, buttonType: AlertX.ButtonType, action: (() -> Void)? = {}) {
            self.text = text
            self.buttonType = buttonType
            self.buttonAction = action
        }
        
        public var body: some View {
            SystemButton(action: {
                
                if let reference = AlertX_View.currentAlertXVCReference {
                    // For alerts presented by View.alertX modifier, first dismiss AlertXViewController and then perform action
                    AlertX_View.currentAlertXVCReference?.dismiss(animated: true, completion: {
                        AlertX_View.currentAlertXVCReference = nil
                        
                        if let action = self.buttonAction {
                            action()
                        }
                    })
                    
                } else {
                    // For alerts presented by custom modifiers like View.fullScreenCover directly with AlertX view, just perform action
                    if let action = self.buttonAction {
                        action()
                    }
                }
                
            }, label: {
                text
                .frame(minWidth: 150, maxWidth: .infinity, alignment: .center)
                .padding(.init(top: 10, leading: 10, bottom: 10, trailing: 10))
                .shadow(radius: 1.0)
            })
            
        }
        
        // button types
        public static func `default`(_ label: Text, action: (() -> Void)? = {}) -> AlertX.Button {
            return AlertX.Button(text: label, buttonType: .default, action: action)
        }
        
        public static func cancel(_ label: Text, action: (() -> Void)? = {}) -> AlertX.Button {
            return AlertX.Button(text: label, buttonType: .cancel, action: action)
        }
        
        public static func cancel(_ action: (() -> Void)? = {}) -> AlertX.Button {
            return AlertX.Button(text: Text("Cancel"), buttonType: .cancel, action: action)
        }
        
    }
    
}
