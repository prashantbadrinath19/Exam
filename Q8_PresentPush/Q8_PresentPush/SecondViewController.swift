//
//  SecondViewController.swift
//  Q8_PresentPush
//
//  Created by Prashant  Badrinath on 5/7/18.
//  Copyright © 2018 Prashant  Badrinath. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    
    
    
    
    
    
    @IBAction func gobackAction(_ sender: UIButton) {
        
        if (storyboard?.instantiateViewController(withIdentifier: "ViewController") as? ViewController) != nil{
            
            navigationController?.popViewController(animated: true)
            
            
        }
        
        
        
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
