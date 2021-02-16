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
            
            let viewController = self.topViewController()
            print("Number of windows: \(UIApplication.shared.windows.count)")
            viewController?.present(alertXVC, animated: true, completion: nil)
        } else {
            alertXVC.dismiss(animated: true, completion: nil)
        }
        
        return self
    }
    
    private func topViewController(baseVC: UIViewController? = UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.rootViewController) -> UIViewController? {
        
        if let nav = baseVC as? UINavigationController {
            return topViewController(baseVC: nav.visibleViewController)
        }
        if let tab = baseVC as? UITabBarController {
            if let selected = tab.selectedViewController {
                return topViewController(baseVC: selected)
            }
        }
        if let presented = baseVC?.presentedViewController {
            return topViewController(baseVC: presented)
        }
        return baseVC
    }
}
