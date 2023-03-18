//
//  ViewController.swift
//  HW33_3_1_BelikovaAnna
//
//  Created by Аня Беликова on 17.03.2023.
//

import UIKit

final class AnimationViewController: UIViewController {

    var animationType: Animation!
    
    @IBOutlet var switchAnimationButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func switchAnimationButtonTapped(_ sender: UIButton) {
    }
}


extension AnimationViewController {
    private func showAnimationName() -> String {
        "\(animationType.name)"
    }
    
}

