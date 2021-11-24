//
//  GreenViewController.swift
//  8
//
//  Created by Toshiyana on 2021/11/24.
//

import UIKit

class GreenViewController: UIViewController {
    @IBOutlet private weak var numLabel: UILabel!
    @IBOutlet private weak var numSlider: UISlider!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        guard let delegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }

        numLabel.text = String(delegate.sliderNum)
        numSlider.value = delegate.sliderNum
    }

    @IBAction private func numSliderValueChanged(_ sender: UISlider) {
        guard let delegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        delegate.sliderNum = sender.value
        numLabel.text = String(delegate.sliderNum)
    }
}
