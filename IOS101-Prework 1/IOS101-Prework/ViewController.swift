//
//  ViewController.swift
//  IOS101-Prework
//
//  Created by Andrea Alarcón Juscamayta on 11/24/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var changeBackgroundColor: UIButton! // Connected to the button in storyboard
    
    // Function to generate a random color
    func changeColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    
    // Standard lifecycle method for additional setup
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any needed setup after loading the view
    }
    
    // IBAction connected to the button in the storyboard
    @IBAction func onChangeBackgroundColorButtonPressed(_ sender: UIButton) {
        let randomColor = changeColor() // Generate a random color
        view.backgroundColor = randomColor // Set the background color of the view
    }
}

