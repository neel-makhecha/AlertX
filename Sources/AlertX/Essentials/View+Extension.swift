//
//  ViewExtension.swift
//  AlertX
//
//  Copyright © 2020 Neel Makhecha. All rights reserved.
//  https://github.com/neel-makhecha/AlertX
//

import SwiftUI

extension View {
    
    public func alertX(isPresented: Binding<Bool>, content: () -> AlertX) -> some View {
        
        if isPresented.wrappedValue && AlertX_View.currentAlertXVCReference == nil {
            
            let alertX_view = AlertX_View(visible: isPresented, alertX: content())
            let alertXVC = AlertXViewController(alertX_view: alertX_view, isPresented: isPresented)
            alertXVC.modalPresentationStyle = .overCurrentContext
            alertXVC.view.backgroundColor = UIColor.clear
            alertXVC.modalTransitionStyle = .crossDissolve
            
            AlertX_View.currentAlertXVCReference = alertXVC
            
            let rootVC = UIApplication.shared.windows.first?.rootViewController
            rootVC?.present(AlertX_View.currentAlertXVCReference!, animated: true, completion: nil)
            
        } else {
            AlertX_View.currentAlertXVCReference?.dismiss(animated: true, completion: nil)
        }
        
        return self
    }
}

