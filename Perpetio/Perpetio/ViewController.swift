//
//  ViewController.swift
//  Perpetio
//
//  Created by POPLAVSKYI VOLODYMYR on 8/2/17.
//  Copyright © 2017 POPLAVSKYI VOLODYMYR. All rights reserved.
//

import UIKit
import Foundation
class ViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       let  textLink = "http://www.metoffice.gov.uk/pub/data/weather/uk/climate/stationdata/bradforddata.txt"
        let url = NSURL(string: textLink)!
        DispatchQueue.main.async {
             let returnedText =  try! String(contentsOf: url as URL, encoding: String.Encoding.utf8)
        self.textView.text = returnedText
           
        }
      
       
    }
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

