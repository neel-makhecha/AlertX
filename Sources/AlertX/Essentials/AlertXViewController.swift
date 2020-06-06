//
//  AlertXViewController.swift
//  AlertX
//
//  Copyright © 2020 Neel Makhecha. All rights reserved.
//  https://github.com/neel-makhecha/AlertX
//

import UIKit
import SwiftUI

class AlertXViewController: UIHostingController<AlertX_View> {
    
    var alertX_view: AlertX_View
    var isPresented: Binding<Bool>
    
    init(alertX_view: AlertX_View, isPresented: Binding<Bool>) {
        self.alertX_view = alertX_view
        self.isPresented = isPresented
        super.init(rootView: self.alertX_view)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewWillDisappear(_ animated: Bool) {
        self.isPresented.wrappedValue =  false
    }
    
}
