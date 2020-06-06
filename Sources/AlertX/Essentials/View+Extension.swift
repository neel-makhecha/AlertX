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
        
        let alertX_view = AlertX_View(visible: isPresented, alertX: content())
        let alertXVC = AlertXViewController(alertX_view: alertX_view, isPresented: isPresented)
        alertXVC.modalPresentationStyle = .overCurrentContext
        alertXVC.view.backgroundColor = UIColor.clear
        alertXVC.modalTransitionStyle = .crossDissolve
                
        if isPresented.wrappedValue {
            if AlertX_View.currentAlertXVCReference == nil {
                AlertX_View.currentAlertXVCReference = alertXVC
            }
            
            let rootVC = UIApplication.shared.windows.first?.rootViewController
            rootVC?.present(alertXVC, animated: true, completion: nil)
        } else {
            alertXVC.dismiss(animated: true, completion: nil)
        }
        
        return self
    }
}
