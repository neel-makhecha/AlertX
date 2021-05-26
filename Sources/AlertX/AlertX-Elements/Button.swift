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
                
                func prepareForDismiss(completion: @escaping () -> Void) {
                    
                    if let reference = AlertX_View.currentAlertXVCReference {
                        AlertX_View.currentAlertXVCReference = nil
                        reference.dismiss(animated: true, completion: completion)
                        
                    } else {
                        completion()
                    }
                    
                }
                
                prepareForDismiss {
                    buttonAction?()
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
