//
//  ViewController.swift
//  ios_shortcuts
//
//  Created by Simon Xu on 11/26/21.
//

import UIKit
import SwiftSoup

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
        print("test1")
        
        webscrape()
//        webscrape2()
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
    
    func webscrape() {
        do {
           let html = "<html><head><title>First parse</title></head>"
               + "<body><p>Parsed HTML into a doc.</p></body></html>"
           let doc: Document = try SwiftSoup.parse(html)
           try print(doc.text())
        } catch Exception.Error(let type, let message) {
            print(message)
        } catch {
            print("error")
        }
    }

    // Doesn't work: probably some issue with login required to access incline
//    func webscrape2() {
//        do {
//            let url = URL(string:)!
//            let html = try String(contentsOf: url)
//            print(html.prefix(200))
//        } catch {
//            print(error)
//        }
//
//
//    }
    
    
}

