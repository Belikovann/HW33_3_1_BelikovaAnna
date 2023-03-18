//
//  Animation.swift
//  HW33_3_1_BelikovaAnna
//
//  Created by Аня Беликова on 17.03.2023.
//

import Foundation

struct Animation {
    var name: AnimationName
    var preset: String
    var curve: String
    var force: Int
    var duration: Int
    var delay: Int
    
    init(animationName: AnimationName,
         preset: String,
         curve: String,
         force: Int,
         duration: Int,
         delay: Int
    ) {
        self.name = animationName
        self.preset = preset
        self.curve = curve
        self.force = force
        self.duration = duration
        self.delay = delay
    }
    
}


enum AnimationName: String {
    case pop = "Pop"
    case slideLeft = "SlideLeft"
    case slideRight = "SlideRight"
    case slideDown = "SlideDown"
    case slideUp = "SlideUp"
    case squeezeLeft = "SqueezeLeft"
    case squeezeRight = "SqueezeRight"
    case fadeIn = "FadeIn"
    case fadeOut = "FadeOut"
    case fadeOutIn = "FadeOutIn"
    case fadeInDown = "FadeInDown"
    case fadeInUp = "FadeInUp"
    case zoomIn = "ZoomIn"
    case zoomOut = "ZoomOut"
    case fall = "Fall"
    case shake = "Shake"
    case morph = "Morph"
    case flash = "Flash"
    case wobble = "Wobble"
    case swing = "Swing"
}
