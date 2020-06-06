//
//  AlertX.swift
//  AlertX
//
//  Copyright © 2020 Neel Makhecha. All rights reserved.
//  https://github.com/neel-makhecha/AlertX

import SwiftUI

public struct AlertX: View {
    
    // Constant Parameters
    static let defaultCornerRadius: CGFloat = 25.0
    static let defaultShadowRadius: CGFloat = 1.0
    static let defaultAlertOpacity: Double = 0.9
    
    
    // Variable parameters
    var alertX_cornerRadius: CGFloat
    var alertX_shadowRadius: CGFloat
    var alertX_shadowColor: Color = Color.black
    
    // AlertX Fields
    var alertX_title: Text
    var alertX_message: Text?
    
    var primaryButton: AlertX.Button?
    var secondaryButton: AlertX.Button?
        
    // Theme and Animation
    var theme: AlertX.Theme = AlertX.Theme()
    var animation: AlertX.AnimationX = AlertX.AnimationX()
    
    public init(title: Text, message: Text? = nil, primaryButton: AlertX.Button? = .default(Text("OK")), secondaryButton: AlertX.Button? = nil, theme: AlertX.Theme = AlertX.Theme(), animation: AlertX.AnimationX = .defaultEffect()) {
        self.alertX_title = title
        self.alertX_message = message
        self.primaryButton = primaryButton
        self.secondaryButton = secondaryButton
        
        self.theme = theme
        self.alertX_cornerRadius = theme.enableRoundedCorners ? AlertX.defaultCornerRadius : 0.0
        self.alertX_shadowRadius = theme.enableShadow ? AlertX.defaultShadowRadius : 0.0
        
        self.animation = animation
    }
    
    public var body: some View {
        
        ZStack {
            
            VStack {
                
                alertX_title
                    .padding(.init(top: 35, leading: 25, bottom: 15, trailing: 25))
                    .foregroundColor(theme.alertTextColor)
                    .font(.headline)
                
                alertX_message
                    .padding(.init(top: 0, leading: 25, bottom: 35, trailing: 25))
                    .foregroundColor(theme.alertTextColor)
                
                HStack {
                    
                    Spacer()
                    
                    if primaryButton?.buttonType == AlertX.ButtonType.default {
                        primaryButton
                            .background(theme.defaultButtonColor)
                            .foregroundColor(theme.defaultButtonTextColor)
                            .cornerRadius(theme.enableRoundedCorners ? AlertX.defaultCornerRadius : 0.0)
                    } else {
                        primaryButton
                            .background(theme.cancelButtonColor)
                            .foregroundColor(theme.cancelButtonTextColor)
                            .cornerRadius(theme.enableRoundedCorners ? AlertX.defaultCornerRadius : 0.0)
                    }
                    
                    Spacer()
                    
                    if secondaryButton?.buttonType == AlertX.ButtonType.default {
                        secondaryButton
                            .background(theme.defaultButtonColor)
                            .foregroundColor(theme.defaultButtonTextColor)
                            .cornerRadius(theme.enableRoundedCorners ? AlertX.defaultCornerRadius : 0.0)
                    } else {
                        secondaryButton
                            .background(theme.cancelButtonColor)
                            .foregroundColor(theme.cancelButtonTextColor)
                            .cornerRadius(theme.enableRoundedCorners ? AlertX.defaultCornerRadius : 0.0)
                    }
                    
                    if secondaryButton != nil {
                        Spacer()
                    }
                    
                }.padding()
                
                
            }.background(AlertX.Window(color: theme.windowColor, cornerRadiusEnabled: theme.enableRoundedCorners, transparencyEnabled: theme.enableTransparency))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                .padding()
                .shadow(radius: alertX_shadowRadius)
                .cornerRadius(alertX_cornerRadius)
            
        }
        
    }
}


