# AlertX

## Custom alerts in SwiftUI made easy

AlertX is a library for SwiftUI projects to have custom alerts that can be implemented in a very easy and simple way, just like implementing built-in system alerts.

## A Quick Example


        import SwiftUI
        import AlertX
        ...
        ...
               
                    
                    Button(action: {
                        
                        self.showAlertX.toggle()
                        
                    }, label: {
                        
                        Text("Show AlertX")
                        
                    }).alertX(isPresented: $showAlertX, content: {
                        
                        AlertX(title: Text("AlertX Title"),
                               message: Text("An optional message indicating some action goes here..."),
                               primaryButton: .cancel(),
                               secondaryButton: .default(Text("Done"), action: {
                                // Some action
                               }),
                               theme: .graphite(withTransparency: true, roundedCorners: true),
                               animation: .classicEffect())
                    })
                    
        
![Example AlertX Screenshot](https://neelmakhecha.tech/assets/files/alertX_documentation_image1.gif)

# Documentation

## Working and Installation

AlertX is a Swift Package and can be installed just like installing any other Swift Package libraries.

1. In your Xcode project, navigate to File > Swift Packages > Add Package Dependency.
2. In the package repository URL, enter this: https://github.com/neel-makhecha/AlertX.git

One awesome thing about AlertX is that the implementation of it is much similar to the implementation of system's built in alerts. Once AlertX is installed and imported, a new instance method `alertX(isPresented: Binding<Bool>, content: () -> AlertX)` can be used with any SwiftUI View, similar to the built-in method.


## Themes

The appearance of AlertX is customizable with themes. There are a bunch of pre-defined themes already included, but you can also have your very own theme.

All the themes of AlertX are of type `AlertX.Theme`. There are static methods for each pre-defined theme. Here's an example of how you can apply a theme:

        Button(action: {
            self.showAlertX.toggle()
        }, label: {
            Text("Show AlertX")
        }).alertX(isPresented: $showAlertX, content: {
            AlertX(title: Text("The Title"), theme: .wine())
        })

<img src="https://neelmakhecha.tech/assets/files/alertX_documentation_image2.png" width=350>


For the static methods of all pre-defined themes, you can also pass boolean to enable or disable transparency and rounded corners for alert and buttons. By default, for all themes, transparency is true and rounded corners is set to false.

    AlertX.Theme.wine(withTransparency: false, roundedCorners: true)

<img src="https://neelmakhecha.tech/assets/files/alertX_documentation_image3.png" width=350>

(The above example uses wine theme with transparency false and roundedCorners true)

Here's a list of all pre-defined themes: 

    graphite (default)
    light
    dark
    sun
    cherry
    mint
    wine


To create a custom theme, use the following method which offers a variety of options:

    
    AlertX.Theme.custom(windowColor: Color,
                       alertTextColor: Color,
                       enableShadow: Bool,
                       enableRoundedCorners: Bool,
                       enableTransparency: Bool,
                       cancelButtonColor: Color,
                       cancelButtonTextColor: Color,
                       defaultButtonColor: Color,
                       defaultButtonTextColor: Color)


## Animations

Animations for AlertX can be applied using `AlertX.AnimationX`. There are various cool pre-defined animations already included. Similar to themes, they can be applied using static method for each animation present inside `AlertX.AnimationX`.

![AlertX with default animation](https://neelmakhecha.tech/assets/files/alertX_documentation_image4.gif)
 
Here's how you can apply an animation:

`AlertX(title: Text("Some Title"), animation: .fadeEffect())`

Here's a list of all pre-defined animations:

    defaultEffect
    classicEffect
    zoomEffect
    fadeEffect

You can also create your own animations just like you would for any other SwiftUI View using the following method:

    AlertX.AnimationX.custom(withTransition: AnyTransition)


## Future Work

1. Support for more than two buttons.
2. Support for text fields.
3. Even more and better pre-defined themes and animations.

## Contributing

You are most welcome in contributing to this project with either new features (maybe one mentioned from the future work or anything else), refactoring and improving the code or adding new pre-defined themes and animations. Also, feel free to give suggestions and feedbacks. 


Created with ❤️ by Neel Makhecha.

Get in touch on [Twitter](https://twitter.com/neelmakhecha). Visit: [neelmakhecha.tech](https://neelmakhecha.tech)
