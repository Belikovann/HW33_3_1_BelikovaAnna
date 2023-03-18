//
//  ViewController.swift
//  HW33_3_1_BelikovaAnna
//
//  Created by Аня Беликова on 17.03.2023.
//

import UIKit
import SpringAnimation

final class AnimationViewController: UIViewController {
    
    var animationType: Animation!
    
    @IBOutlet var springAnimationView: SpringView! 
    
    @IBOutlet var presentLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var switchAnimationButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseAnimation()

    }
    
    @IBAction func switchAnimationButtonTapped() {
        chooseAnimation()
    }
    
}
    
    extension AnimationViewController {
        
        private func chooseAnimation() {
            let preset = Animation.getCurrentAnimation().preset
            switchAnimationButton.setTitle("Switch \(preset)", for: .normal)
            
            presentLabel.text = "Preset: \(preset)"
            curveLabel.text = "Curve: \(Animation.getCurrentAnimation().curve)"
            forceLabel.text = "Force: \(Animation.getCurrentAnimation().force)"
            durationLabel.text = "Duration: \(Animation.getCurrentAnimation().duration)"
            delayLabel.text = "Delay: 0.3"
        }

    }
    


