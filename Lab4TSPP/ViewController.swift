
//
//  ViewController.swift
//  Lab4TSPP
//
//  Created by Maksim Avksentev on 28.11.17.
//  Copyright © 2017 AvksentevMaks. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var onStackView: UIStackView!
    @IBOutlet weak var resultStackView: UIStackView!
    
    @IBOutlet weak var averageLabel: UILabel!
    @IBOutlet weak var roundedLabel: UILabel!
    
    @IBOutlet weak var firstNumber: UITextField!
    @IBOutlet weak var secondNumber: UITextField!
    @IBOutlet weak var thirdNumber: UITextField!
    
    @IBOutlet weak var newButton: UIButton!
    
    private let model = Math()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.firstNumber.delegate = self
        self.secondNumber.delegate = self
        self.thirdNumber.delegate = self
        let result = model.main(firstNumber: 3, secondNumber: 2, thirdNumber: 6)
        print(result.0, result.1)
    }
    
    func check() -> (Float, Int64)? {
        
        guard let first = self.firstNumber.text, let second = self.secondNumber.text, let third = self.thirdNumber.text, let firstNumber = Int64(first), let secondNumber = Int64(second), let thirdNumber = Int64(third) else {
            
            self.presentAlert()
            return nil
        }
        
        return self.model.main(firstNumber: firstNumber, secondNumber: secondNumber, thirdNumber: thirdNumber)
    }
    
    func presentAlert() {
        
        let controller = UIAlertController(title: "Error", message: "Validation of numbers", preferredStyle: .alert)
        self.present(controller, animated: true, completion: nil)
    }
    
    //MARK: - UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if self.firstNumber.isFirstResponder {
            self.secondNumber.becomeFirstResponder()
        } else if self.secondNumber.isFirstResponder {
            self.thirdNumber.becomeFirstResponder()
        } else {
            self.thirdNumber.resignFirstResponder()
        }
        
        return true
    }
    
    //MARK: - Actions
    @IBAction func runAction() {
        
        guard let result = self.check() else {
            
            self.presentAlert()
            return
        }
        
        self.averageLabel.text = String(result.0)
        self.roundedLabel.text = String(result.1)
        
        self.onStackView.isHidden = true
        self.resultStackView.isHidden = false
    }
    
    @IBAction func newAction() {
        
        self.onStackView.isHidden = false
        self.resultStackView.isHidden = true
    }
}

