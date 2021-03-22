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
		public static let defaultCornerRadius = AlertX.defaultCornerRadius
        
        // General Properties
        var windowColor: Color
        var alertTextColor: Color
        var enableShadow: Bool
        var enableRoundedCorners: Bool
		var roundedCornerRadius: CGFloat
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
		private init(windowColor: Color, alertTextColor: Color, enableShadow: Bool, enableRoundedCorners: Bool, enableTransparency: Bool, cancelButtonColor: Color, cancelButtonTextColor: Color, defaultButtonColor: Color, defaultButtonTextColor: Color, roundedCornerRadius: CGFloat = defaultCornerRadius) {
            
            self.windowColor = windowColor
            self.alertTextColor = alertTextColor
            self.enableShadow = enableShadow
            self.enableRoundedCorners = enableRoundedCorners
			self.roundedCornerRadius = roundedCornerRadius
            self.enableTransparency = enableTransparency
            
            self.cancelButtonColor = cancelButtonColor
            self.cancelButtonTextColor = cancelButtonTextColor
            self.defaultButtonColor = defaultButtonColor
            self.defaultButtonTextColor = defaultButtonTextColor
        }
        
        // Define custom theme
        public static func custom(windowColor: Color, alertTextColor: Color, enableShadow: Bool, enableRoundedCorners: Bool, enableTransparency: Bool, cancelButtonColor: Color, cancelButtonTextColor: Color, defaultButtonColor: Color, defaultButtonTextColor: Color, roundedCornerRadius: CGFloat = defaultCornerRadius) -> AlertX.Theme {
            
            let theme = AlertX.Theme(windowColor: windowColor,
                                     alertTextColor: alertTextColor,
                                     enableShadow: enableShadow,
                                     enableRoundedCorners: enableRoundedCorners,
                                     enableTransparency: enableTransparency,
                                     cancelButtonColor: cancelButtonColor,
                                     cancelButtonTextColor: cancelButtonTextColor,
                                     defaultButtonColor: defaultButtonColor,
                                     defaultButtonTextColor: defaultButtonTextColor,
									 roundedCornerRadius: roundedCornerRadius)
            
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
            let theme = AlertX.Theme(windowColor: Color(red: 253/255, green: 184/255, blue: 51/255),
                                     alertTextColor: Color(red: 118/255, green: 82/255, blue: 14/255),
                                     enableShadow: true,
                                     enableRoundedCorners: roundedCorners,
                                     enableTransparency: transparency,
                                     cancelButtonColor: Color(red: 255/255, green: 213/255, blue: 62/255),
                                     cancelButtonTextColor: Color(red: 118/255, green: 82/255, blue: 14/255),
                                     defaultButtonColor: Color(red: 255/255, green: 247/255, blue: 94/255),
                                     defaultButtonTextColor: Color(red: 118/255, green: 82/255, blue: 14/255))
            
            return theme
        }
        
        public static func cherry(withTransparency transparency: Bool = true, roundedCorners: Bool = false) -> AlertX.Theme {
            let theme = AlertX.Theme(windowColor: Color(red: 239/255, green: 35/255, blue: 60/255),
                                     alertTextColor: Color.white,
                                     enableShadow: true,
                                     enableRoundedCorners: roundedCorners,
                                     enableTransparency: transparency,
                                     cancelButtonColor: Color(red: 216/255, green: 0/255, blue: 50/255),
                                     cancelButtonTextColor: Color.white,
                                     defaultButtonColor: Color(red: 255/255, green: 150/255, blue: 141/255),
                                     defaultButtonTextColor: Color.white)
            
            return theme
        }
        
        public static func mint(withTransparency transparency: Bool = true, roundedCorners: Bool = false) -> AlertX.Theme {
            let theme = AlertX.Theme(windowColor: Color(red: 111/255, green: 255/255, blue: 233/255),
                                     alertTextColor: Color(red: 11/255, green: 19/255, blue: 43/255),
                                     enableShadow: true,
                                     enableRoundedCorners: roundedCorners,
                                     enableTransparency: transparency,
                                     cancelButtonColor: Color(red: 91/255, green: 192/255, blue: 190/255),
                                     cancelButtonTextColor: Color.white,
                                     defaultButtonColor: Color(red: 11/255, green: 19/255, blue: 43/255),
                                     defaultButtonTextColor: Color.white)
            
            return theme
        }

        public static func wine(withTransparency transparency: Bool = true, roundedCorners: Bool = false) -> AlertX.Theme {
            let theme = AlertX.Theme(windowColor: Color(red: 100/255, green: 18/255, blue: 32/255),
                                     alertTextColor: Color.white,
                                     enableShadow: true,
                                     enableRoundedCorners: roundedCorners,
                                     enableTransparency: transparency,
                                     cancelButtonColor: Color(red: 178/255, green: 30/255, blue: 53/255),
                                     cancelButtonTextColor: Color.white,
                                     defaultButtonColor: Color(red: 224/255, green: 30/255, blue: 55/255),
                                     defaultButtonTextColor: Color.white)

            return theme
        }
        
    }
    
}
