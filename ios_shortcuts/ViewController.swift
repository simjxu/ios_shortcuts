//
//  ViewController.swift
//  ios_shortcuts
//
//  Created by Simon Xu on 11/26/21.
//

import UIKit

class ViewController: UIViewController {
    // Setting the light on variable for controlling background color
    var lightOn = true
    
    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Label1.text = "Simon's App"
        updateUI()
    }
    
    fileprivate func updateUI() {
        if lightOn{
            view.backgroundColor = .white
            myButton.setTitleColor(.red, for: .normal)
            myButton.setTitle("Off", for: .normal)
        } else {
            view.backgroundColor = .black
            myButton.setTitleColor(.green, for: .normal)
            myButton.setTitle("On", for:. normal)
            
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
    
    
    
}

