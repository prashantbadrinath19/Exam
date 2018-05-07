//
//  ViewController.swift
//  Q8_PresentPush
//
//  Created by Prashant  Badrinath on 5/7/18.
//  Copyright © 2018 Prashant  Badrinath. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate {

    
    
    
    
    
    
    
    @IBAction func presentAction(_ sender: UIBarButtonItem) {
        
        if let controller = storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController{
            
            navigationController?.present(controller, animated: true, completion: nil)
            
            
        }
    }
    
    
    
    
    @IBAction func pushAction(_ sender: UIBarButtonItem) {
        
        
        if let controller1 = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController{
            
            navigationController?.pushViewController(controller1, animated: true)
            
            
        }
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

