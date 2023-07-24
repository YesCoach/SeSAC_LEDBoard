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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        configureUI()
    }

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

    @IBAction func didBackgroundTouched(_ sender: UITapGestureRecognizer) {
        userInputTextField.isHidden.toggle()
    }
    @IBAction func didTextFieldExited(_ sender: UITextField) {
        print(#function)
    }

}

