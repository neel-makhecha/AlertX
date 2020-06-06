//
//  AlertX+Options.swift
//  AlertX
//
//  Copyright © 2020 Neel Makhecha. All rights reserved.
//  https://github.com/neel-makhecha/AlertX
//

import SwiftUI

extension AlertX {
    
    public struct Theme {
        
        //Default theme
        public static var defaultTheme: AlertX.Theme = graphite()
        
        // General Properties
        var windowColor: Color
        var alertTextColor: Color
        var enableShadow: Bool
        var enableRoundedCorners: Bool
        var enableTransparency: Bool
        
        // Button Properties
        var cancelButtonColor: Color
        var cancelButtonTextColor: Color
        var defaultButtonColor: Color
        var defaultButtonTextColor: Color
        
        // Public init
        public init() {
            self = AlertX.Theme.defaultTheme
        }
        
        // Private init
        private init(windowColor: Color, alertTextColor: Color, enableShadow: Bool, enableRoundedCorners: Bool, enableTransparency: Bool, cancelButtonColor: Color, cancelButtonTextColor: Color, defaultButtonColor: Color, defaultButtonTextColor: Color) {
            
            self.windowColor = windowColor
            self.alertTextColor = alertTextColor
            self.enableShadow = enableShadow
            self.enableRoundedCorners = enableRoundedCorners
            self.enableTransparency = enableTransparency
            
            self.cancelButtonColor = cancelButtonColor
            self.cancelButtonTextColor = cancelButtonTextColor
            self.defaultButtonColor = defaultButtonColor
            self.defaultButtonTextColor = defaultButtonTextColor
        }
        
        // Define custom theme
        public static func custom(windowColor: Color, alertTextColor: Color, enableShadow: Bool, enableRoundedCorners: Bool, enableTransparency: Bool, cancelButtonColor: Color, cancelButtonTextColor: Color, defaultButtonColor: Color, defaultButtonTextColor: Color) -> AlertX.Theme {
            
            let theme = AlertX.Theme(windowColor: windowColor,
                                     alertTextColor: alertTextColor,
                                     enableShadow: enableShadow,
                                     enableRoundedCorners: enableRoundedCorners,
                                     enableTransparency: enableTransparency,
                                     cancelButtonColor: cancelButtonColor,
                                     cancelButtonTextColor: cancelButtonTextColor,
                                     defaultButtonColor: defaultButtonColor,
                                     defaultButtonTextColor: defaultButtonTextColor)
            
            return theme
        }
        
        // Predefined themes
        
        public static func graphite(withTransparency transparency: Bool = true, roundedCorners: Bool = false) -> AlertX.Theme {
            let theme = AlertX.Theme(windowColor: Color(red: 94/255, green: 94/255, blue: 94/255),
                                     alertTextColor: Color.white,
                                     enableShadow: true,
                                     enableRoundedCorners: roundedCorners,
                                     enableTransparency: transparency,
                                     cancelButtonColor: Color(red: 213/255, green: 213/255, blue: 213/255),
                                     cancelButtonTextColor: Color.black,
                                     defaultButtonColor: Color(red: 0/255, green: 0/255, blue: 0/255),
                                     defaultButtonTextColor: Color.white)
            
            return theme
        }
        
        public static func light(withTransparency transparency: Bool = true, roundedCorners: Bool = false) -> AlertX.Theme {
            let theme = AlertX.Theme(windowColor: Color(red: 255/255, green: 255/255, blue: 255/255),
                                     alertTextColor: Color.black,
                                     enableShadow: true,
                                     enableRoundedCorners: roundedCorners,
                                     enableTransparency: transparency,
                                     cancelButtonColor: Color(red: 213/255, green: 213/255, blue: 213/255),
                                     cancelButtonTextColor: Color.black,
                                     defaultButtonColor: Color(red: 146/255, green: 146/255, blue: 146/255),
                                     defaultButtonTextColor: Color.white)
            
            return theme
        }
        
        public static func dark(withTransparency transparency: Bool = true, roundedCorners: Bool = false) -> AlertX.Theme {
            let theme = AlertX.Theme(windowColor: Color(red: 0/255, green: 0/255, blue: 0/255),
                                     alertTextColor: Color.white,
                                     enableShadow: true,
                                     enableRoundedCorners: roundedCorners,
                                     enableTransparency: transparency,
                                     cancelButtonColor: Color(red: 213/255, green: 213/255, blue: 213/255),
                                     cancelButtonTextColor: Color.black,
                                     defaultButtonColor: Color(red: 94/255, green: 94/255, blue: 94/255),
                                     defaultButtonTextColor: Color.white)
            
            return theme
        }
        
        public static func sun(withTransparency transparency: Bool = true, roundedCorners: Bool = false) -> AlertX.Theme {
            let theme = AlertX.Theme(windowColor: Color(red: 255/255, green: 217/255, blue: 50/255),
                                     alertTextColor: Color.black,
                                     enableShadow: true,
                                     enableRoundedCorners: roundedCorners,
                                     enableTransparency: transparency,
                                     cancelButtonColor: Color(red: 255/255, green: 240/255, blue: 86/255),
                                     cancelButtonTextColor: Color.black,
                                     defaultButtonColor: Color(red: 254/255, green: 174/255, blue: 0/255),
                                     defaultButtonTextColor: Color.black)
            
            return theme
        }
        
        public static func cherry(withTransparency transparency: Bool = true, roundedCorners: Bool = false) -> AlertX.Theme {
            let theme = AlertX.Theme(windowColor: Color(red: 255/255, green: 100/255, blue: 78/255),
                                     alertTextColor: Color.white,
                                     enableShadow: true,
                                     enableRoundedCorners: roundedCorners,
                                     enableTransparency: transparency,
                                     cancelButtonColor: Color(red: 255/255, green: 150/255, blue: 141/255),
                                     cancelButtonTextColor: Color.white,
                                     defaultButtonColor: Color(red: 238/255, green: 34/255, blue: 12/255),
                                     defaultButtonTextColor: Color.white)
            
            return theme
        }
        
        public static func mint(withTransparency transparency: Bool = true, roundedCorners: Bool = false) -> AlertX.Theme {
            let theme = AlertX.Theme(windowColor: Color(red: 22/255, green: 231/255, blue: 207/255),
                                     alertTextColor: Color.black,
                                     enableShadow: true,
                                     enableRoundedCorners: roundedCorners,
                                     enableTransparency: transparency,
                                     cancelButtonColor: Color(red: 115/255, green: 253/255, blue: 234/255),
                                     cancelButtonTextColor: Color.black,
                                     defaultButtonColor: Color(red: 0/255, green: 171/255, blue: 142/255),
                                     defaultButtonTextColor: Color.white)
            
            return theme
        }

        public static func wine(withTransparency transparency: Bool = true, roundedCorners: Bool = false) -> AlertX.Theme {
            let theme = AlertX.Theme(windowColor: Color(red: 114/255, green: 47/255, blue: 55/255),
                                     alertTextColor: Color.white,
                                     enableShadow: true,
                                     enableRoundedCorners: roundedCorners,
                                     enableTransparency: transparency,
                                     cancelButtonColor: Color(red: 255/255, green: 100/255, blue: 78/255),
                                     cancelButtonTextColor: Color.white,
                                     defaultButtonColor: Color(red: 181/255, green: 23/255, blue: 0/255),
                                     defaultButtonTextColor: Color.white)

            return theme
        }
        
    }
    
}
