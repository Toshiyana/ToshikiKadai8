//
//  ViewController.swift
//  8
//
//  Created by Toshiyana on 2021/11/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var numLabel: UILabel!
    @IBOutlet private weak var numSlider: UISlider!

    private var appDelegate: AppDelegate? {
        UIApplication.shared.delegate as? AppDelegate
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        guard let delegate = appDelegate else {
            return
        }

        numLabel.text = String(delegate.sharedValue)
        numSlider.value = delegate.sharedValue
    }

    @IBAction private func numSliderValueChanged(_ sender: UISlider) {
        guard let delegate = appDelegate else {
            return
        }
        delegate.sharedValue = sender.value
        numLabel.text = String(delegate.sharedValue)
    }
}
