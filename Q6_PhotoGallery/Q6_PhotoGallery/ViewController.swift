//
//  ViewController.swift
//  Q6_PhotoGallery
//
//  Created by Prashant  Badrinath on 5/7/18.
//  Copyright © 2018 Prashant  Badrinath. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var imgView = UIImagePickerController()
    
    
    
    @IBOutlet weak var viewOutlet: UIImageView!
    
    
    
    
    
    @IBAction func insertAction(_ sender: UIBarButtonItem) {
    
    imgView.allowsEditing = true
        imgView.sourceType = .photoLibrary
        
        present(imgView, animated: true, completion: nil)

    }
    
    
    
    
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        
        if let storeImg = info[UIImagePickerControllerOriginalImage] as? UIImage{
            
            viewOutlet.image = storeImg
            
        }
        
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        imgView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

