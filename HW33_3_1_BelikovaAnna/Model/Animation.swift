//
//  Animation.swift
//  HW33_3_1_BelikovaAnna
//
//  Created by Аня Беликова on 17.03.2023.
//

import Foundation

struct Animation {
    var preset: Preset
    var curve: CurveType
    var force: Double
    var duration: Double
    var delay = 0.3
    
    init(preset: Preset,
         curve: CurveType,
         force: Double,
         duration: Double
    ) {
        self.preset = preset
        self.curve = curve
        self.force = force
        self.duration = duration
    }

    
    static func getAnimation() -> [Animation] {
        [
            Animation(preset: .pop, curve: .easeIn, force: 1.2, duration: 1.7),
            Animation(preset: .slideUp, curve: .easeIn, force: 1.2, duration: 0.5),
            Animation(preset: .fadeInUp, curve: .linear, force: 2.7, duration: 3.0),
            Animation(preset: .zoomIn, curve: .linear, force: 0.9, duration: 1.5),
            Animation(preset: .fall, curve: .spring, force: 1.0, duration: 0.5),
            Animation(preset: .shake, curve: .spring, force: 4.7, duration: 0.5),
            Animation(preset: .flash, curve: .spring, force: 1.0, duration: 1.2),
            Animation(preset: .wooble, curve: .spring, force: 2.5, duration: 2.9),
            Animation(preset: .swing, curve: .spring, force: 3.0, duration: 1.0),
        ]
    }
    static func getCurrentAnimation() -> Animation {
        let allAnimation = getAnimation()
        var currentAnimation = Animation(preset: .pop, curve: .spring, force: 1.0, duration: 1.5)
        
        for _ in allAnimation {
            currentAnimation = allAnimation.randomElement()!
        }
        return currentAnimation
    }
}


enum Preset: String, CaseIterable {
    case pop = "pop"
    case slideUp = "slideUp"
    case fadeInUp = "fadeInUp"
    case zoomIn = "zoomIn"
    case fall = "fall"
    case shake = "shake"
    case flash = "flash"
    case wooble = "wobble"
    case swing = "swing"
}

enum CurveType: String, CaseIterable {
    case easeIn = "EaseIn"
    case easeOut = "EaseOut"
    case linear = "Linear"
    case spring = "Spring"
}
