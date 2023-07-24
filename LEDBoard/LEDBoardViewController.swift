//
//  ViewController.swift
//  LEDBoard
//
//  Created by 박태현 on 2023/07/19.
//

import UIKit

class LEDBoardViewController: UIViewController {

    @IBOutlet var topInputView: UIView!
    @IBOutlet var userInputTextField: UITextField!
    @IBOutlet var sendButton: UIButton!
    @IBOutlet var colorChangeButton: UIButton!
    @IBOutlet var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureUI()
        updateResultLabel(userInputTextField.text!)
    }

    @IBAction func didSendButtonTouched(_ sender: UIButton) {
        view.endEditing(true)
        updateResultLabel(userInputTextField.text!)
    }

    @IBAction func didColorButtonTouched(_ sender: UIButton) {
        view.endEditing(true)
        if let randomColor = UIColor.randomColor {
            colorChangeButton.setTitleColor(randomColor, for: .normal)
            resultLabel.textColor = randomColor
        }
    }

    @IBAction func didBackgroundTouched(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }

    @IBAction func didTextFieldExited(_ sender: UITextField) {
        print(#function)
        updateResultLabel(sender.text!)
    }
}

private extension LEDBoardViewController {
    func configureUI() {
        userInputTextField.enablesReturnKeyAutomatically = true
        topInputView.layer.cornerRadius = 5.0
        [
            sendButton, colorChangeButton
        ].forEach {
            guard let button = $0 else { return }
            button.layer.cornerRadius = 10.0
            button.layer.borderColor = UIColor.black.cgColor
            button.layer.borderWidth = 1.0
        }
    }

    func updateResultLabel(_ text: String) {
        let nonWhitespacesText = text.trimmingCharacters(in: .whitespaces)
        resultLabel.text = nonWhitespacesText.isEmpty ? "Empty" : nonWhitespacesText
    }
}
