//
//  ViewController.swift
//  Q10_Segue
//
//  Created by Prashant  Badrinath on 5/7/18.
//  Copyright © 2018 Prashant  Badrinath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let date = Date()
    let formatter = DateFormatter()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "dateIdentifier"{
            
            if let controller = segue.destination as? SecondViewController{
                
                
                formatter.dateFormat = "dd.MM.yyyy"
                let value = formatter.string(from: date)
                controller.dateString = value
                
            }
        }
    }
    

}

