//
//  SecondViewController.swift
//  Q10_Segue
//
//  Created by Prashant  Badrinath on 5/7/18.
//  Copyright © 2018 Prashant  Badrinath. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    var dateString: String?
    
    
    @IBOutlet weak var dateOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        if dateString != nil{
            
            dateOutlet.text = dateString
        }

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
